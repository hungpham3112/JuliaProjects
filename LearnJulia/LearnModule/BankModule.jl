module BankModule

export Bank, default_bank

mutable struct Bank
    name::String
    cash::Float64
    total_credit::Float64
    total_deposit::Float64
    equity::Float64
    
    Bank(name) = new(name, 1000.0, 0.0, 0.0, 1000.0)
end


function default_bank(bank::Bank)
    bank.name = "Default" * bank.name
    bank.cash = 0 
    bank.total_credit = 0
    bank.total_deposit = 0
    bank.equity = 0
end
end