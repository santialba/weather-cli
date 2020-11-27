# frozen_string_literal: true

RSpec.describe Weather::Cli::Menu do
  describe '#prompt' do
    let(:args) { ['-today', 'Aiguafreda'] }
    subject { described_class.new(args) }

    context 'correct arguments' do
      it 'return correct options' do
        expect(subject.prompt).to eq({ '-today' => true, 'location' => 'Aiguafreda' })
      end
    end

    context 'incorrect arguments' do
      let(:args) { [] }
      it 'show help case' do
        expect(subject).to receive(:show_help)
        subject.prompt
      end
    end
  end
end
