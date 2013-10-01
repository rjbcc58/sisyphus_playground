require 'spec_helper'

describe "todos/new" do
  before(:each) do
    assign(:todo, stub_model(Todo,
      :title => "MyString",
      :isCompleted => false
    ).as_new_record)
  end

  it "renders new todo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", todos_path, "post" do
      assert_select "input#todo_title[name=?]", "todo[title]"
      assert_select "input#todo_isCompleted[name=?]", "todo[isCompleted]"
    end
  end
end
