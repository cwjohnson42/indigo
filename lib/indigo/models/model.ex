defprotocol Indigo.Model do
  @fallback_to_any true
  @spec id(t) :: String.t() | integer()
  def id(model)
end

defimpl Indigo.Model, for: Any do
  @spec id(any()) :: String.t()
  def id(model) do
    model.id
  end
end
