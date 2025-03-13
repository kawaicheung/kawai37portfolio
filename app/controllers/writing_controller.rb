class WritingController < ApplicationController
  layout "parent_slide"
  before_action :set_section_title, except: [ :index ]

  def index
    render layout: "parent_interlude"
  end

  def the_developers_code
  end

  def top_picks
  end

  private
    def set_section_title
      @section_title = "Writing"
    end
end
