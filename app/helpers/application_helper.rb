module ApplicationHelper
  def dispatcher_route
    "#{controller_path.gsub(/\//, "_")}##{action_name}"
  end
end
