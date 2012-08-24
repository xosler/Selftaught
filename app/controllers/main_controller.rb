class MainController < ApplicationController
	before_filter :login_required, :only => [:home]
	
	
	def index
		if logged_in?
			redirect_to :action => 'home'
		end
	end
	
	
	def home
	
	end

end
