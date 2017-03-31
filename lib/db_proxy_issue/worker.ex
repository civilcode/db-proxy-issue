defmodule DbProxyIssue.Worker do
  use GenServer

  alias DbProxyIssue.Weather

  def start_link(opts \\ [name: __MODULE__]) do
    GenServer.start_link(__MODULE__, nil, opts)
  end

  def fetch_weather do
    GenServer.call(__MODULE__, :fetch_weather)
  end

  def record_weather(city, temp_lo, temp_hi) do
    GenServer.call(__MODULE__, {:record_weather, city, temp_lo, temp_hi})
  end

  # Callbacks

  def handle_call({:record_weather, city, temp_lo, temp_hi}, _from, state) do
    result = Weather.record_weather(city, temp_lo, temp_hi)

    {:reply, result, state}
  end

  def handle_call(:fetch_weather, _from, state) do
    Weather.all

    {:reply, "REPLY", state}
  end
end
