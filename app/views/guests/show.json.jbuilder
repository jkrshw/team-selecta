json.extract! @guest, :created_at, :updated_at, :attending_state
json.user do
	json.extract! @guest.user, :name
end
