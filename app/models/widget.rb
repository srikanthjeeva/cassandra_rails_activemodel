class Widget < CassandraObject::Base
  string :name
  string :description
  string :created_at
  string :updated_at

  validates :name, presence: :true

  before_create do
    self.description = "#{name} is the best product ever"
  end
end