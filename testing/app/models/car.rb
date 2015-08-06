class Car < ActiveRecord::Base
 validates :name, presence: true
 validates :age, presence: true
end
