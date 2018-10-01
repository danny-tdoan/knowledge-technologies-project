. /home/empty/projects/profile
. $PKGS/start_data/config/ports.env

q $DATA/queries/ -p $QUERIES_PORT 2>&1 >$LOG/START_QUERIES_`date +%Y.%m.%d_%H%M%S`.log &
