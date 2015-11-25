module ShopinfosHelper
  def set_time(week_time)
    start_hour = week_time[0]+ week_time[1]
    start_minute = week_time[2] + week_time[3]
    end_hour = week_time[4] + week_time[5]
    end_minute = week_time[6] + week_time[7]

    now_time = Time.now + 9.hour

    now_year = now_time.strftime("%Y")
    now_month = now_time.strftime("%m")
    now_day = now_time.strftime("%d")
    now_week = now_time.strftime("%A")
    now_time = now_time.strftime("%X")
    today_start_time = Time.mktime(now_year,now_month,now_day,start_hour,start_minute,00)
    today_end_time = Time.mktime(now_year,now_month,now_day,end_hour,end_minute,00)


    if now_time > today_start_time
      # 営業はスタートしている
      if today_end_time > now_time
        # 営業中
        return today_start_time,today_end_time
      end
    end

  end
  def make_now_week
    now_time = Time.now
    now_week = now_time.strftime("%A")
    return now_week
  end
end
