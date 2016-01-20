defprotocol Proto do
  def fire(data)
end

defimpl Proto, for: Integer do
  def fire(x), do: "#{x} fired!"
end
