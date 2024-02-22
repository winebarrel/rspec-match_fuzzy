# rspec-match_fuzzy

[![CI](https://github.com/winebarrel/rspec-match_fuzzy/actions/workflows/ci.yml/badge.svg)](https://github.com/winebarrel/rspec-match_fuzzy/actions/workflows/ci.yml)

String matcher to ignore whitespace.

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
require 'rspec/match_fuzzy'

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
