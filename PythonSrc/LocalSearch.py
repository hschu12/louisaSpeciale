#
# LOCAL SEARCH ALGORITHM 
# WHICH WITHIN A TIME LIMIT FINDS THE BEST INTERDICTION VALUE
#

# To run this program from terminal
# Go to where this program lies and write:
# python3 LocalSearch.py 10 100 2 rmat 10000 cut sim
# or other input values 

import csv
import networkx as nx
import matplotlib.pyplot as plt
import random
import time
import MyFunctions as mf 
import sys
import numpy as np
import math
import copy

def main(path,time_limit,constr_heuristic,flip_fct,step_fct):

	print('\n')
	print('path : ',path)
	print('time_limit : ',time_limit)
	print('constr_heuristic : ',constr_heuristic)
	print('flip_fct : ',flip_fct)
	print('step_fct : ',step_fct)
	print('\n')

	# path				: path to an graph file of a network
	# time_limit 		: the time limit for the local search
	# constr_heuristic 	: which kind of construction heuristic - rand, cut, card
	# flip_fct			: which flip function - rand, cap, tabu
	# step_fct 			: which step function  - first, prob, sim




	# Set start time for program
	program_start_time = time.time()


	ms = list()
	init_max_flows = list()
	best_max_flows = list()
	first_int_max_flows = list()
	best_search_max_flows = list()
	step_list = list()
	flips_list = list()
	non_imp_flips_list = list()
	k_tabu_counter_list = list()
	G_tabu_counter_list = list()
	Max_Flows_list = list()



	#
	# GET THE NETWORK
	#

	# Read network from file
	H = nx.read_gexf(path)

	# Find n and m
	n = H.number_of_nodes()
	m = H.number_of_edges()
	
	#
	# INITIAL MAX-FLOW AND EDGE CONNECTIVITY 
	#

	# Find Max flow
	init_max_flow, flow_dict = nx.maximum_flow(H, 's', 't')

	# Finding edge connectivity
	edge_connectivity = nx.edge_connectivity(H,'s','t')
	edge_connectivity_list = [edge_connectivity, edge_connectivity, edge_connectivity, edge_connectivity]
	
	# Set time
	init_max_flow_time = time.time() 
	
	#
	# RUNNING THE ALGORITHM FOR EACH VALUE OF 
	# 1 <= K < lambda (edge connectivity)
	#
	
	k_list =[2,3,5,10,50]

	print('edge connectivity : ',edge_connectivity)


	for k in k_list:
		print('k : ',k)
		if k < edge_connectivity:

			G = copy.deepcopy(H)

			# Set tabu tenures 
			if int(k/4) < 50:
				k_tabu = int(k/4)
			else:
				k_tabu = 50
			if int(m/4)	< 50:
				G_tabu = int(m/4)
			else:
				G_tabu = 50

			#
			# INITIAL REMOVAL OF K EDGES
			#

			#
			# CONSTRUCTION HEURISTICS
			# (Choose between rand, cut or card)
			#

			# RANDOM CONSTRUCTION (rand) 
			# Removing k random edges
			if constr_heuristic == 'rand':
				G, k_set = mf.RemoveRandom(G,k)

			# MIN CUT CONSTRUCTION (cut)
			# Removing edges from min cut first	
			if constr_heuristic == 'cut':
				G, k_set, cut_set = mf.RemoveCut(G,k)

			# CARD CUT CONSTRUCTION (card)
			# Removing edges from cut with lowest cardinality first
			if constr_heuristic == 'card':
				G, k_set = mf.RemoveCardCut(G,k)

			# Find residual network
			R = nx.flow.edmonds_karp(G, 's', 't')

			# Find New Max flow value
			first_int_max_flow = R.graph['flow_value']
			max_flow = first_int_max_flow

			# Start list of max flows
			Max_Flows = list()
			Max_Flows.append(init_max_flow)
			Max_Flows.append(max_flow)
			
			# Initialize best max flow value and best k-set
			best_max_flow = max_flow
			best_k_set = k_set
			
			# Set residual capacities for all edges
			for (u,v) in R.edges():
				R[u][v]['res_cap'] = R[u][v]['capacity'] - R[u][v]['flow']
				# Removing excess edges from R added by networkx.edmonds_karp's construction of R
				if R[u][v]['capacity'] == 0 and R[u][v]['flow'] == 0:
					R.remove_edge(u,v)

			# Set time
			init_k_edges_time = time.time() 
			

			#
			# NEIGHBORHOOD FLIPS
			#

			# Set start time
			start_time = time.time()
			time_passed = 0
			# Set delta calculation time
			delta_calculation_time = 0
			
			# Set step counter
			step = 0
			# Set flip counter
			flips = 0
			# Set nonimproving flip counter
			non_imp_flips = 0
			# Set tabu counters
			k_tabu_counter = 0
			G_tabu_counter = 0

			# Initialize best search_max_flow, its k-set and time for it
			best_search_max_flow = float('inf')
			best_search_k_set = list()
			time_for_best = 0
			
			# Continue testing flips as long as the time limit is not exceeded 
			# or a max flow of zero is not found
			while time_passed < time_limit and best_max_flow != 0:
				
				#
				# FLIP FUNCTION
				# (Choose between rand, cap or tabu)

				# RANDOM FLIP FUNCTION (rand)
				# Choose a random flip
				if flip_fct == 'rand':
					#print('ran flip')
					u,v= random.choice(G.edges())
					new_k_edge = (u,v,G[u][v]['capacity'],G[u][v]['tabu'])
					new_graph_edge = random.sample(k_set,1)[0]

				# CAPACITY FLIP FUNCTION (cap)
				# Choose the edge with lowest capacity from k-set 
				# and one of the x edges with highest capacity in G (set x)
				if flip_fct == 'cap':
					# Create a list of all the edges sorted by capacity
					edge_list = list()
					for u,v in G.edges():
						edge_list.append((u,v,G[u][v]['capacity'],G[u][v]['tabu']))
					edge_list.sort(key = lambda edge_list: edge_list[2])
					
					# Sort the k-set by capacities
					k_set.sort(key = lambda k_set: k_set[2])
					
					# Choose edge with lowest capacity in k-set
					new_graph_edge = k_set[0]

					# Choose at random one of the x edges in G with highest capacity
					x = int((m-k)/5)
					new_k_edge = random.choice(edge_list[(m-k-x):])

				# TABU SEARCH - FLIP FUNCTION (tabu)
				# Recently tried edges in flips are tabu
				# (Set k_tabu and G_tabu) 
				
				if flip_fct == 'tabu':
					
					G_flip = False
					k_flip = False

					# As long as no flip suggestion from G is found
					while G_flip == False:	
						# Choose a random edge in G
						u,v = random.choice(G.edges())
						# Test if edge can be used
						if G[u][v]['tabu'] == 0:
							new_k_edge_tabu = G[u][v]['tabu']
							new_k_edge = (u,v,G[u][v]['capacity'],new_k_edge_tabu)
							G_flip = True
							# Update tabu attributes for the edges in G (and in R)
							# (Updating tabu attribute for new_k_edge happens after deltacost-calculation)
							for x,y in G.edges():
								if G[x][y]['tabu'] > 0:
									G[x][y]['tabu'] = G[x][y]['tabu'] - 1
									R[x][y]['tabu'] = G[x][y]['tabu'] - 1
							R[u][v]['tabu'] = new_k_edge_tabu		
						else:
							G_tabu_counter = G_tabu_counter + 1
							
					# As long as no flip suggestion from the k-set is found
					while k_flip == False:		
						# Choose a random edge in k
						u,v,c,t = random.sample(k_set,1)[0]
						# Test if edge can be used
						if t == 0:
							new_graph_edge = (u,v,c,t)
							k_flip = True	
							# Update tabu attributes for the edges in k_set
							# (Updating tabu attribute for new_graph_edge happens after deltacost-calculation)
							for u,v,c,t in k_set:
								if t > 0:
									k_set.remove((u,v,c,t))
									k_set.append((u,v,c,(t-1)))			
						else:
							k_tabu_counter = k_tabu_counter + 1

				#
				# DELTA COST CALCULATION
				#
				new_R,new_max_flow,delta_cost,delta_time = mf.DeltaCost(R,new_k_edge,new_graph_edge,max_flow)
				
				# Updating step counter
				step = step+1
				
				# Calculate time spend on delta calculations
				delta_calculation_time = delta_calculation_time + delta_time

				#	
				# STEP FUNCTION
				# (Choose between first, prob, sim)

				# FIRST IMPROVEMENT (first)
				# (Choose step if it is improving)
				if step_fct == 'first':
					non_imp_flip = False
					flip = False
					if delta_cost < 0:
						flip = True
						
				# PROBABILISTIC IMPROVEMENT (prob)
				# (Choose non-improving step with probability p)
				if step_fct == 'prob':
					p = 0.1
					non_imp_flip = False
					flip,non_imp_flip = mf.ProbImpr(p,delta_cost)


				# SIMULATED ANNEALING (sim)
				# (Choose non-improving step with probability e^(-delta_cost/T)
				# where T cools to T*a with every step)
				if step_fct == 'sim':
					T = 12
					a = 0.95
					non_imp_flip = False
					flip,non_imp_flip = mf.SimAn(T,step,a,delta_cost)

				#
				# FLIP THE EDGES
				# But save the lowest max flow value, if the flip is non-improving 
				
				if flip == True:
					# Update flip counter
					flips = flips + 1
					# Update non-improving flip counter
					if non_imp_flip == True:
						non_imp_flips = non_imp_flips + 1

					# Update R, max flow value and the list of all max flows
					R = new_R
					max_flow = new_max_flow
					Max_Flows.append(max_flow)

					# Update G and k-set (and tabu attributes)
					x,y,cap,tab = new_graph_edge
					u,v,c,t = new_k_edge
					G.add_edge(x,y, capacity = cap, tabu = G_tabu)
					R[x][y]['tabu'] = G_tabu
					k_set.append((u,v,c,k_tabu))
					G.remove_edge(u,v)
					k_set.remove((x,y,cap,tab))

					# Update best max flow value and best k-set
					if max_flow < best_max_flow: 
						best_max_flow = max_flow
						best_k_set = k_set
					# Update best search max flow value, its k-set and time for it
					if max_flow < best_search_max_flow:
						best_search_max_flow = max_flow
						best_search_k_set = k_set
						time_for_best = time.time() - start_time
				
				# If we do not flip
				else:
					# Update tabu attributes of new_k_edge and new_graph_edge in both G and R
					u,v,c,t = new_k_edge 
					G[u][v]['tabu'] = G_tabu
					R[u][v]['tabu'] = G_tabu
					x,y,cap,tab = new_graph_edge
					k_set.remove(new_graph_edge)
					k_set.append((x,y,cap,k_tabu))



				# Find time passed
				time_passed = time.time() - start_time	
			

			#
			# SAVE RESULT
			#

			ms.append(m)
			init_max_flows.append(init_max_flow)
			best_max_flows.append(best_max_flow)
			first_int_max_flows.append(first_int_max_flow)
			best_search_max_flows.append(best_search_max_flow)
			step_list.append(step)
			flips_list.append(flips)
			non_imp_flips_list.append(non_imp_flips)
			k_tabu_counter_list.append(k_tabu_counter)
			G_tabu_counter_list.append(G_tabu_counter)
			Max_Flows_list.append(Max_Flows)

			#
			# PRINT RESULT
			#

			print('n = ',n)
			print('m = ',m)
			

			print('LIST OF MAX FLOWS : ',Max_Flows)
			print('\n')
			
		# If the algorithm has not run on that k-value	
		else:
			ms.append('F')
			init_max_flows.append('F')
			best_max_flows.append('F')
			first_int_max_flows.append('F')
			best_search_max_flows.append('F')
			step_list.append('F')
			flips_list.append('F')
			non_imp_flips_list.append('F')
			k_tabu_counter_list.append('F')
			G_tabu_counter_list.append('F')
			Max_Flows_list.append('F')


	return ms,k_list,edge_connectivity_list,init_max_flows,best_max_flows,first_int_max_flows,best_search_max_flows,step_list,flips_list,non_imp_flips_list,k_tabu_counter_list,G_tabu_counter_list,Max_Flows_list


#main(sys.argv[1],float(sys.argv[2]),sys.argv[3],sys.argv[4],sys.argv[5])
