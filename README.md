EmbedMedia
----
[![Gem](https://img.shields.io/gem/v/embed_media.svg?style=flat-square)](https://rubygems.org/gems/embed_media)
[![GitHub license](https://img.shields.io/github/license/fuyuno/embed_media.svg?style=flat-square)](LICENSE)

This gem provide helper method for embed media.  
Support embedded medias are:

* YouTube (Video)
* Vimeo (Video)
* Vine (Video)
* Niconico (Video Info)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'embed_media'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install embed_media

## Usage

#### Basic usage
```haml
-# contents
= media("https://www.youtube.com/watch?v=kfvxmEuC7bU")
```

#### Options
```haml
-# contents
= media("https://www.youtube.com/watch?v=kfvxmEuC7bU", width: 520, height: 200)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/fuyuno]/embed_media.

