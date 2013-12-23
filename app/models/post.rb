class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { maximum: 20 }
  validates :text, presence: true, length: { minimum: 5 }
end
