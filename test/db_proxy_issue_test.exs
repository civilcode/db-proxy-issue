defmodule DbProxyIssueTest do
  use DbProxyIssue.TestCase
  doctest DbProxyIssue

  test "worker fetches weather" do
    assert DbProxyIssue.Worker.fetch_weather() == "REPLY"
  end

  test "worker fetches weather again" do
    assert DbProxyIssue.Worker.fetch_weather() == "REPLY"
  end

  test "record weather" do
    {:ok, weather} = DbProxyIssue.Worker.record_weather("Montreal", 10, 20)
    assert weather
  end

  test "record weather again" do
    {:ok, weather} = DbProxyIssue.Worker.record_weather("Montreal", 18, 35)
    assert weather
  end
end
