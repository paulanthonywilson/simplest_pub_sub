# SimplestPubSub

Arguably pointlessly simple immplementation of local Pub Sub using a registry for dispatch, as per https://hexdocs.pm/elixir/Registry.html#module-using-as-a-pubsub. It doesn't do much but I often end up writing the same code over again, especially in [Nerves projects](https://nerves-project.org) so here it is.

## Anticipated questions

### This is less code than Left-Pad. Why should I not just implement this directly in my own project?

I'm not stopping you.

### Why shouldn't I use [Phoenix.PubSub](https://hexdocs.pm/phoenix_pubsub/Phoenix.PubSub.html) instead?

I'm not stopping you.



## Installation

This hexicle can be installed by adding `simplest_pub_sub` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:simplest_pub_sub, "~> 0.1.0"}
  ]
end
```


