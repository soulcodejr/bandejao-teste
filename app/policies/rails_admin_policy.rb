class RailsAdminPolicy < ApplicationPolicy
  def initialize(user, record=nil)
    super
  end

  def rails_admin?(action)
    case action
    when :dashboard
      true
    when :index
      true
    when :show
      true
    when :new
      user.admin?
    when :edit
      user.admin?
    when :destroy
      user.admin?
    when :export
      user.admin?
    when :history
      true
    when :show_in_app
      true
    when :nestable
      true
    else
      super
    end
  end
end