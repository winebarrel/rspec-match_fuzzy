describe RSpec::MatchFuzzy do
  include described_class

  context 'when evaluate as erb' do
    it do
      result = erb("<%= @foo %>, <%= @bar %>", foo: 100, bar: 'zoo')
      expect(result).to eq '100, zoo'
    end
  end
end
