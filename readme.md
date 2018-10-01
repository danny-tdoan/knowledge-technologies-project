# Overview
An implementation of a simple search engine of Twitter Data to evaluate between Local Edit Distance and N-Gram Distance. Project 1 of Knowledge Technologies

Requirements: kdb+/q that handles most of the processing and querying.

kdb+/q free version can be downloaded [here](https://kx.com/connect-with-us/download/)

Blogs/Tutorials on kdb+/q available [here](https://kx.com/blog/q-for-all-introduction-to-kdb-and-q-video-series-by-jeffry-borror/)

This project uses kdb+/q to implement and evaluate the search performance of two basic technique: **Local Edit Distance** and **N-Gram Distance**

The data has been processed by kdb+/q to facilitate the search

# Usage

1. Install kdb+/q
2. Start the pre-processed queries and tweets data. It is a simple `q` command, please refer to `start_data/bin/START_QUERIES.sh` for example. The processes by default will be brought up on port 2702 and 2712
3. Load the two search functions (in `approx_match.q`) on port 2700: `q approx_match.q -p 2700`. On windows, this can be launched with `START_APPROX_MATCH.bat`
4. The web search interface can be launched using `local_distance.html` and `ngram.html` under `approx_matching\src\html\`. It will takes care of connecting to the 2700 socket and execute the search.