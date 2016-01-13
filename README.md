# OmniAuth KindfulUser

KindfulUser Oauth2 provides an easy way to provide secure sites for donors to log into.   This login can be restrict access based on custom fields set on the donor's profile.

If your looking to integrate with the non profit organization itself to insert client and transaction data into their account, the you should use the KindfulAdmin Oauth2 gem

Additional documentation on getting your access keys generated can be found here https://developer.kindful.com/docs/oauth-user-view
## Usecases

* Provide access to a website to active members
* Provide access to a website only to board members

## Installing

Add to your `Gemfile`:

```ruby
gem 'omniauth-kindful-user'
```

Then `bundle install`.

## Usage

`OmniAuth::Strategies::KindfulUser` is simply a Rack middleware.
Read the OmniAuth 2.0 docs for detailed instructions: 
<https://github.com/intridea/omniauth>.

Here's a quick example, adding the middleware to a Rails app
in `config/initializers/omniauth.rb` and getting a token with
scope permissions for full user info, send and request transactions:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :kindful_user, ENV['KINDFUL_KEY'], ENV['KINDFUL_SECRET'],
  client_options: {site: "https://example-client.kindful.com}
end
```

the endpoint /oauth2/api/v1/details.json
is called and provides the below information


```json
    {
        "id": 123,
        "name": "John Doe",
        "email": "john@test.com"
    }
```


Additional fields can be configured to provide first_name, last_name, custom fields, and membership details.   talk to support@kindful.com for more information on getting those setup.

