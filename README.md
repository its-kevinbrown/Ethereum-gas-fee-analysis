# Ethereum-gas-fee-analysis
# Project Overview

Analyzed 30 days of Ethereum mainnet transactions using Google BigQuery to understand transaction activity, gas fee trends, and the impact of outliers on network costs.

# Objectives

- Explore and clean blockchain data from a public Ethereum dataset.

- Measure daily transaction volumes.

- Calculate average, median, and maximum gas fees.

- Identify outliers and highlight how they skew averages.

- Visualize daily trends in gas usage.

# Key Findings

- Most daily gas fees are tiny (median ≈ 0.00018 ETH), showing affordable transactions for typical users.

- On some days, outlier transactions paid 15+ ETH in gas fees (~$40K+), distorting averages.

- The median gas fee gave a more reliable picture than the average, proving the importance of outlier detection in crypto data.

- Visualization revealed clear spikes where bots, high-priority DeFi actions, or mistakes led to abnormally high fees.

# Tools & Skills Applied

- SQL (BigQuery) → querying blockchain-scale datasets.

- Data Aggregation → daily grouping of millions of transactions.

- Outlier Detection → comparing average, median, and max gas fees.

- Visualization → line charts of gas fee trends.

- Interpretation → translating raw data into blockchain insights.
