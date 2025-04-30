# weave-service

[Setup your service](#setup-your-service)
[Available commands](#available-commands)

## Setup your service

- **Set your environment variables for each environment**

Modify env-remote files for remote modifications

Modify root environment files for local modifications

## Available scripts and commands
**Execute from your service's root directory**

- **r | run**

Starts the service
```bash
./weave.sh r
```
*Development mode*: -d|-dev

- **k | kill**

Stops the service
```bash
./weave.sh k
```
*Development mode*: -d|-dev

- **log | log-available-ports**

Logs the service's available ports
```bash
./weave.sh log
```
*Development mode*: -d|-dev

- **bak | backup-task**

Executes the service's backup-task
```bash
./weave.sh backup-task
```
*Development mode*: -d|-dev
