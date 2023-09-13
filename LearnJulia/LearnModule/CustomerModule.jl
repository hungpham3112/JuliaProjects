module CustomerModule


export Customer

mutable struct Customer
    name::String
    cash::Float64
    bank_deposit::Float64

    Customer(name) = new(name, 100.0, 0.0)
end

function default_customer(customer::Customer)
    customer.name = "Default" * customer.name
    customer.cash = 0 
    customer.bank_deposit = 0
end
    
end