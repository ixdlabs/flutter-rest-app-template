# example_app

A new Flutter project.

## FLutter setup (FVM)

Install FVM according to the instructions [here](https://fvm.app/documentation/getting-started/installation)
Then, run the following command to install the Flutter version specified in the `.fvm` file:

```bash
fvm install
fvm flutter doctor
```

Whenever you want to use flutter or dart commands, you should use the `fvm` command. For example:

```bash
fvm flutter run
```

If you use VS Code, the configuration file `.vscode/settings.json` is already set up to use the Flutter version specified in the `.fvm` file.

> When updating the Flutter version, you should update the `.fvm` file and run the `fvm install` command. Also make sure to update the flutter version in the `pubspec.yaml` file.

## Building models

```bash
fvm dart run build_runner build --delete-conflicting-outputs
```
