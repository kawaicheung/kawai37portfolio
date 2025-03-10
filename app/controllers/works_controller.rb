class WorksController < ApplicationController
  layout "parent_slide"
  before_action :set_title, except: [ :index ]
  def index
    render layout: "parent_interlude"
  end

  def donedone
  end

  def dnsdigest
  end

  def baseball_scoreboards
  end

  private

  def set_title
    @title = "Works"
  end
end
