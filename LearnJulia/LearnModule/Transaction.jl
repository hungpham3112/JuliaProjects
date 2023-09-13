module Transaction

function deposit(customer::Customer, bank::Bank, money::Float64)
    if customer.cash ≥ money
        customer.cash -= money
        customer.bank_deposit += money
        bank.cash += money
        bank.total_deposit += money
    else
        println("Not enough cash to deposit this amount of money")
end

function withdraw(customer::Customer, bank::Bank, money::Float64)
    if bank.cash ≥ amount
        if customer.bank_deposit ≥ amount
            bank.cash -= money
            bank.total_deposit -= money
            customer.cash -= amount
            customer.bank_deposit -= amount
        else
            println("Your don't have enough money to withdraw")
        end
    else
        println("Not enough cash in the bank.")
end
    
end