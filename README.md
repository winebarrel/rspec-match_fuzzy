# rspec-match_fuzzy

String matcher to ignore whitespace.

[![Build Status](https://travis-ci.org/winebarrel/rspec-match_fuzzy.svg?branch=master)](https://travis-ci.org/winebarrel/rspec-match_fuzzy)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec-match_fuzzy'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-match_fuzzy

## Usage

```ruby
it '...' do
  str1 = <<-EOS
    London Bridge
    Is Broken down,
    Dance over my Lady Lee.
    London Bridge
    Is Broken down
    With a gay Lady.
  EOS

  str2 = <<-EOS
    London  Bridge
    Is  Broken  down,

    Dance over my Lady Lee.


    London\tBridge
    Is\tBroken\tdown
    With a gay Lady.
  EOS

  expect(str1).to match_fuzzy str2
end
```

### Use ERB

```ruby
include RSpec::MatchFuzzy

it '...' do
  result = erb("<%= @foo %>, <%= @bar %>", foo: 100, bar: 'zoo')
  expect(result).to match_fuzzy '100, zoo'
end
```
