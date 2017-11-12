module ApplicationHelper
  def active_item(uri)
    uri_segments = request.fullpath.split(/\/|\?/)
    uri_segments[1] === uri ? 'active' : ''
  end
  def has_error?(resource, field)
      resource.errors.messages[field].present?
  end

  def get_error(resource, field)
      resource.errors.messages[field].join(', ')
  end
end
