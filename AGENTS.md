# Development setup

Run `bash scripts/setup.sh` in each fresh clone or worktree. Dependencies belong
in that checkout and are installed from the existing lockfile. Setup leaves
credentials, existing data and persistent services alone.

Run the Check action in `t3.json` for the repository's verification commands.
Import the repository actions in T3 Settings > Project > Actions for each selected
project and environment. Setup must run automatically on worktree creation and
finish before the agent starts. Checking in `t3.json` alone does not activate it.

Use a separate branch and worktree for each independent task. Keep generated
output and test data inside that worktree. Do not share a writable database or
run an agent against another task's uncommitted checkout. One integration owner
combines overlapping changes and runs the combined checks.

Development setup must not start a calendar/Things writer or reuse the deployed
service home. Configure any deliberate live integration separately. Tests use
their isolated fixtures; a passing test does not prove a real cloud write.
