require 'rails_helper'

RSpec.describe 'Services' do
  describe 'POST /api/v1/convert' do
    context 'json is provided' do
      context 'single root json' do
        let(:str) { { person: { id: 1, name: 'John Doe' } }.to_json }

        it 'converts to XML successfully' do
          post '/api/v1/convert', params: { json: str }

          expect(response).to be_ok
          expect(response.body.strip).to eq(xml_response.strip)
        end
      end

      context 'multi-root' do
        let(:str) { { x: 1, person: 2 }.to_json }

        it 'renders multi root error' do
          post '/api/v1/convert', params: { json: str }

          expect(response.code).to eq('422')
          expect(json['errors'][0]).to eq('XML cannot have multiple root objects!')
        end
      end
    end
  end

  def xml_response
    <<~XML
      <?xml version="1.0" encoding="UTF-8"?>
      <person>
        <id type="integer">1</id>
        <name>John Doe</name>
      </person>
    XML
  end
end
