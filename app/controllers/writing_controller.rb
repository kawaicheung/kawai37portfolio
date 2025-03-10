class WritingController < ApplicationController
  layout "parent_slide"
  before_action :set_title, except: [ :index ]

  def index
    render layout: "parent_interlude"
  end

  def the_developers_code
  end

  private
    def set_title
      @title = "Writing"
    end
end
