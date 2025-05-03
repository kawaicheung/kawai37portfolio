class BasecampController < ApplicationController
  layout "parent_basecamp"
  def first_time
    @is_first_time = true
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
    @reminders = [
      Reminder.new(
        title: "Chat: Q2 Marketing Ideas",
        author: "Michael Sanders",
        date: 2.days.ago,
        icon: "fa-comments"
      ),
      Reminder.new(
        title: "Chat: Website redesign",
        author: "Mustafa Shabib",
        date: 1.day.ago,
        icon: "fa-comments"
      ),
      Reminder.new(
        title: "@mentioned: Where we are at with the project plan",
        author: "Lindsay Sanders",
        date: 1.day.ago,
        icon: "fa-comments"
      ),
      Reminder.new(
        title: "Hill Chart: Progress Update",
        author: "Craig Bryant",
        date: 1.day.ago,
        icon: "fa-wave-square"
      )
    ]
    render "index"
  end

  def mid_day
    @first_name = "Bethany"
    @briefcase_stats = BriefcaseStats.new(
      card_count: 1,
      time_logged: "3.5h"
    )
    @reminders = [
      Reminder.new(
        title: "Chat: Q2 Marketing Ideas",
        author: "Michael Sanders",
        date: 2.days.ago,
        icon: "fa-comments"
      ),
      Reminder.new(
        title: "Hill Chart: Progress Update",
        author: "Craig Bryant",
        date: 1.day.ago,
        icon: "fa-wave-square"
      ),
      Reminder.new(
        title: "@mentioned: Summer planning",
        author: "Lindsay Sanders",
        date: 1.hour.ago,
        icon: "fa-comments"
      )
    ]
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

    @reminders = [

      Reminder.new(
        title: "@mentioned: Summer planning",
        author: "Lindsay Sanders",
        date: 1.hour.ago,
        icon: "fa-comments"
      )
    ]
    render "index"
  end
end
