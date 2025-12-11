# Pull Request Template

## Title
Short description of the change. Include the Jira ticket code.

---

## Jira Link
Paste the Jira ticket URL.  
State what the ticket requires in one or two sentences.

---

## Summary of Changes
Describe what the code does, why it was needed, and any architectural notes the reviewer should know.

---

## Checklist Before Requesting Review

- [ ] Jira ticket is in the correct state  
- [ ] Change meets the acceptance criteria  
- [ ] All tests pass locally  
- [ ] New tests added for new or changed behaviour  
- [ ] Manual tests performed where appropriate  
- [ ] Linting and formatting checks run  
- [ ] No debug prints or experimental code left in  
- [ ] API or schema changes documented  
- [ ] Data migrations tested with sample data  
- [ ] Screenshots or examples added for UI changes

---

## Testing Evidence
Explain what you tested, how, and what the outcomes were.  
If this fixes submission or RUN errors, include examples of inputs and outputs.

---

## Reviewer Notes
Highlight anything the reviewer should pay special attention to.  
Mention any technical debt you are aware of but not resolving here.

---

## Review Responsibilities

- Aaliyah’s pull requests: reviewed by Felix or Debby  
- Debby’s pull requests: reviewed by Felix  
- Felix’s pull requests: reviewed by Debby

Confirm the correct reviewer is assigned.

---

## Deployment Notes
Note whether this change requires config updates, migrations, restarts, or downstream updates.

---

## After Approval

- Move the Jira ticket to the next state  
- Ensure the PR is included in release notes if relevant
