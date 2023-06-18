class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      if user.driver?
        scope.all
      else
        scope.where(customer_id: user.id)
      end
    end
    # def resolve
    #   scope.where(user: user)
    # end
  end

  def index?
  end

  def new?
    true
  end

  def driverindex?
    true
  end

  def drivershow?
    true
  end

  def driveracceptedorders?
    true
  end

  def ordermarkascompleted?
    true
  end

  def show?
    true
  end

  def specialshow?
    true
  end

  def create?
    true
  end

  def submit?
    true
  end

  def accept?
    true
  end

  def markascompleted?
    true
  end

  def cancel?
    true
  end

  def update?
    record.customer_id == user.id
  end
end
