# dotfiles-for-devcontainers
My dotfiles for use inside a devcontainer

## Requirements

- zsh
- ohmyzsh

You can satisfy these requiments by adding the followint to your vscode user settings:

```json
{
    "dev.containers.defaultFeatures": {    
		"ghcr.io/devcontainers/features/common-utils:2": {
			"installZsh": true,
			"configureZshAsDefaultShell": true,
			"installOhMyZsh": true,
			"installOhMyZshConfig": true,
	    }
    }
}
````

## Usage

```json
{
  "dotfiles.repository": "roock/dotfiles-for-devcontainers",
  "dotfiles.targetPath": "~/dotfiles",
  "dotfiles.installCommand": "install.sh"
}
```

## References

- https://github.com/JorgenKrieger/dotfiles-for-devcontainers
- https://dotfiles.github.io/
