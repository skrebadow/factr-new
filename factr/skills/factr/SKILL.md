---
name: factr
description: Reason about engineering behavior, acceptance criteria, test cases, and source traceability using falsifiable assertions and bounded inference. Use for FACTR requests and behavioral requirements or test analysis.
---

# FACTR

One entry skill using FACTR Core's pinned behavioral reasoning contract. Read [the bundled Core contract](references/core/contract.md) once when applying FACTR; reuse it when already available and unchanged. It owns assertion anatomy, falsifiers, source support, inference, evidence, traceability, revisions, and formal acceptance. Capability references add task-specific guidance; Core governs shared reasoning and takes precedence if that guidance conflicts.

## Enter at the requested outcome

Use available descriptions, requirements, notes, criteria, code, cases, and observations directly. Deliver the requested understanding, assertion, backlog, assessment, test, automation draft, or traceability result. Combine capabilities only when the request needs them. No stage selection, ORCHESTRATE preflight, approved FACT Set, Understanding Map, or intermediate artifact is required to begin useful work.

- For source understanding, alternative interpretations, contradictions, or a material perspective question, read [understanding.md](references/understanding.md).
- For deriving, revising, or challenging behavioral assertions, read [assertions.md](references/assertions.md). Read understanding guidance as well only when material competing meanings affect those assertions.
- For product decomposition or system responsibility allocation, read [decomposition.md](references/decomposition.md).
- For epics, features, stories, or acceptance criteria, read [shaping.md](references/shaping.md). Combined decomposition and refinement uses both F04 references; a direct story does not require decomposition or a separate assertion set.
- For planning dependencies, planning assessment, prioritization, or source-grounded group risk, read [planning.md](references/planning.md). Use case guidance as well only when the request includes test design or coverage review; ordinary case requests do not require a planning assessment.
- For a case, procedure, or behavioral coverage assessment, read [test-design.md](references/test-design.md). When producing test cases or procedures, also read [manual-test-table.md](references/formats/manual-test-table.md) and use its layout by default unless the user requests another format. A clear direct-case request uses Core, case guidance and the default table reference without first generating an assertion set or loading both F03 references. Coverage review or test-design discussion without case output does not need the table reference.
- For a requested Markdown manual-test table, read [manual-test-table.md](references/formats/manual-test-table.md). Add case guidance only when procedure design or review is requested; formatting an existing case needs only Core and the table reference. The table format does not select a runner or require an installed FACTR Test plugin.
- For targeted source/interface inspection, discovery findings, or missing procedure/binding details that require inspection, read [discovery.md](references/discovery.md). A discovery-only request uses it directly; complete case context does not require discovery or planning.
- For Gherkin, a `.feature` file, supported automation, reusable step bindings, or delivery-readiness review, read [rendering.md](references/rendering.md). Gherkin-only output needs no language/tool interview. Add case design only when a procedure needs design, and discovery only when material inspection is needed.
- For source-to-output allocation, traceability reports, evidence-coverage mapping, or revision-impact/reuse assessment, read [traceability.md](references/traceability.md). Add case guidance only when actual procedure coverage needs review or design; ordinary allocation does not require a test artifact.

Use multiple references only when the requested work needs their capabilities. Other engineering requests use Core directly. Test cases and procedures default to Markdown manual-test tables. Honor an explicit alternative format, including Gherkin or `.feature` output; add a table to those outputs only when both formats are requested. When both are requested, deliver both formats from the same case basis. Further export tooling remains migration work; do not claim the legacy runtime or its exports are present. Backlog work produces the requested items and acceptance conditions; test procedures, automation and tracker writes are separate requested outcomes.

Core links its own formal profile. Read that profile only for compliance, certification, formal baseline acceptance, or definitive verification. Missing formal evidence limits that conclusion while supported provisional work continues.

## Deliver and qualify

Prefer Given/When/Then wording in the Step column when writing default test tables; do not use separate Given/When/Then headings with bullets for those cases. Numbered steps are acceptable for illustrative examples.

Use the requested format and plain engineering language. Keep material conditions, source values, units, exceptions, assumptions, and trace links in the result. Distinguish a designed case, rendered scenario, supported binding, actual execution record, and accepted baseline. Preserve supplied approval history without inventing new approval. Installation or accepted behavior does not authorize external execution.

For saved or repeated work, retain material bases, source locators and revision impacts durably. Default to chat when a file would add no value. Load no legacy runtime policies, stage schemas, pack registries, development validators or evaluation material during ordinary reasoning.
