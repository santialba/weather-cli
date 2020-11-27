# frozen_string_literal: true

RSpec.describe Weather::Cli::HttpClient do
  describe '#api_request' do
    let(:param) { { test: 'test' } }

    subject { described_class.new(param) }

    it 'check get request' do
      expect_any_instance_of(Faraday::Connection).to receive(:get)
      subject.api_request
    end
  end
end
