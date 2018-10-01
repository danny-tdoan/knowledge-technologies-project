\l local_distance.q
\l n_gram_dist.q
\l prepare_data.q
\l socket.q

find_approx_match_local_distance:{[query;targets;threshold]
	localDist:flip (`idx`distance)!((til count targets);(local_distance[query;] each targets));

	/cut off using the threshold
	cutOffDist:(count query)*threshold;
	localDist:select from localDist where distance>=cutOffDist;

	/render the returned result
	res:update tweet:targets[idx] from localDist;
	:`distance xdesc res;
 }

find_approx_match_n_gram:{[query;targets;threshold]
	nGramDist:flip (`idx`distance)!((til count targets);(search_with_n_gram[query;] each targets));

	/cut off using the threshold
	cutOffDist:(count query)*threshold;
	nGramDist:select from nGramDist where distance<cutOffDist;

	/render the returned result
	res:update tweet:targets[idx] from nGramDist;
	:`distance xasc res;
 }
