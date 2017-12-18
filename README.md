# Klassnames

View helper to simplify conditional class in view.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'klassnames'
```

## Usage

```
  div(class=classnames("one", "two", three: true))
  => <div class="one two three"></div>
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
