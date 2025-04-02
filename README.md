# AWS EC2 Start/Stop Script

## Description
This Bash script automates starting and stopping AWS EC2 instances in a specified region. It ensures that the AWS CLI is installed and configured before execution.

## Features
- Start or stop an AWS EC2 instance by providing the instance ID.
- Validates if AWS CLI is installed and configured.
- Checks for valid input arguments.
- Provides real-time status updates on instance state.

## Usage
Run the script as follows:
```bash
./ec2_start_stop.sh <aws_region> <instance_id> <start|stop>
```

### Example:
To start an EC2 instance:
```bash
./ec2_start_stop.sh us-east-1 i-1234567890abcdef start
```
To stop an EC2 instance:
```bash
./ec2_start_stop.sh us-east-1 i-1234567890abcdef stop
```

## Prerequisites
1. **AWS CLI**: Ensure that the AWS CLI is installed on your system.
   - [Install the AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)

2. **AWS Configuration**: Ensure that the AWS CLI is configured with your credentials.
   ```bash
   aws configure
   ```

## Installation
1. Clone this repository:
   ```bash
   https://github.com/PasinduWaidyarathna/ec2-start-stop.git
   ```

2. Navigate to the project directory:
   ```bash
   cd ec2-start-stop
   ```

3. Make the script executable:
   ```bash
   chmod +x ec2_start_stop.sh
   ```

## Contributing
Feel free to submit issues, fork the repository, and send pull requests. Contributions are welcome!

## Author
- **Pasindu Waidyarathna**
