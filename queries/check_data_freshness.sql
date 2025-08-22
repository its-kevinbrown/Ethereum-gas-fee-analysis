SELECT
  MIN(block_number) AS first_block,
  MAX(block_number) AS newest_block,
  COUNT(*) AS total_blocks
FROM
  `bigquery-public-data.goog_blockchain_ethereum_mainnet_us.blocks`;