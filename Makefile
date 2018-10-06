restore:
	wget https://snapshots.ark.io/current
	pg_restore -U ark -O -j 8 -d ark_mainnet current 2>/dev/null

connect:
	psql -U ark ark_mainnet
