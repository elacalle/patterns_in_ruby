require 'csv'
require './html_formater.rb'
require './json_formater.rb'

data = CSV.read('./../../data/airtravel.csv', col_sep: ',', headers: true)

formater = HtmlFormater.new
formater.set_data(data.headers, data)
formater.print

formater = JsonFormater.new
formater.set_data(data.headers, data)
formater.print
