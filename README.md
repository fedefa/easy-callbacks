# EasyCallbacks

Easy example of how to implement callbacks for ruby regular methods. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'easy_callbacks'
```

## Usage

Let´s take TDD flow as an example.

In TDD, you write your unit test first, watch it fail, and then implement code changes until the test passes.

```ruby
require 'easy_callbacks'

class TDD
  def code
    puts 'Write the best code!'
  end
end
```
You can be sure to implement it well declaring the steps in this way:

```ruby
  before_code :write_a_test
  around_code :drink_coffee
  after_code :clean_code_and_iterate

  def write_a_test
    puts 'Make it fail'
  end

  def drink_coffee
    yield
    puts 'Drink coffee'
  end

  def clean_code_and_iterate
    puts 'Refactor'
  end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).