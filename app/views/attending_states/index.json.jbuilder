json.array!(@attending_states) do |attending_state|
  json.extract! attending_state, :id, :name
  json.url attending_state_url(attending_state)
end
