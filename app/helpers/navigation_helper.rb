module NavigationHelper
  def current_path_index
    Constants::NAVIGATION_PATHS.index(current_page_path_helper) || 0
  end

  def deduced_prev_path
    return nil if current_path_index.zero?
    send(Constants::NAVIGATION_PATHS[current_path_index - 1])
  end

  def deduced_next_path
    return nil if current_path_index >= Constants::NAVIGATION_PATHS.length - 1
    send(Constants::NAVIGATION_PATHS[current_path_index + 1])
  end

  private

  def current_page_path_helper
    Constants::NAVIGATION_PATHS.find { |path| current_page?(send(path)) }
  end
end
