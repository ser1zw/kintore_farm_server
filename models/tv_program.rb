require 'date'

class TvProgram < ActiveRecord::Base
  def formatted_start_datetime
    format_date(start_datetime) if start_datetime
  end

  def formatted_end_datetime
    format_date(end_datetime) if end_datetime
  end

  def format_date(date_YYYYMMDDHHmmss)
    DateTime.parse(date_YYYYMMDDHHmmss).strftime('%Y/%m/%d %H:%M')
  end
end
