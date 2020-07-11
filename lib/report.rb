class Report
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
    raise 'Header is empty'
  end

  def print_title
    # Override this hook
  end

  def print_body
    raise 'Body is empty'
  end

  def print_footer
    # raise 'Footer is empty'
  end
end
