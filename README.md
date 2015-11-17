# ViewingNotebook

This gem allows you to create viewings in a notebook, and store notes && images in those viewings.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ViewingNotebook'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ViewingNotebook

## Usage
To interface with the gem, use "ViewingNotebook.(method_call)" to access implemented functionality. It is strongly suggested that you communicate with the app purely through the methods defined in ViewingNotebook.rb. An example is provided below.

Adding a note:
ViewingNotebook.add_viewing('Address goes here')


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/ViewingNotebook.
