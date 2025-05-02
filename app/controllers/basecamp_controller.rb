class BasecampController < ApplicationController
  layout "parent_basecamp"
  def first_time
    render "index"
  end

  def second_time
    render "index"
  end
end
