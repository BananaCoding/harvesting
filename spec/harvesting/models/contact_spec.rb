require 'spec_helper'

RSpec.describe Harvesting::Models::Contact, :vcr do
  let(:attrs) { Hash.new }
  let(:contact) { Harvesting::Models::Contact.new(attrs) }

  describe '.new' do
    context 'with client attributes in attrs' do
      let(:contact_id) { '1235' }
      let(:contact_name) { 'Lannister Co' }
      let(:client_attrs) { { "id" => contact_id, "name" => contact_name } }
      let(:attrs) { { "client" => client_attrs } }

      it 'provides access to a client object with the specified attributes' do
        expect(contact.client.id).to eq(contact_id)
        expect(contact.client.name).to eq(contact_name)
      end
    end
  end

end
