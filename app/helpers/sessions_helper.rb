module SessionsHelper
  def log_in(parent)
    session[:parent_id] = parent.id
  end  
  
  def current_parent
    if session[:parent_id]
      @current_parent ||= Parent.find_by(id: session[:parent_id])
    end  
  end
  
  def logged_in?
    !current_parent.nil?
  end  
  
  def log_out
    session.delete(:parent_id)
    @current_parent = nil
  end  
end
