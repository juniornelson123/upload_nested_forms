class Veiculo < ApplicationRecord
	has_many :imagems
	accepts_nested_attributes_for :imagems, :allow_destroy => :true
end
