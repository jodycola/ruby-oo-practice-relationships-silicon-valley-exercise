require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# STARTUP
uber_eats = Startup.new("Uber Eats","Travis Kalanick & Garrett Camp", "Dining")
uber = Startup.new("Uber","Travis Kalanick & Garrett Camp", "Transportation")
lyft = Startup.new("Lyft", "Logan Green & John Zimmer", "Transportation")
venmo = Startup.new("Venmo", "Andrew Kortina", "Banking")

# VENTURE CAPITALIST
accel = VentureCapitalist.new("Accel", 1000000000)
founders_fund = VentureCapitalist.new("Founders Fund", 2000000000)

# FUNDING_ROUND
seriesA = FundingRound.new("Angel", 100000.00, uber, accel)
seriesB = FundingRound.new("Seed", 50000.00, lyft, accel)
seriesC = FundingRound.new("Seed", 50000.00, venmo, founders_fund)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line