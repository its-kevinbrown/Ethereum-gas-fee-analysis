SELECT
  DATE(t.block_timestamp) AS date,
  COUNT(*) AS txn_count,
  AVG(CAST(t.gas_price AS NUMERIC) * CAST(r.gas_used AS NUMERIC) / 1e18) AS avg_gas_fee_eth,
   MAX(CAST(t.gas_price AS NUMERIC) * CAST(r.gas_used AS NUMERIC) / 1e18) AS max_gas_fee_eth,
    APPROX_QUANTILES(CAST(t.gas_price AS NUMERIC) * CAST(r.gas_used AS NUMERIC) / 1e18, 100)[OFFSET(50)] AS median_gas_fee_eth
FROM
  `bigquery-public-data.goog_blockchain_ethereum_mainnet_us.transactions` t
JOIN
  `bigquery-public-data.goog_blockchain_ethereum_mainnet_us.receipts` r
ON
  t.transaction_hash = r.transaction_hash
WHERE
  t.block_timestamp >= TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 30 DAY)
GROUP BY
  date
ORDER BY
  date;