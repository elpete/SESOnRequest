# SESOnRequest

[![All Contributors](https://img.shields.io/badge/all_contributors-2-orange.svg?style=flat-square)](#contributors)

### Sets the SES and HTML base url on each request in a ColdBox application

This package was created to solve the problem of a ColdBox application using the first HTTP_HOST that came its way for all links in the application.  (The specific instance was being pinged by a health check from the base server before requests came in through the DNS.)  It sets both the SESBaseUrl and the HTMLBaseUrl on each request.

## Installation
Couldn't be easier.
```
box install ses-on-request
```

## Usage
That's it.  Installing it registers the interceptor.  You are good to go.

## Configuration

The interceptor can be configured to include `index.cfm` in the URL which is required if you're not using URL rewriting.  Place the following in your app's `/config/Coldbox.cfc` to override the `includeIndex` setting.  This requires ColdBox `4.3.0`.

```
moduleSettings = {
    "SESOnRequest" = {
        "includeIndex" = true
    }
};
```

Additionally if you want to force SSL, set the `forceSSL` flag to `true`.

```
moduleSettings = {
    "SESOnRequest" = {
        "forceSSL" = true
    }
};
```

## Contributors

Thanks goes to these wonderful people ([emoji key](https://github.com/kentcdodds/all-contributors#emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore -->
| [<img src="https://avatars1.githubusercontent.com/u/2583646?v=4" width="100px;"/><br /><sub><b>Eric Peterson</b></sub>](https://github.com/elpete)<br />[💻](https://github.com/elpete/SESOnRequest/commits?author=elpete "Code") [📖](https://github.com/elpete/SESOnRequest/commits?author=elpete "Documentation") | [<img src="https://avatars0.githubusercontent.com/u/530964?v=4" width="100px;"/><br /><sub><b>George Murphy</b></sub>](http://www.websbygeorge.com)<br />[🤔](#ideas-murpg "Ideas, Planning, & Feedback") |
| :---: | :---: |
<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/kentcdodds/all-contributors) specification. Contributions of any kind welcome!
