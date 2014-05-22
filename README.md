# visupedia-api-ruby

Official Visupedia API library client for ruby

__This library is generated by [alpaca](https://github.com/pksunkara/alpaca)__

## Installation

Make sure you have [rubygems](https://rubygems.org) installed

```bash
$ gem install visupedia
```

#### Versions

Works with [ 1.8.6 / 1.8.7 / 1.9.1 / 1.9.2 / 1.9.3 / 2.0.0 / 2.1.0 / 2.1.1 ]

## Usage

```ruby
require "visupedia"

# Then we instantiate a client (as shown below)
```

### Build a client

##### Without any authentication

```ruby
client = Visupedia::Client.new

# If you need to send options
client = Visupedia::Client.new({}, client_options)
```

### Client Options

The following options are available while instantiating a client:

 * __base__: Base url for the api
 * __api_version__: Default version of the api (to be used in url)
 * __user_agent__: Default user-agent for all requests
 * __headers__: Default headers for all requests
 * __request_type__: Default format of the request body

### Response information

__All the callbacks provided to an api call will recieve the response as shown below__

```ruby
response = client.klass('args').method('args', method_options)

response.code
# >>> 200

response.headers
# >>> {'x-server' => 'apache'}
```

### Method Options

The following options are available while calling a method of an api:

 * __api_version__: Version of the api (to be used in url)
 * __headers__: Headers for the request
 * __query__: Query parameters for the url
 * __body__: Body of the request
 * __request_type__: Format of the request body

### Request body information

Set __request_type__ in options to modify the body accordingly

##### RAW request

When the value is set to __raw__, don't modify the body at all.

```ruby
body = 'username=pksunkara'
# >>> 'username=pksunkara'
```

### Visu api

Returns an MyVisu api instance

The following arguments are required:

 * __key__: The api key provided by Visupedia

```ruby
visu = client.visu("53214f86e2ae54.93050075")
```

##### Query a Visu (GET /api?key=:key&id=:id&lang=:lang&version=:version)

Returns all information about the wanted Visu

The following arguments are required:

 * __id__: The unique ID of the Visu
 * __lang__: The language code wanted for the Visu
 * __version__: Use a specific version of our API

```ruby
response = visu.get("18074f27cb5336.93484109", "fr", "2", options)
```

## Contributors
Here is a list of [Contributors](https://github.com/visupedia/visupedia-api-ruby/contributors)

### TODO

## License
MIT

## Bug Reports
Report [here](https://github.com/visupedia/visupedia-api-ruby/issues).

## Contact
Gaël Gillard (dev@visupedia.net)