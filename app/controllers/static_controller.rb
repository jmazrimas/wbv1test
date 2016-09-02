class StaticController < ApplicationController
  protect_from_forgery with: :exception

  def index
    @report = Report.new
  end

end
