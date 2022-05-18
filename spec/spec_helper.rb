require "capybara"  #Adicionando dependencias aqui
require "capybara/rspec"
require "selenium-webdriver"

RSpec.configure do |config|

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.include Capybara::DSL #Configuração para que o rspec reconheça os metodos do capybara

end

Capybara.configure do |config| 
  config.default_driver = :selenium_chrome #Se deixar somente :selenium, ele utilizará o Firefox
  config.default_max_wait_time = 5
end
