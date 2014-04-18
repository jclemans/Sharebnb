class UsersController < ApplicationController
  def show
    @user = current_user
    @rental = Rental.new
  end

private
  helper_method :resource_name, :resource, :devise_mapping, :resource_class

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end


end
