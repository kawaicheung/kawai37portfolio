class PitchController < ApplicationController
  layout "parent_slide"
  before_action :set_navigation_section

  def what_ill_bring
  end

  def why_id_love_this_role
  end

  private
    def set_navigation_section
      @navigation_section = "pitch"
    end
end
