require 'rspec'

RSpec::Matchers.define :match_fuzzy do |expected|
  expected = expected.to_s

  match do |actual|
    actual = actual.to_s
    actual.gsub(/[[:blank:]]+/, '').gsub(/\n+/, "\n") == expected.gsub(/[[:blank:]]+/, '').gsub(/\n+/, "\n")
  end

  failure_message do |actual|
    actual = actual.to_s
    actual_normalized = actual.gsub(/^\s+/, '').gsub(/\s+$/, '').gsub(/[[:blank:]]+/, "\s").gsub(/\n+/, "\n")
    expected_normalized = expected.gsub(/^\s+/, '').gsub(/^\s+$/, '').gsub(/[[:blank:]]+/, "\s").gsub(/\n+/, "\n")

    message = <<-EOS.strip
expected: #{expected_normalized.inspect}
     got: #{actual_normalized.inspect}
    EOS

    diff = RSpec::Expectations.differ.diff(actual_normalized, expected_normalized)

    unless diff.strip.empty?
      diff_label = RSpec::Matchers::ExpectedsForMultipleDiffs::DEFAULT_DIFF_LABEL
      message << "\n\n" << diff_label << diff
    end

    message
  end
end
