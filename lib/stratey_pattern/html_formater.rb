require './report.rb'

class HtmlFormater
  def set_data(header, body)
    @header = header
    @body = body
  end

  def print
    print_header
    print_body(&print_title)
    print_footer
  end

  private

  def print_header
    puts "
      <html>
        <head>
          <title>
            #{@header.join(' ')}
          </title>
        </head>
    "
  end

  def print_title
    lambda do
      puts '<h1>Report summary</h1>'
      puts '<ul>'
      puts "<li>Month</li>"
      puts "<li>Travels</li>"
      puts '</ul>'
    end
  end

  def print_body(&block)
    puts '<body>'
    puts '<div>'

    if block_given?
      block.call
    end

    @body.each do |row|
      puts '<ul>'
      puts "<li>#{row[0].strip}</li>"
      puts "<li>#{row[1].strip}</li>"
      puts '</ul>'
    end

    puts '</div>'
    puts '</body>'
  end

  def print_footer
    puts '</html>'
  end
end
