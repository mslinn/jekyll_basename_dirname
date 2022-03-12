Jekyll_basename_dirname
[![Gem Version](https://badge.fury.io/rb/jekyll_basename_dirname.svg)](https://badge.fury.io/rb/jekyll_basename_dirname)
===========

This is a Jekyll plugin that provides two Liquid filters: `basename` and `dirname`. They work like the similarly named bash commands.


## Installation

Add this line to your Jekyll website's `Gemfile`, within the `jekyll_plugins` group:

```ruby
group :jekyll_plugins do
  gem 'jekyll_basename_dirname'
end
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install jekyll_basename_dirname


## Usage

### Basename
Filters a string containing a path and returns the filename extracted from the path, including the filetype.

Example: Extracts "filename.ext" from the path:
```
{{ "blah/blah/filename.ext" | basename }}
```

### Dirname

Filters a string containing a path and returns the portion of th path before the filename and extension.
Example: Extracts "blah/blah" from the path.
```
{{ "blah/blah/filename.ext" | dirname }}
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mslinn/jekyll_basename_dirname.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
