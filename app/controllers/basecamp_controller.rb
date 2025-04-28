class BasecampController < ApplicationController
  layout "parent_basecamp"
  def first_time
    @my_title = "First Time"
    render "index"
  end

  def second_time
    @my_title = "Second Time"
    render "index"
  end
end
