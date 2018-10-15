@Sandbox
Feature: Website availability

@UI
Scenario Outline: Login to sandbox

Given a browser
When the <url> is visited
Then it should be loaded in <loadTime>
