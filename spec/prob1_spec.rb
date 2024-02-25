require 'prob1'

RSpec.describe User do
    let(:user) { User.new("Jacob") }

    describe "#log_in" do
    it "logs the user in" do
        user.log_in()
        expect(user.logged_in).to eq(true)
      end
    end
  
    describe "#log_out" do
      it "logs the user out" do
        user.log_out()
        expect(user.logged_in).to eq(false)
      end
    end
  
    describe "#username" do
      it "returns the correct username" do
        expect(user.username).to eq("Jacob")
      end
    end
end  