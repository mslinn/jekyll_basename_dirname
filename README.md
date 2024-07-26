# Jekyll_basename_dirname [![Gem Version](https://badge.fury.io/rb/jekyll_basename_dirname.svg)](https://badge.fury.io/rb/jekyll_basename_dirname)

This is a Jekyll plugin that provides the following Liquid filters:
`basename`, `basename_without_extension`, `dirname` and `wbr`.

`basename` and `dirname` work like the similarly named bash commands.
`basename_without_extension` does what you might expect.

`wbr` Adds a <wbr> element after every "/" character in a string;
this causes strings containing long paths to wrap in an HTML page.

More information is available on Mike Slinn's web site about [my Jekyll plugins](https://www.mslinn.com/blog/2020/10/03/jekyll-plugins.html).


## Installation

### As a Jekyll Filter Plugin

If you want to use this Ruby gem in a Jekyll application,
add the following line to your application's `Gemfile`:

```ruby
group :jekyll_plugins do
  gem 'jekyll_basename_dirname'
end
```

And then install in the usual fashion:

```shell
$ bundle
```


### As a Dependency Of a Gem

Add the following line to your application's `.gemspec`:

```ruby
spec.add_dependency 'jekyll_basename_dirname'
```

And then install the dependencies in the usual fashion:

```shell
$ bundle
```


### As a Ruby Module In a Ruby Program

Add the following line to your application's `Gemfile`:

```ruby
gem 'jekyll_basename_dirname'
```

And then install the dependencies in the usual fashion:

```shell
$ bundle
```


## Usage

### Dirname

Filters a string containing a path and returns the portion of th path before the filename and extension.
Example: Extracts "blah/blah" from the path.

```html
{{ "blah/blah/filename.ext" | dirname }} => blah/blah
```


### Basename

Filters a string containing a path and returns the filename extracted from the path, including the filetype.

Example: Extracts "filename.ext" from the path:

```html
{{ "blah/blah/filename.ext" | basename }} => filename.ext
```


### Basename Without Extension

Filters a string containing a path and returns the filename extracted from the path, including the filetype.

Example: Extracts "filename.ext" from the path:

```html
{{ "blah/blah/filename.ext" | basename_without_extension  }} => filename
```


### wbr

Filters a string containing a path so long paths wrap in an HTML page.

Example:

```html
{{ 'blah/blah/filename.ext' | wbr }} => blah/<wbr>/blah/<wbr>filename.ext
```


## Development

After checking out the repo, run `bin/setup` to install dependencies.
You can also run `bin/console` for an interactive prompt that will allow you to experiment.

Install development dependencies like this:

```shell
$ BUNDLE_WITH="development" bundle install
```

To install this gem onto your local machine, run:

```shell
$ bundle exec rake install
```

To release a new version,

  1. Update the version number in `version.rb`.
  2. Commit all changes to git; if you don't the next step might fail with an unexplainable error message.
  3. Run the following:

     ```shell
     $ bundle exec rake release
     ```

     The above creates a git tag for the version, commits the created tag,
     and pushes the new `.gem` file to [RubyGems.org](https://rubygems.org).


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mslinn/jekyll_basename_dirname.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
