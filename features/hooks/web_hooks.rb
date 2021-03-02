require_relative '../support/report_helper.rb'

Before '@web' do | scenario |
    
    visit 'https://app.smarttbot.com'
    Capybara.page.driver.browser.manage.window.maximize

end

After '@web' do |scenario|

    if scenario.failed?
        ReportHelper.register_screenshot "erro: " + scenario.name.gsub(/\s+/, '_').tr('/', '_')
    end

end