# Feature-file presentation

Use this format for requested `.feature` output. The [schema](feature-file.schema.yaml) and [fill-in template](../../../../assets/templates/feature-file.feature) adapt the pinned legacy RENDER schema and Gherkin template.

The schema describes an optional presentation model for tooling or structured requests. A feature file can also be written directly.

## Layout

1. Put supplied source/snapshot and observation-surface notes in header comments, followed by meaningful feature tags when present.
2. Write `Feature: <feature_name>` and its narrative. Include the legacy `Test User Story:` description block only when that narrative is supplied.
3. Render Background only for context genuinely shared by its scenarios.
4. Put supplied scenario tags before `Scenario:` or `Scenario Outline:` and retain the case name and relevant description.
5. Put `# Testable behavior:` and `# Preconditions:` comments immediately before the steps when those details are available. Prefix every line of a multiline comment so it cannot become a Gherkin step.
6. Render Given/When/Then steps and their Doc Strings or data tables. An outline includes its Examples blocks.

Group scenarios by behavior scope; the schema's array describes the rendered blocks. Refer to the existing rendering guidance for step semantics, meaningful variation and binding decisions.

## Field mapping

| Presentation field | File location |
| --- | --- |
| `feature_tags` | `@tag` lines before Feature; omit when absent |
| `feature_name` | Feature declaration |
| `feature_description` | Feature narrative |
| `test_user_story_docstring` | Optional supplied `Test User Story:` description block |
| `source_snapshot_ref` | Source/snapshot header comment |
| `evidence_surface_tags` | Observation-surface header comment |
| `background` | Optional Background steps |
| `scenario_tags`, `scenario_name`, `description` | Scenario tags, declaration and context |
| `behavior_comment` | `# Testable behavior:`; adapted from legacy `fact_comment` |
| `preconditions_comment` | `# Preconditions:`, including material open details |
| `steps` | Gherkin steps and attached literal/table data |
| `kind`, `examples` | Scenario versus Scenario Outline and its Examples blocks |
| `metadata` | Supplied material metadata, retained in comments or a requested accompanying model |

## Adaptation boundary

The legacy `approval_state` and governed `execution_mode` fields are omitted. Feature/story tags, narrative, behavior and precondition comments are optional. The format includes Scenario Outline representation alongside plain scenarios.

Write UTF-8 Gherkin in the requested destination or the task's outputs folder and return links to the saved files. When manual tables and a feature file are both requested, preserve their shared case conditions, data and expected observations.
