defmodule SimplestPubSub.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {Registry,
       keys: :duplicate,
       name: SimplestPubSub.EventsRegistry,
       partitions: System.schedulers_online()}
    ]

    opts = [strategy: :one_for_one, name: SimplestPubSub.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
