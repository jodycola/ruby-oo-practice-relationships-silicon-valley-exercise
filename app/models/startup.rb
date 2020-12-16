class Startup

    attr_accessor :name, :domain
    attr_reader :founder

    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def self.all
        @@all
    end

    def pivot(new_domain, new_name)
        @name = new_name
        @domain = new_domain
    end
    
    def self.find_by_founder(founder_name)
        self.all.find {|startup| startup.founder == founder_name}
    end

    def self.domains
        self.all.map(&:domain).uniq
    end

    def sign_contract(type, investment, venture_capitalist)
        FundingRound.new(type, investment, self, venture_capitalist)
    end

    def num_funding_rounds
        FundingRound.all.select {|funding| funding.startup == self}.count
    end

    def total_funds
        result = FundingRound.all.select {|funding| funding.startup == self}
        result = result.map(&:investment)
        result[0]
    end

    def investors
        result = FundingRound.all.select {|funding| funding.venture_capitalist}
        result.select{|fund| fund.startup == self}.uniq
    end
end
