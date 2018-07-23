# XML <-> JSON Service

## Tech stack
- Ruby 2.5.0
- Rails 5.2.0
- nix based OS

## Setting up
- `bundle install`
- `rails s`

## Testing
- For automated tests `rspec`
- For manually testing, there is one endpoint `POST http://localhost:3000/api/v1/convert`
  - You can send `json` param to get it converted to `xml`
  - And `xml` param to get json in response

- `api.postman_collection.json` is available at project root to test via [Postman](https://www.getpostman.com/)
- Also this app is deployed at [Heroku](https://damp-cove-74333.herokuapp.com/)
