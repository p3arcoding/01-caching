class HomeController < ApplicationController
  def index
    @events ||= if current_user
                  Event.includes(:venue).includes(:artist).featured_for_logged_in
                else
                  Event.includes(:venue).includes(:artist).featured_for_logged_out
                end
  end
end
