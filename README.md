# FACTR

## What is FACTR?

FACTR is a Codex plugin for turning engineering context into clear behavioral requirements, acceptance criteria, tests and traceability reports.

Its foundation is behavioral falsifiability: describe expected behavior clearly enough that an observable result could challenge it. FACTR connects conclusions to their sources and makes material assumptions, competing interpretations and missing information visible. You can start with requirements, notes, code, existing cases or observations and ask directly for the result you need.

## What the plugin packages

- One [FACTR entry skill](factr/skills/factr/SKILL.md) for the supported workflows.
- An exact, pinned [Core reasoning contract](factr/skills/factr/references/core/contract.md), with a [formal verification profile](factr/skills/factr/references/core/references/formal-verification.md) used when the requested conclusion needs it.
- Task-specific references for understanding, assertions, decomposition, backlog refinement, planning, test design, discovery, rendering and traceability.
- A [Markdown manual-test table format](factr/skills/factr/references/formats/manual-test-table.md) and a [feature-file schema](factr/skills/factr/references/formats/feature-file.schema.yaml) with a [Gherkin template](factr/assets/templates/feature-file.feature).
- Codex display metadata and icons, version records, and [Core](factr/core-provenance.json) and [capability](factr/capability-provenance.json) provenance records identifying the bundled sources.


## What you get in Codex

After installation, FACTR is available as one skill in new chats or CLI sessions. Its entry skill directs Codex to use Core and the references relevant to your request.

Ask for the outcome you want. A direct case request can start from the context you provide; it does not require an approved FACT Set or a completed sequence of stages. Results can be delivered in chat or saved as files when requested.

After selecting FACTR, try:

```text
Decompose these notes into features and stories with concrete acceptance criteria.

Design a test case for these requirements. Give me a Markdown manual-test
table and a matching .feature file.

Show which tests depend on this revised requirement and what needs reassessment.
```

## Plugin capabilities

| Capability | What FACTR helps you produce |
| --- | --- |
| [Source understanding](factr/skills/factr/references/understanding.md) | Interpretations, contradictions, alternative readings and material questions. |
| [Behavioral assertions](factr/skills/factr/references/assertions.md) | Concrete behavioral assertions and observations that could challenge them. |
| [Scope decomposition](factr/skills/factr/references/decomposition.md) | Coherent capability slices and allocation of system responsibilities. |
| [Backlog refinement](factr/skills/factr/references/shaping.md) | Epics, features, stories and observable acceptance criteria. |
| [Planning assessment](factr/skills/factr/references/planning.md) | Dependencies, priorities, missing planning inputs and source-grounded group risks. |
| [Test design](factr/skills/factr/references/test-design.md) | Actionable cases with setup, actions, test data, expected observations and cleanup needs. |
| [Targeted discovery](factr/skills/factr/references/discovery.md) | Findings from available code, interfaces and test libraries that resolve procedure or binding gaps. |
| [Manual-test tables](factr/skills/factr/references/formats/manual-test-table.md) | Markdown cases for review and sharing, with Step, Test Data and Expected Result columns. |
| [Gherkin and supported automation](factr/skills/factr/references/rendering.md) | Gherkin scenarios, saved .feature files, compatible step bindings and delivery checks for the selected tooling. |
| [Traceability and reuse](factr/skills/factr/references/traceability.md) | Source and evidence coverage, visible gaps, and revision-impact assessments for dependent outputs and reused work. |

Tests prefer **Given/When/Then** wording; numbered steps are also available for illustrative examples. A requested `.feature` file follows the bundled presentation format and does not require a runner choice. Ask for both formats to preserve the same case conditions, data and expected observations.

Test design, file generation, binding checks, actual execution results and acceptance decisions are reported separately. Executing automation requires the appropriate project tooling and authorization; formal acceptance requires the applicable evidence.

## Installation

You need Git, Bitbucket access (corporate network/VPN if required), and [Codex CLI](https://developers.openai.com/codex/cli) for marketplace registration. Install through a signed-in Codex desktop app or CLI. FACTR requires no build or additional runtime dependencies, and its bundled guidance needs no separate Core, Agile or Test installation.

### 1. Register the marketplace

For the published Bitbucket version, run in PowerShell from your projects directory:

```powershell
git clone "https://lnsvr0329.gcsd.harris.com:8443/bitbucket/scm/factr/factr-plugin.git" factr
Set-Location -LiteralPath .\factr
codex plugin marketplace add .
```

Already cloned, or installing a local development checkout? Enter its repository root and run only:

```powershell
codex plugin marketplace add .
```

The [marketplace catalog](.agents/plugins/marketplace.json) is at the repository root and points to the plugin in `factr/`. Register the repository root.

Alternatively, register Bitbucket directly without a local checkout:

```powershell
codex plugin marketplace add "https://lnsvr0329.gcsd.harris.com:8443/bitbucket/scm/factr/factr-plugin.git"
```

The Bitbucket routes use the repository's default branch. To use edits that have not been committed and pushed, register the existing local checkout. Choose the intended source for the `factr-marketplace` identity.

### 2. Install and enable

**Desktop:** Open the local checkout as a project if applicable. Restart the app, open **Plugins**, select the **FACTR** marketplace, and install and enable **FACTR**.

**CLI:** Launch Codex:

```powershell
codex
```

Inside the interactive session, enter:

```text
/plugins
```

Select the **FACTR** marketplace (`factr-marketplace`), install its plugin, and ensure it is enabled. Use the plugin browser's enable control if it is installed but disabled.

### 3. Start using FACTR

Start a **new chat or CLI session** after installation. Confirm the plugin browser shows FACTR installed and enabled.

- **Desktop:** Type `@` in the composer and select the FACTR plugin or its bundled skill.
- **CLI:** Enter `/skills`, or type `$` and select the installed `factr` skill from the selector.

Then provide your context and requested output, for example:

```text
Design a test case from this description. Keep material assumptions visible.
Return a Markdown manual-test table and save a matching .feature file.
```

### Updates and troubleshooting

For a local checkout connected to Bitbucket, enter its repository root and update it first:

```powershell
git pull --ff-only
```

Refresh the registered marketplace after pulling changes or editing the registered local checkout. The same command refreshes a directly registered Git source:

```powershell
codex plugin marketplace upgrade factr-marketplace
```

Restart the app or CLI and start a new session. Confirm FACTR is still installed and enabled.

- **Marketplace missing:** Verify the registered root contains `.agents/plugins/marketplace.json`. For the Bitbucket checkout, register the repository root that contains `factr/`.
- **Registration commands unavailable:** Update [Codex CLI](https://developers.openai.com/codex/cli) and check `codex plugin marketplace --help`.
- **Bitbucket access fails:** Check repository permissions and corporate network/VPN access.
- **Skill missing after installation or refresh:** Confirm FACTR is installed and enabled, then restart the host and open a new chat or CLI session.
- **Installation blocked by workspace policy:** Check the allowed marketplace sources with your workspace administrator; see the official [plugin guide](https://learn.chatgpt.com/docs/plugins) and [marketplace configuration reference](https://learn.chatgpt.com/docs/config-file/config-reference).

Plugin installation is supported in the Codex desktop app and CLI. The IDE extension supports standalone skills.

See [release notes](RELEASE_NOTES.md) for version history and [compatibility decisions](docs/migration/architecture-and-compatibility.md) for upgrade and command changes.
