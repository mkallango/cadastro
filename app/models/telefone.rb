class Telefone < ApplicationRecord
  belongs_to :cliente
	validates :ddd, presence: true,
					length: {minimum: 2, maximum: 3}

end
