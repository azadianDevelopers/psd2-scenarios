@Sandbox
Feature: API Availability


Scenario Outline: Uptime
Given a browser
When the <url> is visited
Then it should be loaded in <loadTime>

