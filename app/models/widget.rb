class Widget < CassandraObject::Base
  string :name
  string :description
  integer :price
  array :colors, unique: true

  validates :name, presence: :true

  before_create do
    self.description = "#{name} is the best product ever"
  end
end