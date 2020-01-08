def english_date(iso_date)
  # To make the code below work, define a
  # month_names hash with "01" through "12"
  # as keys, and "January" through "December"
  # as values.
  month_names = {}
  month_names["01"] = "January"
  month_names["02"] = "February"
  month_names["03"] = "March"
  month_names["04"] = "April"
  month_names["05"] = "May"
  month_names["06"] = "June"
  month_names["07"] = "July"
  month_names["08"] = "August"
  month_names["09"] = "September"
  month_names["10"] = "October"
  month_names["11"] = "November"
  month_names["12"] = "December"
  date_parts = iso_date.split("-")
  year = date_parts[0]
  month = date_parts[1]
  day = date_parts[2]
  "#{month_names[month]} #{day}, #{year}"
end

# Should print "June 20, 2002"
puts english_date("2002-06-20")
# Should print "December 13, 1974"
puts english_date("1974-12-13")