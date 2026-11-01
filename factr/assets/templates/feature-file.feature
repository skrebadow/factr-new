# Fill-in template. Replace placeholders and omit optional sections when absent.
# Optional source/snapshot: <source_snapshot_ref>
# Optional observation surfaces: <evidence_surface_tags>
@<feature_tag>
Feature: <feature_name>
  """
  Test User Story: <supplied test_user_story_docstring>
  """

  # Optional Background: retain only genuinely shared setup.
  Background:
    Given <shared precondition>

  @<scenario_tag>
  Scenario: <scenario_name>
    # Testable behavior: <behavior_comment>
    # Preconditions: <preconditions_comment>
    Given <case context>
    When <stimulus>
    Then <expected observable outcome>
