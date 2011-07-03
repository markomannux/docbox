class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(view:"/index")
                "/desk"(view:"/desk")
		"500"(view:'/error')
	}
}
