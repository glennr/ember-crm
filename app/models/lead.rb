class Lead < ActiveRecord::Base

  validates :email, uniqueness: true

end
