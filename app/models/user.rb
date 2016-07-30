class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :links
  has_many :votes

  def voted?(user)
    @link = Link.find(params[:id])
     if @link.votes.where(user_id: user.id) != nil
       return true
     end
   end
end
