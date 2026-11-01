# Backlog refinement

## Choose the granularity

- Epic: a broad capability or lifecycle with several meaningful slices.
- Feature: a cohesive capability with concrete boundaries and completion conditions.
- User story: a narrow actor/outcome slice, or a direct system-capability statement.
- Acceptance criteria: completion commitments at the item's product or responsibility boundary.

These levels describe granularity, not a required parent-to-child chain. An "As a / I want / So that" narrative can express a grounded actor/value relationship; a direct capability statement can express scope that needs no such narrative.

An operator initiating a change and an approver authorizing an exception may warrant separate stories in one feature. Criteria need not each become a story.

## Give the item substantive meaning

Explain the capability in its title, narrative and criteria instead of repeating one requirement across several template fields.

A supplementary source ledger should not be the only place a backlog item's concrete rules appear. If the item becomes generic without its IDs or constraint table, improve its prose instead of replacing known values with "source-defined" or "applicable".

A release or sprint label belongs to planning context rather than the capability or acceptance outcome.

## Retention example

R-12: "Only administrators may change retention from 7 to 30 days inclusive; rejected updates leave the saved value unchanged."

One retention feature can carry these criteria:

- An administrator's accepted update sets saved retention to the submitted value within the inclusive 7-30 day range.
- A non-administrator's update does not change saved retention.
- An update outside the inclusive 7-30 day range does not change saved retention.
- After a rejected update, saved retention is unchanged.

The permission and range constraints do not specify a response for blocked requests. Non-integer validation, an API response code and an audit record also remain separate product details. These criteria can belong to one feature.
