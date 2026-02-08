class Solution {
  int maxProfit(List<int> prices) {
  int minBuyPrice = prices[0];
  int maxProfit = 0;
  for (var i = 0; i < prices.length; i++) {
    int currentPrice = prices[i];
    if (currentPrice < minBuyPrice) {
      minBuyPrice = currentPrice;
    } else {
      int profit = currentPrice - minBuyPrice;
      if (profit > maxProfit) {
        maxProfit = profit;
      }
    }
  }
  return maxProfit;
}
}