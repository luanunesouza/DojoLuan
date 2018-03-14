#sobe em memória as gens informadas
require 'rspec'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'

#configurando o driver capybara
Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#Setando a configuração do driver como padrão
Capybara.default_driver = :selenium

#timout a configuração driver padrão
Capybara.default_max_wait_time = 15

#Maximizar a tela ao iniciar o teste
Capybara.page.driver.browser.manage.window.maximize