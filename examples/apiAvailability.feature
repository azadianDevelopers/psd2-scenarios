@Sandbox
Feature: API Availability

Scenario: Internet Connectivity
Given a browser
When Google is visited
Then it should be loaded

Scenario Outline: Uptime
Given a browser
When the <url> is visited
Then it should be loaded in <loadTime>

Examples:
    | url | loadTime |
    | https://www.google.com | 2000 |
    | https://www.azadian.io | 5000 |
