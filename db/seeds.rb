LOYALTYS= {
  'A': 20,
  'B': 15,
  'C': 10,
  'D': 5,
  'E': 0
}

LOYALTYS.each{ |k,v| LoyaltyPlan.create(score: k, rate: v) }