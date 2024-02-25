require 'prob2'

RSpec.describe TodoList do
    let(:todoList) { TodoList.new() }

    describe "#add" do
      it "adds a todo to the list" do
        todoList.add("Item 1")
        expect(todoList.todos).to eq(["Item 1"])
      end
    end
  
    describe "#remove" do
      it "removes a todo from the list" do
        todoList.add("Item 1")
        todoList.add("Item 2")
        todoList.remove("Item 2")
        expect(todoList.todos).to eq(["Item 1"])
      end
    end
  
    describe "#todos" do
      it "returns all todos" do
        todoList.add("Item 1")
        todoList.add("Item 2")
        expect(todoList.todos).to eq(["Item 1", "Item 2"])
      end
    end
end  