class Costume < ApplicationRecord

  belongs_to :user

  validates :name, presence: true, uniqueness: true

  validates :img_url, presence: true

  validates :description, presence: true, length: ( minimum: 10, maximum: 500 )


end
