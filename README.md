# Robot Framework Automation Testing

Robot Framework automation testing for login functionality demo site.

## Prerequisites

- Python 3.11+
- Chrome browser

## Installation

```bash
pip install -r requirements.txt
```

## Running Tests

### Robot Framework Tests
```bash
robot testCases/flow/test.robot
```

### Python Script (printY)
```bash
python testCases/printY/printY.py
```

## Project Structure

```
robot-ui/
├── testCases/
│   └── flow/
│       └── test.robot              # Main test cases
├── resources/
│   ├── configs/
│   │   └── import.resource         # Central import file
│   ├── keywords/
│   │   ├── common_keyword.resource # Common keywords (browser, JSON)
│   │   ├── login_keyword.resource  # Login page keywords
│   │   └── login_success_keyword.resource # Login success keywords
│   ├── variables/
│   │   ├── common_variables.resource # Common variables (URL, browser)
│   │   ├── login_variables.resource # Login page locators
│   │   └── login_success_variables.resource # Login success locators
│   ├── expectedResult/
│   │   ├── expected_login_page.json # Expected login page data
│   │   └── expected_login_success_page.json # Expected success page data
│   └── dataTest/
│       └── login_page.json         # Test credentials
└── .github/workflows/              # CI/CD workflows
```

## Test Cases

1. **Login and Logout successfully** - Test valid login and logout flow
2. **Login failed with invalid username** - Test login with invalid username
3. **Login failed with invalid password** - Test login with invalid password

## Test Data

- **Test credentials**: `resources/dataTest/login_page.json`
- **Expected results**: `resources/expectedResult/`
- **Page locators**: `resources/variables/`

## Test Reports

After running tests, view results:
- `log.html` - Detailed execution log
- `report.html` - Test summary report
- `output.xml` - XML output for CI/CD integration
