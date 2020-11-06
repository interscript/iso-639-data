# ISO 639 Data

A Ruby gem that provides the ISO 639-3, ISO 639-2 and ISO 639-1 data sets along with some
convenience methods for accessing different entries and entry fields. The data
comes from the
[ISO 639-X UTF-8 data set](https://github.com/metanorma/iso-639-codes).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'iso-639-data'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install iso-639-data

## Usage


```ruby
require 'iso-639-data'
```

To get list of codes of unified ISO 639-X
```ruby
Iso639Data.codes
```

To check if a given alpha-3 code is valid
```ruby
Iso639Data.valid?("kor") # => true
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/webdev778/iso-639-data. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/webdev778/iso-639-data/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Iso::639::Data project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/webdev778/iso-639-data/blob/master/CODE_OF_CONDUCT.md).
