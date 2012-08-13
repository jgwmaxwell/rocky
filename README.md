# Rocky

Rocky is a slugger, it's what he does, it's what he knows.

## Installation

Add this line to your application's Gemfile:

    gem 'rocky'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rocky

## Usage

Once you've installed it in your Gemfile, just run the following in your models to get all the functionality.

```ruby
extend Rocky # or include, whichever you prefer
rocky :title, column: :slug
```

More info coming soon, including delayed execution of permalink building, auto failover to UUID/ObjectId and more.

## Contributing

Contributions are always welcome, so git yer fork on! Yep, I know, I'm a funny guy.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
