Feature: Play media files from my computer

  As an A/V enthusiast 
  I want to catalog all my content
  So that I can play it all from one place

  Background:
    Given I select a folder or drive as my library

  Scenario: Play a single song
    When I select a song from my library
    And I press play
    Then I should hear the song play

  Scenario: Play a single video
    When I select a folder
    When I select a video from my library
    And I press play
    Then I should hear and see the video play

