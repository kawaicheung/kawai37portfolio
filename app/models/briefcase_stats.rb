class BriefcaseStats
  attr_reader :task_count, :card_count, :event_count, :check_in_status, :time_logged, :boost_count

  def initialize(task_count: 0, card_count: 0, event_count: 0, check_in_status: 0, time_logged: 0, boost_count: 0)
    @task_count = task_count
    @card_count = card_count
    @event_count = event_count
    @check_in_status = check_in_status
    @time_logged = time_logged
    @boost_count = boost_count
  end

  def stickers
    {
      tasks: { icon: "fa-square-check", count: task_count, style: "tasks" },
      cards: { icon: "fa-table-columns", count: card_count, style: "cards" },
      events: { icon: "fa-calendar-day", count: event_count, style: "events" },
      check_ins: { icon: "fa-bell", count: check_in_status, style: "check-ins" },
      time: { icon: "fa-clock", count: time_logged, style: "time" },
      boosts: { icon: "fa-rocket", count: boost_count, style: "boosts" }
    }
  end
end
