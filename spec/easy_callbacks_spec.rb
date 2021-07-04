# frozen_string_literal: true

require 'support/tdd'

RSpec.describe EasyCallbacks do
  describe 'class ancestor' do
    let(:first_ancestor) { TDD.ancestors.first }
    it 'decorated class must include the anonymous ancestors' do
      expect(first_ancestor.class).to eq(Module)
    end
    it 'decorated class methods must include perform' do
      expect(first_ancestor.instance_methods(false)).to include(:code)
    end
  end

  describe 'callbacks' do
    it 'callbacks must be called in the declared order' do
      foo = TDD.new
      expect(foo).to receive(:write_a_test).ordered
      expect(foo).to receive(:drink_coffee).ordered
      expect(foo).to receive(:clean_code_and_iterate).ordered
      foo.code
    end
  end

  describe 'gem version' do
    it 'gem must has a version number' do
      expect(EasyCallbacks::VERSION).not_to be nil
    end
  end
end
