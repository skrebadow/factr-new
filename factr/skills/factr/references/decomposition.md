# Decomposition and allocation

## Product slices versus system allocation

Product decomposition groups work around a useful capability, actor outcome or coherent lifecycle. A slice explains what becomes available and under which constraints; it need not map to one subsystem.

System allocation separates functional responsibility at architecture boundaries. Control, protection, approval and reporting can be different responsibilities without being separately named components or teams.

Product grouping and technical allocation answer different questions and can use different boundaries.

## Decide where a boundary helps

- Already narrow, allocated scope may need refinement rather than further decomposition.
- A connected save-and-reopen lifecycle can form one story with several criteria. Each verb or implementation layer need not become a child.
- A common noun, subsystem, setup, protocol or release label does not make independent workflows one capability.
- Choose hierarchy depth from capability and responsibility boundaries.
- Identify shared constraints and dependencies across slices. An enabling dependency is different from a required execution sequence.

For a finite allocation, show the obligations retained by each child, shared obligations, and the parts left at the parent or still unallocated.

## Illustrative boundary decision

R-1: "Operators may restart Service A without interrupting Service B. Exceptions require a maintenance approver's authorization."

Candidate responsibilities are restart control, protection of Service B and exception authorization. The source supplies those responsibilities, not mechanism names or owning teams. The exception could reach restart permission, interruption of B or another bounded action; authorization alone does not settle its reach.

These responsibilities may form one maintenance capability, while system allocation assigns them to their separate responsibility boundaries.
