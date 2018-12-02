class SessionsController < ApplicationController
  def new
  end
  
  def create
    parent = Parent.find_by(name: params[:session][:name].downcase)
    if parent && parent.authenticate(params[:session][:password])
      log_in parent
      redirect_to parent
      # Log the user in and redirect to the user's show page.
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end
  
  
end
