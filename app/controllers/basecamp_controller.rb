class BasecampController < ApplicationController
  layout "parent_basecamp"
  def first_time
    @first_name = "Scott"
    @briefcase_stats = BriefcaseStats.new
    render "index"
  end

  def zero_states
    @first_name = "Jason"
    @briefcase_stats = BriefcaseStats.new
    render "index"
  end

  def beginning_of_day
    @first_name = "JZ"
    @briefcase_stats = BriefcaseStats.new
    render "index"
  end

  def mid_day
    @first_name = "Bethany"
    @briefcase_stats = BriefcaseStats.new(
      card_count: 1,
      time_logged: "3.5h"
    )
    render "index"
  end

  def end_of_day
    @first_name = "Really Long Named Person"
    @briefcase_stats = BriefcaseStats.new(
      task_count: 2,
      card_count: 4,
      event_count: 1,
      check_in_status: 1,
      time_logged: "8h",
      boost_count: 5
    )
    render "index"
  end
end
