class BasecampController < ApplicationController
  layout "parent_basecamp"
  def first_time
    render "index"
  end

  def zero_states
    render "index"
  end

  def beginning_of_day
    render "index"
  end

  def end_of_day
    render "index"
  end
end
