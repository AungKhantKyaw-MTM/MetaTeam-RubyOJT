
# get last 5 days using date class.
# (if current day = "Sunday", Print "Sat, Fri, Thu, Wed, Tue")

require "date"

today = Date.today
days = []
1.upto(5) do |i|
    back_day = today - i
    days << back_day.strftime("%a")
end

today_date = today.strftime("%a")

puts ("Current Day is #{today_date}.\nLast 5 days are #{days.join(", ")}")