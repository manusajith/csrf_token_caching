# CsrfTokenCaching

One of the notable features of Rails is the use of CSRF (Cross Site Request Forgery). The CSRF token is implemented by embedding a server side generated token to all the pages that is generated. When rails render a new page, it will generate an authenticity token and will embed the same into a hidden field and will be stored in the session object. Whenever a request to Edit or Update an object is received rails will check the authenticity of the token and will reject it if it isnt valid.

###CSRF token with Action Caching ###

Consider an example where a user named "User1" comes to the application. For this user the CSRF token will be newly generated, also note that a cached copy of the file will be stored on the server. If another user "User2" visits the same page, then he/she will be getting the cached copy of the file with the CSRF token for the first user. Now if the second user tries to edit/update an object, then there will be mismatches in the CSRF token and he/she will get an error.

###Solution ###

In some cases disabling the CSRF token can solve the above problem, but it is not advisable to have CSRF disabled in your application. The workaround is to modify the module which is responsible for generating the authenticity token in such a way that we are able to split the token later and can match that against the requests.

## Installation

Add this line to your application's Gemfile:

    gem 'csrf_token_caching'

Add this line in ApplicationController: `include CsrfTokenCaching`

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install csrf_token_caching

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
