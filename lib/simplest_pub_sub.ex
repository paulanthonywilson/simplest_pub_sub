defmodule SimplestPubSub do
  @moduledoc """
  Sub for events pub.
  """

  @doc """
  Subscribe the current process to receive events
  """
  @spec subscribe(any()) :: :ok
  def subscribe(topic) do
    with {:ok, _} <- Registry.register(SimplestPubSub.EventsRegistry, topic, []) do
      :ok
    end
  end

  @doc """
  Events are sent as messages to the subscribed processes.
  """
  @spec publish(any(), any()) :: :ok
  def publish(topic, event) do
    Registry.dispatch(SimplestPubSub.EventsRegistry, topic, fn entries ->
      for {pid, _} <- entries, do: send(pid, event)
    end)

    :ok
  end
end
