gen_gram:{[str]
	:-1_{[str;pointer;n]n # pointer _ str}[str;;2] each til count str;
 }


/n-gram distance between two words
n_gram_distance:{[q;t]
	G_q:gen_gram[q];
	G_t:gen_gram[t];
	nGramDist:(count G_q)+(count G_t)-2*count (`$G_q) inter (`$G_t);
	.Q.gc[];
	:nGramDist;
 }

/use n-gram distance to find query in text (one sentence)
search_with_n_gram:{[query;text]
	/break the text into words
	words:" " vs text;
	queryTokens:" " vs query;
	
	/break the query, find the n-gram distance between each query token and each word
	nGramDist:{[query;words] n_gram_distance[query;] each words}[;words] each queryTokens;

	/depending on how many words the query contains, pick the minimum distance for each query token-text
	nGramDist:min each nGramDist;

	/the total distance is the sum of distance of each queryToken
	/desc
	:sum nGramDist;
 }
