class Cliente < ApplicationRecord
	has_many :criancas, dependent: :destroy
	has_many :telefones, dependent: :destroy
	has_many :emails, dependent: :destroy
	validates :name, presence: true,
					length: {minimum: 5}


	def change
		create_table :clientes do |t|
			t.string :name
			t.text :address
			t.timestamps
		end
	end

	def self.search(search)
		if search
			self.where("name LIKE ?", "%#{search}%")
		else
			self.all
		end
	end

end
