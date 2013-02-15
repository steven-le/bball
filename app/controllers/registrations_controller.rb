class RegistrationsController < Devise::RegistrationsController
  skip_before_filter :verify_authenticity_token, :only => :create
  respond_to :json
  
  def new
    super
  end
  
  def create
    super
  end
  
  def update
    super
  end
  
  def destroy
    super
  end
end