defmodule DbProxyBugTest do
  use DbProxyBug.TestCase
  doctest DbProxyBug

  test "worker fetches weather" do
    assert DbProxyBug.Worker.fetch_weather() == "REPLY"
  end

  test "worker fetches weather again" do
    assert DbProxyBug.Worker.fetch_weather() == "REPLY"
  end
end
