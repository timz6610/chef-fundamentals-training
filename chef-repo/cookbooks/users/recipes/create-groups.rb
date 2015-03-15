case node["platform"]
	when "windows"
		search("groups", "platform:windows").each do |group_data|
			group group_data["id"] do
				members group_data["members"]
			end
		end

	when "centos"
		search("groups", "platform:centos").each do |group_data|
			group group_data["id"] do
				gid group_data["gid"]
				members group_data["members"]
			end
		end
end
