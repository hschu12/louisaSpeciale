#
# MAXIMUM EDGE-M-ROUTE FLOW ALGORITHM
# (KISHIMOTO) 
#

import networkx as nx
import sys


def main(path):
	
	print('path : ',path)
	
	#
	# GET THE NETWORK
	#

	# Read network from file
	G = nx.read_gexf(path)

	# Find n and m
	n = G.number_of_nodes()
	m = G.number_of_edges()

	# Finding edge connectivity
	edge_connectivity = nx.edge_connectivity(G,'s','t')
	
	k_list = [2,3,5,10,50]

	print('edge connectivity : ',edge_connectivity)
	print('k-list : ',k_list)
	
	max_flows = list()
	iterations = list()
	
	# Run for different k's
	for k in k_list:
		if k < edge_connectivity:
			print('k : ',k)
			#
			# INITIAL MAX FLOW
			#

			G = nx.read_gexf(path)

			max_flow, flow_dict = nx.maximum_flow(G, 's', 't')

			#
			# PROCEDURE
			#

			# Setting m
			# Algorithm terminates in at most m iterations 
			h = k + 1 
			
			# Setting initial e
			e = max_flow/h
			iteration = 1
			
			# Initial constraint of capacities
			for (u,v) in G.edges():
				if G[u][v]['capacity'] > e:
					G[u][v]['capacity'] = e
			# Find new max flow		
			max_flow, flow_dict = nx.maximum_flow(G,'s','t')

			# while loop
			while max_flow < h*e:

				if h == iteration:
					max_flow = str(max_flow)+'-BREAK'
					break
				e = (max_flow - iteration * e) / (h - iteration)
				iteration = iteration + 1
				for (u,v) in G.edges():
					if G[u][v]['capacity'] > e:
						G[u][v]['capacity'] = e
	
				max_flow, flow_dict = nx.maximum_flow(G,'s','t')

			print('RESULTING MAX M-ROUTE FLOW : ',max_flow)
			print('Number of iterations : ',iteration)

			iterations.append(iteration)
			max_flows.append(max_flow)

		else:
			iterations.append('F')
			max_flows.append('F')

	print('max-flows : ',max_flows)
	print('iterations : ',iterations)
	print('\n')
	
	return max_flows, iterations, k_list		

#main(sys.argv[1])

