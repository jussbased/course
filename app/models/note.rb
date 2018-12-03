class Note < ApplicationRecord
	 has_many :comments
	 belongs_to :user
	validates :title, presence: true,
                    length: { minimum: 4 }
end
