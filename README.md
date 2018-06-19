# PointOutUrl

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/point_out_url`. To experiment with that code, run `bin/console` for an interactive prompt.

Specific method to point out url from text and convert url to clickable link for my application.
Use liberal Regex for All URLs to test url from text and ruby build in .gsub method to make url clickable and point out.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'point_out_url'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install point_out_url

## Usage

```ruby
module PagesHelper
  def twitter_parser tweet
    @tweet_url = PointOutUrl::Renderer.text_parser tweet
  end
end
```

<div class="card">
    <%= twitter_parser tweet %>
</div>

Then, you will see all the tweet_text if there include url, will convert clickable url.
Looks like below:
> AaronCuddeback: RT @SheCanCodeHQ: How do you impress a potential employer when you have no professional Coding experience? https://t.co/EGVf1KERPn TechInt...

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/point_out_url. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the PointOutUrl project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/point_out_url/blob/master/CODE_OF_CONDUCT.md).
