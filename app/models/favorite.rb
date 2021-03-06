class Favorite < ActiveRecord::Base
  belongs_to :favorable
  belongs_to :user
  validates_presence_of :user_id, :favorable_id, :favorable_type
  ### before_save :associate_user

=begin

### This code should be redundant with the now working favorites
### However I am leaving it for posterity in case it ends up being useful

  #Protected Methods
  protected
	def associate_user
	  unless self.user_id
	    return self.user_id = session[:user_id] if session[:user_id]
	    return false
	  end
	end
=end
end
