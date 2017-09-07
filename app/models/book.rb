class Book
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name
  field :description

  validates :name, :description, presence: true
  validates :name, length: { maximum: 20 }
  validates :description, length: { maximum: 250 }

  belongs_to :user
end
