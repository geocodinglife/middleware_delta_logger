module ApplicationHelper
  def status_converter(status, truthy: nil, falsey: nil)
    return falsey if !status
    truthy
  end
end
