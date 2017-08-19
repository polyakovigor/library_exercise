class Book
  include Mongoid::Document

  field :name
  field :description
  field :_id, default: -> { name }
end
