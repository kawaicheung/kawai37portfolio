module NavigationHelper
  def navigation_paths
    Rails.application.config.navigation_paths
  end

  def current_path_index
    navigation_paths.index(current_page_path_helper) || 0
  end

  def deduced_prev_path
    return nil if current_path_index.zero?
    send(navigation_paths[current_path_index - 1])
  end

  def deduced_next_path
    return nil if current_path_index >= navigation_paths.length - 1
    send(navigation_paths[current_path_index + 1])
  end

  private

  def current_page_path_helper
    navigation_paths.find { |path| current_page?(send(path)) }
  end
end
