RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
  config.generators do |g|
    g.fixture_replacement :factory_bot, dir: "spec/factories"
  end
end
