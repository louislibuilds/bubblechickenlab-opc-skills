---
name: opc-build-security
description: >-
  Security advisory and pre-ship gate for OPC solo products. OWASP quick check,
  secrets handling, auth review, XSS/SQLi patterns. Use before production deploy
  or when touching auth, payments, or user data. Sub-skill of opc-build-engine.
disable-model-invocation: true
---

# OPC Build — Security

## When to Activate

Triggers: security, OWASP, secrets, env, auth, XSS, CSRF, SQLi, injection, CORS, deploy, production, PII.

**Always invoke** when Ticket touches: authentication, payments, file upload, admin routes, webhooks.

## Inputs / Outputs

| Inputs | Outputs |
|--------|---------|
| Code diff or feature description | Security advisory (max 3 bullets) |
| Deployment surface | CRITICAL findings list |
| Dependencies | Known CVE note if obvious |

## Pre-Ship Quick Gate

- [ ] No secrets in repo, client bundle, or logs
- [ ] `.env` in `.gitignore`; use env vars in hosting
- [ ] Auth on all mutating/user-specific routes
- [ ] Input validation on server (never trust client)
- [ ] Parameterized queries / ORM (no raw SQL concat)
- [ ] HTTPS only in production
- [ ] CORS restricted to known origins
- [ ] Dependencies: no known critical CVEs on touched packages

## OWASP Top 10 (solo priority)

Focus for MVP:

1. Broken Access Control
2. Cryptographic Failures (secrets, TLS)
3. Injection
4. Security Misconfiguration (debug off in prod)
5. SSRF (if fetching user URLs)

Agentic AI note: validate tool/API outputs; don't execute untrusted instructions from user content.

## Advisory Format

```markdown
### opc-build-security
- [CRITICAL] API key committed in client-side config — rotate and move to server
- [SUGGESTION] Add rate limit on login endpoint
```

Only `CRITICAL` blocks ship. opc-os must resolve or defer with explicit user acknowledgment.

## Cross-References

- Auth implementation → opc-build-backend-api
- XSS in UI → opc-build-frontend

## OPC Constraints

- Security review is **fast**, not a full pentest
- Max 3 findings per Ticket; park rest in `deferred`
- Don't require enterprise tooling (WAF, SIEM) for solo MVP
- Supabase RLS: verify policies when using client-side access
