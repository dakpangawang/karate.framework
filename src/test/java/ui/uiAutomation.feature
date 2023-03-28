Feature: UI Automation with Karate

Scenario:  Chrome - Connect 

* configure driver = {type: 'chrome', addOptions: '--remote-allow-options=*'}
Given driver 'https://www.toyota.com/'
And input ('#twoabsearchtextbox','iphone14')
And waitFor('#nav-search-submit-button').click()
And wait(500)
And print driver.url