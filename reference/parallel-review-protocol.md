# Parallel Review Protocol

Rules for OPC domain collaboration. Goal: cross-reference without slowing execution.

## 1. Advisory Only

Domains output opinions. They do not:

- Expand scope beyond the Ticket goal
- Request a second meeting or another planning round
- Block execution unless severity is `CRITICAL`

## 2. Severity Levels

| Level | Meaning | Blocks ship? |
|-------|---------|--------------|
| `CRITICAL` | Security flaw, data loss risk, major brand conflict | Yes |
| `SUGGESTION` | Worth doing; record in Ticket | No |
| `NIT` | Style or minor polish | No |

## 3. Output Limits

- Max **3 bullets per domain** per Ticket
- Excess items → merge or move to `deferred` in orchestrator Decision
- No domain may reply to another domain's bullets (no debate loops)

## 4. Single Decision Maker

`opc-os` merges all advisory passes and outputs:

- `ship_path` — what ships now
- `deferred` — parked for later
- `next_action` — one concrete step

## 5. Timeboxing

1. Complete PLAN MODE before coding (unless user says "skip plan" or trivial fix)
2. Run parallel advisory in the same turn as the plan (not a separate session)
3. Execute immediately after Decision unless `CRITICAL` blockers exist

## 6. Advisory Format

```markdown
### {domain_name}
- [CRITICAL] ...
- [SUGGESTION] ...
- [NIT] ...
```

Omit empty domains. Do not pad to three bullets.

## 7. When to Invoke Which Domain

See [SKILL-GRAPH.md](SKILL-GRAPH.md). Router lives in `opc-os/SKILL.md`.

## 8. Anti-Patterns

| Bad | Good |
|-----|------|
| Sequential role-play ("now I am QA...") | Parallel bullets under each domain heading |
| Re-opening PLAN after advisory | Fix CRITICAL only; defer the rest |
| Every domain must comment | Invoke only relevant domains |
| 10 suggestions per domain | Hard cap at 3 |
