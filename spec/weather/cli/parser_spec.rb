# frozen_string_literal: true

RSpec.describe Weather::Cli::Parser do
  subject { described_class }
  before do
    allow(described_class).to receive(:new).and_return(described_class.new('<note>test</note>'))
  end

  describe '#retrieve_id_from_location' do
    it 'call method correctly' do
      call_xpath
      subject.new.retrieve_id_from_location('any_location')
    end
  end

  describe '#max_temperatues' do
    it 'call methods correctly' do
      call_check_city
      call_xpath
      subject.new.max_temperatures
    end
  end

  describe '#min_temperatues' do
    it 'call methods correctly' do
      call_check_city
      call_xpath
      subject.new.min_temperatures
    end
  end

  private

  def call_check_city
    expect(subject.new).to receive(:check_city)
  end

  def call_xpath
    expect_any_instance_of(Nokogiri::XML::Document).to receive(:xpath)
  end
end
