require 'spec_helper'

describe UserDecorator do

  let(:first_name) { 'John' }
  let(:last_name)  { 'Smith' }

  let(:user)      { FactoryGirl.build(:user, first_name: first_name, last_name: last_name) }
  let(:decorator) { user.decorate }

  describe '.fullname' do

    context 'without a first name' do

      before { user.first_name = '' }

      it 'should return the last name' do
        expect(decorator.full_name).to eq(last_name)
      end
    end

    context 'with a first and last name' do

      it 'should return the full name' do
        expect(decorator.full_name).to eq("#{ first_name } #{ last_name }")
      end
    end

    context 'without a first or last name' do

      before do
        user.first_name = ''
        user.last_name = ''
      end

      it 'should return no name provided' do
        expect(decorator.full_name).to eq('No name provided.')
      end
    end
  end
end
