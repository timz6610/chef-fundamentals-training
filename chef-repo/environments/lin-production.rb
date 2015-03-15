name "lin-production"
description "For Prods!"
cookbook "apache", "= 0.2.0"
override_attributes(
	{ "pci" => {"in_scope" => true}	}
)
