# Merge Queue Testing Repository by Shen

This repository is designed to test GitHub merge queues with configurable test duration and failure modes.

## Configuration

The workflow uses repository variables that can be set in GitHub:

- `TEST_WAIT_TIME`: Duration in seconds for the test to run (default: 30)
- `FORCE_FAILURE`: Set to "true" to make the workflow fail (default: false)

## Testing Merge Queues

1. Create PRs with different `FORCE_FAILURE` settings
2. Enable merge queue on the main branch
3. Queue the PRs and observe the behavior

## Running locally

```bash
bundle install
bundle exec rspec
```

## How to Set Repository Variables

1. Go to your repository on GitHub
2. Navigate to Settings → Secrets and variables → Actions
3. Click on the "Variables" tab
4. Add the following variables:
   - `TEST_WAIT_TIME`: Set to desired seconds (e.g., "60")
   - `FORCE_FAILURE`: Set to "false" initially

## Environment Variables

- `TEST_DURATION_SECONDS`: How long the test should run (default: 30)
- `SHOULD_FAIL`: Set to 'true' to make the test fail (default: 'false')

## Testing Merge Queues

1. Create multiple PRs with different configurations
2. Enable merge queue on the main branch
3. Watch how PRs are processed through the queue
