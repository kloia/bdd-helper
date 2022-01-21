class GlobalContext

  # Resets global variables for each scenario in an execution
  def initialize
    $page_title = nil
    $current_url = nil
    $window_size =nil
  end
end