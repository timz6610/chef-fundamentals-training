case node["platform"]
	when "windows"
		search("users", "platform:windows").each do |user_data|
			user user_data["id"] do
				comment user_data["comment"]
				password user_data["password"] 
			end
		end
	when "centos"
		search("users", "platform:centos").each do |user_data|
			user user_data["id"] do
				comment user_data["comment"]
				uid user_data["uid"]
				gid user_data["gid"]
				home user_data["home"]
				shell user_data["shell"]
			end
		end
end

include_recipe "users::create-groups"