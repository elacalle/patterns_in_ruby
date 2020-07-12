module Observable
  def add_observer(observer)
    @observers ||= []
    @observers << observer
  end

  def remove_observer(observer)
    @observers.delete(observer)
  end

  def notify
    @observers.each { |x| x.notify(self) }
  end
end
