class BasecampController < ApplicationController
  layout "parent_basecamp"
  def first_time
    @is_first_time = true
    @first_name = "Scott"
    @briefcase_stats = BriefcaseStats.new
    @on_tap_items = [
      {
        title: "Today",
        items: [
          {
            type: "event",
            icon: "fa-bell",
            title: "Hi #{@first_name}! Here's an event in your first project.",
            topic: "2:00pm-3:30pm",
            project: "My Project",
            project_link: ""
          },
          {
            type: "task",
            icon: "fa-list-check",
            title: "#{@first_name}, check off this to-do when you're done with it.",
            topic: "My to-do list",
            topic_link: "",
            project: "My Project",
            project_link: ""
          },
          {
            type: "card",
            icon: "fa-table-columns",
            title: "Drag this card to the 'Done' column when it's complete.",
            topic: "My card table",
            topic_link: "",
            project: "My Project",
            project_link: ""
          }
        ]
      }
    ]
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
        icon: "fa-file-lines"
      ),
      Reminder.new(
        title: "Hill Chart: Progress Update",
        author: "Craig Bryant",
        date: 1.day.ago,
        icon: "fa-wave-square"
      )
    ]
    @on_tap_items = [
      {
        title: "Up Next",
        items: [
          {
            type: "task",
            icon: "fa-list-check",
            title: "Review and approve updated remote work policy draft",
            topic: "HR Policies",
            topic_link: "",
            project: "Policies & Procedures",
            project_link: ""
          },
          {
            type: "card",
            icon: "fa-table-columns",
            title: "Finalize homepage wireframes with design team",
            topic: "Design Phase",
            topic_link: "",
            project: "Website Redesign",
            project_link: ""
          }
        ]
      },
      {
        title: "Today",
        items: [
          {
            type: "event",
            icon: "fa-bell",
            title: "Stakeholder review meeting for new expense policy",
            topic: "2:00pm-3:30pm",
            project: "Policies & Procedures",
            project_link: ""
          },
          {
            type: "task",
            icon: "fa-list-check",
            title: "Update content guidelines for blog contributors",
            topic: "Content Strategy",
            topic_link: "",
            project: "Website Redesign",
            project_link: ""
          }
        ]
      },
      {
        title: "Tomorrow",
        items: [
          {
            type: "event",
            icon: "fa-calendar-day",
            title: "Training session: New compliance documentation system",
            topic: "10:00am-11:30am",
            project: "Policies & Procedures",
            project_link: ""
          },
          {
            type: "card",
            icon: "fa-table-columns",
            title: "Review developer estimates for new contact forms",
            topic: "Development",
            topic_link: "",
            project: "Website Redesign",
            project_link: ""
          }
        ]
      }
    ]
    @more_items_count = 2
    @overdue_count = 3
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
        icon: "fa-file-lines"
      )
    ]
    @on_tap_items = [
      {
        title: "Up Next",
        items: [

          {
            type: "card",
            icon: "fa-table-columns",
            title: "Finalize homepage wireframes with design team",
            topic: "Design Phase",
            topic_link: "",
            project: "Website Redesign",
            project_link: ""
          }
        ]
      },
      {
        title: "Today",
        items: [
          {
            type: "event",
            icon: "fa-bell",
            title: "Stakeholder review meeting for new expense policy",
            topic: "2:00pm-3:30pm",
            project: "Policies & Procedures",
            project_link: ""
          },
          {
            type: "task",
            icon: "fa-list-check",
            title: "Update content guidelines for blog contributors",
            topic: "Content Strategy",
            topic_link: "",
            project: "Website Redesign",
            project_link: ""
          }
        ]
      },
      {
        title: "Tomorrow",
        items: [
          {
            type: "event",
            icon: "fa-calendar-day",
            title: "Training session: New compliance documentation system",
            topic: "10:00am-11:30am",
            project: "Policies & Procedures",
            project_link: ""
          },
          {
            type: "card",
            icon: "fa-table-columns",
            title: "Review developer estimates for new contact forms",
            topic: "Development",
            topic_link: "",
            project: "Website Redesign",
            project_link: ""
          }
        ]
      }
    ]

    @more_items_count = 1
    @overdue_count = 3
    render "index"
  end

  def end_of_day
    @first_name = "Really Long Named Person"
    @briefcase_stats = BriefcaseStats.new(
      task_count: 3,
      card_count: 2,
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
        icon: "fa-file-lines"
      )
    ]
    @on_tap_items = [
      {
        title: "Tomorrow",
        items: [
          {
            type: "event",
            icon: "fa-calendar-day",
            title: "Training session: New compliance documentation system",
            topic: "10:00am-11:30am",
            project: "Policies & Procedures",
            project_link: ""
          },
          {
            type: "card",
            icon: "fa-table-columns",
            title: "Review developer estimates for new contact forms",
            topic: "Development",
            topic_link: "",
            project: "Website Redesign",
            project_link: ""
          }
        ]
      },
      {
        title: 3.days.from_now.strftime("%A, %b %e"),
        items: [
          {
            type: "event",
            icon: "fa-calendar-day",
            title: "Training session: Learn about your laptop",
            topic: "10:00am-11:30am",
            project: "Policies & Procedures",
            project_link: ""
          },
          {
            type: "card",
            icon: "fa-table-columns",
            title: "Learn <TABLE> based design for fun again.",
            topic: "Development",
            topic_link: "",
            project: "Website Redesign",
            project_link: ""
          }
        ]
      }
    ]
    @overdue_count = 3
    render "index"
  end
end
