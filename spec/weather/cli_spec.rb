# frozen_string_literal: true

RSpec.describe Weather::Cli do
  it 'has a version number' do
    expect(Weather::Cli::VERSION).not_to be nil
  end

  describe '#init' do
    subject { described_class }

    it 'call correctly result method' do
      allow(subject).to receive(:argv).and_return(['-today', 'Gava'])
      expect(subject).to receive(:result).once
      subject.init
    end
  end
end
