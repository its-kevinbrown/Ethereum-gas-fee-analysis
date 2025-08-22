SELECT
  DATE(block_timestamp) AS date,
  COUNT(*) AS txn_count
FROM
  `bigquery-public-data.goog_blockchain_ethereum_mainnet_us.transactions`
WHERE
  block_timestamp >= TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 30 DAY)  -- last 30 days only
GROUP BY
  date
ORDER BY
  date;