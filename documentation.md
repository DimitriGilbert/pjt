# Usage

## pjt

```
Project management tool:
	target: pjt subcommand [one of 'add' 'config' 'create' 'list' 'run' 'scan' 'add']
Usage :
	pjt <target>
```

## pjt add

```
bin/add
Add an existing project:
	name: The path of the existing project to add
	path: The path of the existing project to add
	--config-dir <config-dir>: pjt config directory
	--description <description>: project description
Usage :
	bin/add <name> <path> [--config-dir <value>] [--description <value>]
```

## pjt config
/!\ incomplete
```
bin/config
Manage the configuration:
	target: The subcommand to run [one of 'add' 'remove' 'show' 'add']
Usage :
	bin/config <target>
```

## pjt create

```
bin/create
Create a new project:
	project-name: The name of the project to create
	-i, --init <init>: Initialization command or script, repeatable
	--config-dir <config-dir>: pjt config directory
	--parent <parent>: parent directory
Usage :
	bin/create <project-name> [--init <value>] [--config-dir <value>] [--parent <value>]
```

## pjt list

```
bin/list
List all projects:
	--config-dir <config-dir>: pjt config directory
Usage :
	bin/list [--config-dir <value>]
```

## pjt run

```
bin/run
Run a command in the project directory:
	project-name: The name of the project
	command: The command to run in the project directory
	--config-dir <config-dir>: pjt config directory
Usage :
	bin/run <project-name> <command> [--config-dir <value>]
```

## pjt scan

```
bin/scan
Scan a directory for existing projects:
	directory: The directory to scan for projects
	--config-dir <config-dir>: pjt config directory
	--add-all|--no-add-all: Flag to add all found projects
Usage :
	bin/scan <directory> [--config-dir <value>] [--[no-]add-all]
```
