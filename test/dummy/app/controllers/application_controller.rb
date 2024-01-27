class ApplicationController < ActionController::Base
  def root
    render plain: 'root application'
  end
end
