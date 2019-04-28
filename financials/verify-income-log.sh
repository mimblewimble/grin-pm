#!/usr/bin/env bash

set -e

if ! hash curl ; then
	echo "Install curl to continue."
	exit 1
fi

if ! hash jq ; then
	echo "Install jq to continue."
	exit 1
fi

btc_addrs=(
	3ChVP627KU5w4zu2rieFPF3wGXWQgmhvrs
	3JAqRiaWgFvARgpDL31eZ696Dt59nFUYjw
)

zec_addrs=(
	t1QGYYXan3HHEuiPEfccKnUuWEP4CsVvPA5
)


# legacy btc

declare -A missing_btc_txs
declare -A found_btc_txs

for addr in "${btc_addrs[@]}"; do
	data=$(curl -s https://api.blockcypher.com/v1/btc/main/addrs/$addr)
	# get all txs from the api and prepare regural expressions for each transaction
	# that we can use to search whether the transaction is tracked in the income log
	csv_regexps=$(echo $data | jq -r --arg ADDR "$addr" '.txrefs[] | select(.tx_input_n == -1) | (.confirmed | match("^[0-9]{4}-[0-9]{2}-[0-9]{2}").string | gsub("-"; "")) + ".*,\(.value / 100000000),.*,\($ADDR),\(.tx_hash)"')
	for regx in ${csv_regexps[@]}; do
		tx=${regx##*,}
		if ! grep -q -e "$regx" income_log.csv; then
			missing_btc_txs[$tx]=$tx
		else
			found_btc_txs[$tx]=$tx
		fi
	done
done

unique_missing_btc_txs=()

for missing in "${missing_btc_txs[@]}"; do
	if [[ -z ${found_btc_txs[$missing]} ]]; then
		unique_missing_btc_txs+=( $missing )
	fi
done

if [[ "${#unique_missing_btc_txs[@]}" != "0" ]]; then
	echo "The following BTC transactions are missing from the income log:"
	echo "${unique_missing_btc_txs[@]}"
fi


# zec

declare -A missing_zec_txs
declare -A found_zec_txs

for acc in "${zec_addrs[@]}"; do
	# TODO: Try to get more paginated results if the returned results exceed the limit
	data=$(curl -s "https://api.zcha.in/v2/mainnet/accounts/$acc/recv?limit=20&offset=0")
	# get all txs from the api and prepare regural expressions for each transaction
	# that we can use to search whether the transaction is tracked in the income log
	csv_regexps=$(echo $data | jq -r --arg ADDR "$acc" '.[] | (.timestamp | todateiso8601 | match("^[0-9]{4}-[0-9]{2}-[0-9]{2}").string | gsub("-"; "")) + ",.*,\(.value),.*,\($ADDR),\(.hash)"')
	for regx in ${csv_regexps[@]}; do
		ztx=${regx##*,}
		if ! grep -q -e "$regx" income_log.csv; then
			missing_zec_txs[$ztx]=$ztx
		else
			found_zec_txs[$ztx]=$ztx
		fi
	done
done

unique_missing_zec_txs=()

for missing_zec in "${missing_zec_txs[@]}"; do
	if [[ -z ${found_zec_txs[$missing_zec]} ]]; then
		unique_missing_zec_txs+=( $missing_zec )
	fi
done

if [[ "${#unique_missing_zec_txs[@]}" != "0" ]]; then
	echo "The following ZEC transactions are missing from the income log:"
	echo "${unique_missing_zec_txs[@]}"
fi
