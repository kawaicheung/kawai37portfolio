class WorksController < ApplicationController
  layout "parent_slide"
  before_action :set_section_title, except: [ :index ]
  def index
    render layout: "parent_interlude"
  end

  def donedone
  end

  def dnsdigest
  end

  def baseball_scoreboards
  end

  def shiftlist
  end

  def secret_project
  end

  private

  def set_section_title
    @section_title = "Works"
  end
end
