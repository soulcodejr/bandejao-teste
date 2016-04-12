class UserPolicy < ApplicationPolicy
  attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @user = model
  end

  def index?
     false
  end

  def show?
    false
  end

  def create?
    admin_or_nutri?
  end

  def new?
    admin_or_nutri?
  end

  def update?
    admin_or_nutri?
  end

  def edit?
    admin_or_nutri?
  end

  def destroy?
    admin_or_nutri?
  end

  def admin_or_nutri?
    @current_user.admin? || @current_user.nutri?
  end

  def scope
    Pundit.policy_scope!(user, record.class)
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope
    end
  end
end
