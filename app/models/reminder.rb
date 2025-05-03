class Reminder
  attr_accessor :title, :author, :date, :icon

  def initialize(title:, author:, date:, icon:)
    @title = title
    @author = author
    @date = date
    @icon = icon
  end
end
