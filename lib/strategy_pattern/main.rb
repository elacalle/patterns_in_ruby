require 'csv'
require './html_formater.rb'
require './json_formater.rb'

data = CSV.read('./../../data/airtravel.csv', col_sep: ',', headers: true)

report = Report.new
report.data data

report.formater HtmlFormater.new
report.print

report.formater JsonFormater.new
report.print
