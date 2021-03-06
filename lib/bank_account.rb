class BankAccount
  attr_accessor :status, :balance, :deposit
  attr_reader  :name


@@all= [] #track bank accounts by name


def initialize(name)
  @name = name
  @balance = 1000
  @status = "open"
end

def deposit(deposit)
  @deposit = deposit
  @balance += deposit
end

def display_balance
  "Your balance is $#{@balance}."
end

def valid?
   @balance > 0 && @status == "open"

end

def close_account
  @status = "closed"
end
end
