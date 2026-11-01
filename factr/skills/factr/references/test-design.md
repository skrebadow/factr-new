# Test case and procedure design

## Assess procedure completeness

Separate a missing behavioral decision, a missing instruction for performing or reading the test, and a missing automation binding or fixture. Place consequential gaps beside the affected setup, action or observation, before apparently complete procedure steps.

A complete manual procedure can still lack machine-accessible actions, observations or runner configuration.

## Choose conditions and data

Select representative boundaries, input classes, permissions, lifecycle changes and interactions for the behavior's supplied domain.

For an integer-only 0-100 inclusive acceptance rule, -1, 0, 100 and 101 exercise the bounds and adjacent rejected classes. This selection does not add a non-integer input rule.

Keep preparation, stimulus and result-reading steps distinct. Submitting input is an action; acceptance or rejection is its expected result.

## Make the procedure repeatable

Include the relevant target/access, initial state, concrete data, ordered preparation and stimulus, result-reading method, capture and necessary reset or cleanup.

Replace generic "submit" or "verify" with the relevant operation or reading method. An unavailable operation remains a precise open instruction beside its step.

For repeated cases, make the varied input or context explicit and establish the initial state needed for each comparison. Reset changed state when repeatability requires it.

## Review an existing procedure

Compare the action and result-reading method with the decision or state change the case should challenge. An acknowledgement-only check may need a stored-value read or downstream disposition comparison to address the intended procedure.
