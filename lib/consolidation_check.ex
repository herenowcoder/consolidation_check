defprotocol Proto do
  def fire(data)
end

defimpl Proto, for: Integer do
  def fire(x), do: "#{x} fired!"
end

defimpl Proto, for: BitString do
  def fire(s), do: s <> " binary-fired ;)"
end
