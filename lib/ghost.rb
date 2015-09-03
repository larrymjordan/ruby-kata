class Ghost
  def method_missing(method_name)
    method_name.to_s
  end
end
