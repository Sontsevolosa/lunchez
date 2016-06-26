# lunchez
Lunches for your company

## Codestyle

* https://github.com/bbatsov/ruby-style-guide
* https://github.com/bbatsov/rails-style-guide

Use `rubocop` to check codestyle.

## Development

Don't make refactoring issues unless it will fix bugs or make easier to
integrate new functionality.

Always include tests with your code.

*Flow:*

* Don't work more than on 2 issues simultaneously
* Merge PR only when local tests green, CI green & reviewed
* Don't make more than 10 simultaneous PR's
* Never commit to master/production directly. Use only PR's
* Use `hub` utility for converting issue to pull-request, e.g. `hub pull-request -i 163`
* Making tasks:

1. Choose the next issue from the closest release by next priority:
  * `hotfix`
  * `bugfix`
  * `high_priority`
  * `low_priority`
  * everything else

2. Assign the issue.

3. Attach `in-progress` label.

4. Create new branch from fresh "master" (or from "production" if label is "hotfix").
   Branch name should start from issue number (e.g. `194-fix-sign-in`)

5. Make commits. Each commit description should start from issue number. (e.g. `#194 Fix user password`)

6. When ready - open pull-request on github.

7. Remove `in-progress` label, and attach `to-verify`

8. Reassign PR to reviewer.

9. When reviewed - rebase with base branch, squash commits and merge.

10. Delete github branch.
