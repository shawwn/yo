require 'swagger_helper'

describe 'Yo API' do

  path '/yo.json' do

    get 'Says yo.' do
      tags 'Yo'
      produces 'application/json'
      parameter name: :name, in: :query, type: :string

      response '200', 'Yo' do

        schema type: :object,
          properties: {
            code: { type: :integer },
            status: { type: :string },
            message: { type: :string }
          },
          required: [ 'code', 'status', 'message' ]

        examples 'application/json' => {
            code: 200,
            status: "ok",
            message: "yo"
          }

        after do |example|
          example.metadata[:response][:examples] = { 'application/json' => JSON.parse(response.body, symbolize_names: true) }
        end

        let(:name) { "ed" }

        run_test!
      end

      # response '500', 'invalid request' do
      #   run_test!
      # end
    end
  end

end
