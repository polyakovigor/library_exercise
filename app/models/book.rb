class Book
  include Mongoid::Document
  paginates_per 20

  field :name
  field :description
  # field :_id, default: -> { name }
end
