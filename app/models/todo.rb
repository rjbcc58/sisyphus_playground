class Todo
  include Mongoid::Document
  field :title, type: String
  field :isCompleted, type: Boolean
end
