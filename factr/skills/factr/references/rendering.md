# Gherkin and supported automation

## Select a compatible target

For target-specific code, use the supplied language/tool choices and inspect relevant project tooling for compatibility. Tooling alone is not the user's preference. Preserve a partially supplied choice and recommend a compatible missing part.

When the target is unspecified, recommend a suitable stack. Python/Behave is the fallback when no supplied preference or compatibility constraint selects another target; label it as a choice. Gherkin or `.feature`-only output needs no programming-language or runner decision.

A straightforward shell or PowerShell check can cover supported commands, result checks and necessary cleanup without adding a Gherkin runner. Small code size alone does not make that approach suitable for browser interaction or specialized fixtures.

## Render the scenario meaning

Given establishes relevant context, When performs the stimulus or observation action, and Then checks the expected result. An expected result does not belong in setup as an already established condition.

Use Background for genuinely shared context. Use Scenario Outline and Examples for meaningful data variation, pairing each parameter with its role and expected result. One row represents one combination, not a Cartesian product.

Keep business vocabulary stable and put transport, selectors and implementation mechanics in bindings. Parameterize the same action or observation; similar wording does not make steps equivalent when their preconditions or result interpretations differ.

When representing trace anchors as tags, use valid Gherkin tag syntax; locators with spaces or punctuation can remain in comments.

## Deliver a .feature file

For requested file output, read [feature-file.md](formats/feature-file.md) for the adapted legacy schema, template and layout. Use the requested destination or the task outputs folder and return links to the files written.

## Inspect binding implementation

Inspect step libraries, interfaces, fixtures, dependencies and target configuration when actual bindings are needed. Identify the operation and parameters behind each business step and reuse compatible vocabulary and logical resource identifiers.

Separate an unknown operation from a known operation missing a step definition or runner configuration. Inspect implementations rather than accepting a placeholder mapping: a definition that only raises an unimplemented error can still match during a dry run.

Keep fixture setup and reset consistent across repeated examples. Polling and retry limits follow the target's supported observation contract; a retry must not conceal a failed condition.

## Check the rendered delivery

Use an available parser when practical to check Gherkin syntax. Inspect step resolution or use the selected runner's dry run, including ambiguity and undefined-step results.

Report the parser/matching checks performed, unresolved steps or target configuration, and any actual run record separately. A dry run may match a stub without executing its body; syntax and matching therefore do not establish implemented or executed behavior.
