defmodule SimplestPubSubTest do
  use ExUnit.Case, async: false

  test "can subscribe to a topic and receive events on that topic" do
    assert :ok == SimplestPubSub.subscribe(:my_events)
    SimplestPubSub.publish(:my_events, :an_event)
    assert_receive :an_event
  end

  test "receives one, and only one, notification per publication" do
    :ok = SimplestPubSub.subscribe(:my_events)
    SimplestPubSub.publish(:my_events, :an_event)
    assert_receive :an_event
    refute_receive :an_event
  end

  test "only receives events on topics to which the process has subscribed" do
    :ok = SimplestPubSub.subscribe(:my_events)
    SimplestPubSub.publish(:other_event, :an_event)
    refute_receive :an_event
  end
end
