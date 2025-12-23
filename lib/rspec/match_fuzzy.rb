# frozen_string_literal: true

require 'rspec'

RSpec::Matchers.define :match_fuzzy do |expected|
  scrub = lambda { |s|
    s.strip.gsub(/^\s+/, '').gsub(/[[:blank:]]+/, "\s").gsub(/\n+/, "\n").gsub(/\s+$/, '')
  }

  expected = expected.to_s
  match do |actual|
    actual = actual.to_s
    scrub[actual] == scrub[expected]
  end

  failure_message do |actual|
    actual_normalized = scrub[actual.to_s]
    expected_normalized = scrub[expected]

    message = <<~EOS.strip
      expected: #{expected_normalized.inspect}
           got: #{actual_normalized.inspect}
    EOS

    diff = RSpec::Expectations.differ.diff(actual_normalized, expected_normalized)

    message << "\n\n" << 'Diff:' << diff unless diff.strip.empty?

    message
  end
end
