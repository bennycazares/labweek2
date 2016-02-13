require "csv"
require "erb"
#reads from the erb

html. File.read("report.erb")

# replaces with values

page_title = "Planet Express Log"

new_html = ERB.new(html).result(binding)


#writes the html file
File.open("report.html", "wb") do |file|
    file.write(new_html)
    file.close
  end


    # logs = []
    #
    #
    # CSV.foreach("planet_express_logs.csv", headers: true) do |row|
    #   puts row.inspect
    # end
    #
    # tirp revenue = []
    # trip_revenue = logs.map { |h| h["Money"]}
    #                    .map(&:to_i)
    #
    # goal_revenue = 500000
    #
    #
    #
