class Report
  def data(data)
    @header = data.headers
    @body = data
  end

  def formater(formatter)
    @formatter = formatter
  end

  def print
    @formatter.set_data(@header, @body)
    @formatter.print
  end
end
