
class ReportsController < ApplicationController
  protect_from_forgery with: :exception

  def create
    @report = Report.new(report_params)

    if @report.save
      puts "save worked!"
      redirect_to report_path(@report)
    else
      puts @report.errors.full_messages
      redirect_to :root
    end

  end

  private

  def report_params
    params.require(:report).permit(:report_name, :image_url)
  end

end
