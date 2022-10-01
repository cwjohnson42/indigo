defmodule ModelServer do
  use GenServer

  def start_link(opts) do
    GenServer.start_link(__MODULE__, :ok, opts)
  end

  @spec get(GenServer.server(), String.t(), String.t() | integer) :: Indigo.Model.t() | nil
  def get(server, model_type, id) do
    GenServer.call(server, {:get, model_type, id})
  end

  @spec list(GenServer.server(), String.t()) :: [Indigo.Model.t(),...]
  def list(server, model_type) do
    GenServer.call(server, {:list, model_type})
  end

  @impl true
  @spec init(:ok) :: {:ok, %{atom() => %{(String.t() | integer()) => Indigo.Model.t()}}}
  def init(:ok) do
    {:ok, %{nature: Indigo.Nature.load()}}
  end

  @impl true
  def handle_call({:get, model_type, id}, _from, state) do
    model = case Map.get(state, model_type) do
      nil -> nil
      models ->
        case Map.get(models, id) do
          nil -> nil
          model -> model
        end
    end
    {:reply, model, state}
  end

  @impl true
  def handle_call({:list, model_type}, _from, state) do
    case Map.get(state, model_type) do
      nil -> {:reply, [], state}
      models -> {:reply, Map.values(models), state}
    end
  end
end
