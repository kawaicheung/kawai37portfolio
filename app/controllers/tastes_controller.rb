class TastesController < ApplicationController
  layout "parent_slide"
  before_action :set_title, except: [ :index ]

  def index
    render layout: "parent_interlude"
  end

  def bits_of_delight
  end

  def the_weird_history_of_css
  end

  def influences
  end

  private
    def set_title
      @title = "Tastes"
    end
end
