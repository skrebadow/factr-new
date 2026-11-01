# Markdown manual-test tables

The default layout for test cases and procedures when no alternative format is requested. It is Markdown presentation, not a Zephyr import file or integration.

## Case layout

Use a separate heading and table for each case. Above the table, put the case title, any supplied case or requirement identifiers, and source links. Source metadata has no extra table column.

The table has exactly three columns, in this order: **Step**, **Test Data**, **Expected Result**.

Map the case's setup, actions, checks, capture and reset instructions to rows in their existing sequence. Put the instruction in Step, its data or fixture reference in Test Data, and its expected observation in Expected Result. A setup or action can have an expected observation in the same row. Place the entry's preferred Given/When/Then wording in Step. Numbered illustrative steps also occupy Step, without an extra numbering column.

Keep case-level preconditions, material notes and existing result records outside the three-column procedure table. Expected Result holds the expectation, not a supplied actual-result record.

## Cell representation

Use `-` for an inapplicable cell. For a necessary unknown, write `Unresolved: <missing detail>` in the affected cell; do not turn the gap into `-` or a blank. Below the table, identify the affected row and missing detail, plus any supplied resolving source or inspection. Omit the gap note when none remains.

Escape literal pipes as `\|`, including pipes inside inline code spans. Use `<br>` for line breaks within a cell so a multiline value does not create another table row. Escape literal markup when it is data rather than formatting, and preserve literal backslashes through Markdown escaping. Keep values, units and Unicode text readable in the rendered cell.

## Layout example

The placeholders illustrate cell placement, not required inputs or a fixed row count.

~~~markdown
### <Case title>

<Supplied identifiers and source links, when present>

| Step | Test Data | Expected Result |
| --- | --- | --- |
| Given <setup instruction> | <Setup data or -> | <Setup observation or -> |
| When <action instruction> | <Action data or -> | <Expected observation or -> |
| Then <check instruction> | <Comparison data or -> | <Expected observation> |

<Material unresolved execution details, when present>
~~~
