name "win-production"
description "For Prods!"
cookbook "iis_demo", "= 0.1.0"
override_attributes({
	"datacenter" => {
		"location" => "Chile"
	}
})
