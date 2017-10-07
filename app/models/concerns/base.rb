module Base
  extend ActiveSupport::Concern

  def date
    self.created_at.strftime("%d-%m-%Y %H-%M")
  end

end