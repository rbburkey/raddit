class Link < ActiveRecord::Base
  belongs_to :user
  has_many :votes, dependent: :destroy
end
