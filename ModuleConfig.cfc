component {

	this.title = "SESOnRequest";
	this.author = "Eric Peterson";
	this.description = "Sets the SES and HTML base urls on each request";
	this.version = "1.1.0";
	this.entryPoint = "SESOnRequest";
	this.modelNamespace = "SESOnRequest";
	this.cfmapping = "SESOnRequest";
	this.dependencies = [];

	function configure() {
		settings = {
			// Override in config to be true if not using URL Rewrites
            includeIndex = false,
            forceSSL = false
		};

		interceptors = [
			{
				name = "SESOnRequest",
				class = "#moduleMapping#.interceptors.SESOnRequest"
			}
		];
	}

}
