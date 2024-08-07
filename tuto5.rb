
# get last 5 days using date class.
# (if current day = "Sunday", Print "Sat, Fri, Thu, Wed, Tue")

require "date"

today = Date.today

if today.wednesday?
    days = []
    1.upto(5) do |i|
        back_day = today - i
        days << back_day.strftime("%a")
    end
    puts days.join(", ")
else
    puts "Today is not Wednesday"
end