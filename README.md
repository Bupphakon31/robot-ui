# Robot UI

Robot Framework automation testing for Swag Labs demo site.

## Prerequisites

- Python 3.11+
- Node.js
- Chrome browser

## Installation

```bash
pip install -r requirements.txt
npm install
```

## Running Tests

```bash
npm test
```

## Project Structure

```
robot-ui/
├── testCases/          # Test cases
├── resources/          # Test data and expected results
├── support/            # Keywords and page objects
├── configs/            # Configuration files
└── .github/workflows/  # CI/CD workflows
```

## Test Reports

After running tests, view results:
- `log.html` - Detailed execution log
- `report.html` - Test summary report
