class Bullet < ApplicationRecord

  belongs_to :one_shot
  belongs_to :user

  validates :cost, presence: true

end
