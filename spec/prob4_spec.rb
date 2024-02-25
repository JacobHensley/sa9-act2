require 'prob4'

RSpec.describe BankAccount do
    let(:account) { BankAccount.new() }
    describe "#deposit" do
      it "increases the balance by the deposit amount" do
        account.deposit(15)
        expect(account.balance).to eq(15)
      end
    end
  
    describe "#withdraw" do
      it "decreases the balance by the withdrawal amount if funds are available" do
        account.deposit(15)
        account.withdraw(5)
        expect(account.balance).to eq(10)
      end
  
      it "does not change the balance if insufficient funds" do
        account.deposit(15)
        account.withdraw(20)
        expect(account.balance).to eq(15)
      end
    end
  
    describe "#balance" do
      it "returns the current balance" do
        account.deposit(15)
        expect(account.balance).to eq(15)
      end
    end
end