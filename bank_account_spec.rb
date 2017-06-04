require_relative 'bank_account'
RSpec.describe BankAccount do
    before (:each) do
        @account1 = BankAccount.new(5,10)
        @account2 = BankAccount.new(0,0)
    end

    it 'has a getter method for retrieving the checking account balance' do
        expect(@account1.checking_account).to eq(puts "Current checking account balance: $5")
        expect(@account2.checking_account).to eq(puts "Current checking account balance: $0")
    end

    it 'has a getter method that retrieves the total account balance' do
        expect(@account1.view_total).to eq(puts "Checking and savings: $15")
        # had problem here with "self"
    end

    it 'has a function that allows the user to withdraw cash' do
        @account1.withdraw_savings 5
        expect(@account1.savings_account).to eq(puts "Current savings account balance: $5")
    end

    it 'raises an error if a user tries to withdraw more money than they have in the account' do
        expect(@account1.withdraw_savings(11)).to eq(puts "Insufficient funds. Current savings account balance: $-1")
    end

    it 'raises an error when the user attempts to retrieve the total number of bank accounts' do
        expect{@account1.no_of_accounts}.to raise_error(NoMethodError)
    end

    it 'raises an error when the user attempts to set the interest rate' do
        expect{@account2.interest_rate}.to raise_error(NoMethodError)
    end

end
