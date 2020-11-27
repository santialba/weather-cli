# Weather::Cli

Welcome to your weather-cli gem!



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'weather-cli'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install weather-cli

## Usage
*Important Note*  To make it work you need to write your credentials in the `.env` file

Usage:  weather-cli [options] [location]
	-today	Temperature of the day
	-av_max	Average of the maximum temperature during the week
	-av_min	Average of the minimum temperature during the week


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/weather-cli.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
