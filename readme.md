# pjt

The Project Management Tool (`pjt`) is a versatile Bash script designed to streamline the management of multiple projects. With `pjt`, you can add, create, list, run commands, and scan directories for projects. This README provides a detailed guide on how to use each of the available commands.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
  - [pjt](#pjt)
  - [pjt add](#pjt-add)
  - [pjt config](#pjt-config)
  - [pjt create](#pjt-create)
  - [pjt list](#pjt-list)
  - [pjt run](#pjt-run)
  - [pjt scan](#pjt-scan)
- [Examples](#examples)
- [Contributing](#contributing)
- [License](#license)

## Installation

An installation script is provided

```bash
# download the script
curl -s https://raw.githubusercontent.com/DimitriGilbert/pjt/main/utils/get_pjt -O;
# make it executable
chmod +x get_pjt;
# display the help
./get_pjt --help;
#	-b, --branch|--tag|--install-version <branch>: version to install
#	--install-directory <install-directory>: where to install
#	--install-file <install-file>: rc files to install to, forces install, repeatable
#	-i|--install|--no-install: install in bashrc
#	--remove-installer|--no-remove-installer: remove install script itself
#	aliases: --rm,
#	--ssh|--no-ssh: clone using ssh
#	--zip|--no-zip: install using zip archive, not recommended

# generic install
./get_pjt --install;
```

```

Ensure that the `bin` directory is included in your `PATH`:

```sh
export PATH=$PATH:/path/to/pjt/bin
```

## Usage

### pjt

The main command for the Project Management Tool.

```sh
Project management tool:
    target: pjt subcommand [one of 'add', 'config', 'create', 'list', 'run', 'scan']
Usage :
    pjt <target>
```

### pjt add

Add an existing project to the management tool.

```sh
pjt add
Add an existing project:
    name: The path of the existing project to add
    path: The path of the existing project to add
    --config-dir <config-dir>: pjt config directory
    --description <description>: project description
Usage :
    pjt add <name> <path> [--config-dir <value>] [--description <value>]
```

### pjt config

Manage the configuration of the tool. *(Note: This section is incomplete and requires further detail.)*

```sh
pjt config
Manage the configuration:
    target: The subcommand to run [one of 'add', 'remove', 'show']
Usage :
    pjt config <target>
```

### pjt create

Create a new project.

```sh
pjt create
Create a new project:
    project-name: The name of the project to create
    -i, --init <init>: Initialization command or script, repeatable
    --config-dir <config-dir>: pjt config directory
    --parent <parent>: parent directory
Usage :
    pjt create <project-name> [--init <value>] [--config-dir <value>] [--parent <value>]
```

### pjt list

List all managed projects.

```sh
pjt list
List all projects:
    --config-dir <config-dir>: pjt config directory
Usage :
    pjt list [--config-dir <value>]
```

### pjt run

Run a command within the context of a specified project.

```sh
pjt run
Run a command in the project directory:
    project-name: The name of the project
    command: The command to run in the project directory
    --config-dir <config-dir>: pjt config directory
Usage :
    pjt run <project-name> <command> [--config-dir <value>]
```

### pjt scan

Scan a directory for existing projects and optionally add them to the management tool.

```sh
pjt scan
Scan a directory for existing projects:
    directory: The directory to scan for projects
    --config-dir <config-dir>: pjt config directory
    --add-all|--no-add-all: Flag to add all found projects
Usage :
    pjt scan <directory> [--config-dir <value>] [--[no-]add-all]
```

## Examples

1. **Add a Project**: Add an existing project located at `/path/to/project`.

    ```sh
    pjt add myproject /path/to/project --description "A sample project"
    ```

2. **Create a New Project**: Create a new project named `newproject` with an initialization script.

    ```sh
    pjt create newproject --init "init_script.sh"
    ```

3. **List Projects**: List all managed projects.

    ```sh
    pjt list
    ```

4. **Run a Command**: Run the `make` command in the context of the `myproject`.

    ```sh
    pjt run myproject make
    ```

5. **Scan Directory**: Scan the `/projects` directory and add all found projects.

    ```sh
    pjt scan /projects --add-all
    ```

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request.

## License

This project is licensed under the MIT License.

---

For any questions or issues, please open an issue on the [GitHub repository](https://github.com/DimitriGilbert/pjt/issues).