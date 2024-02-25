require 'prob3'

RSpec.describe StringWrapper do
    let(:wrapper) { StringWrapper.new("Hello") }

    describe "#reverse" do
    it "reverses the string" do
        expect(wrapper.reverse).to eq("olleH")
      end
    end
  
    describe "#upcase" do
      it "converts the string to uppercase" do
        expect(wrapper.upcase).to eq("HELLO")
      end
    end
  
    describe "#downcase" do
      it "converts the string to lowercase" do
        expect(wrapper.downcase).to eq("hello")
      end
    end
end