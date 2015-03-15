search(:users, "platform:windows").each do |user_data|
	user user_data["id"] do
		comment user_data["comment"]
		password user_data["password"]
	end
end

include_recipe "users::win-groups"