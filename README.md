# NUR OSINT

> A [NUR](https://github.com/nix-community/NUR) repository packaging OSINT tools for Nix.

## Packages

| Package        | Description                                                                                                                                                                                      | Source                                                                  |
| -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |
| `github-recon` | Retrieves and aggregates public OSINT data about a GitHub user using Go and the GitHub API. Finds hidden emails in commit history, previous usernames, friends, other GitHub accounts, and more. | [anotherhadi/github-recon](https://github.com/anotherhadi/github-recon) |
| `toutatis`     | Toutatis is a tool that allows you to extract information from instagrams accounts such as e-mails, phone numbers and more                                                                       | [megadose/toutatis](https://github.com/megadose/toutatis)               |
| `ignorant`     | ignorant allows you to check if a phone number is used on different sites like snapchat, instagram.                                                                                              | [megadose/ignorant](https://github.com/megadose/ignorant)               |

More tools coming soon.

## Usage

### With Flakes

Add this repo as an input in your `flake.nix`:

```nix
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nur-osint.url = "github:anotherhadi/nur-osint";
  };

  outputs = { nixpkgs, nur-osint, ... }: {
    # Or add to your system packages
    environment.systemPackages = [
      nur-osint.packages.${system}.toutatis
    ];
  };
}
```

Or just run a tool without adding it to your config:

```bash
nix run github:anotherhadi/nur-osint#toutatis -- --help
```

### With NUR (non-flake)

Packages are available as:

```nix
# configuration.nix
environment.systemPackages = [
  pkgs.nur.repos.anotherhadi.toutatis
];
```

### Overlay

You can also use the provided overlay to make the packages available in your nixpkgs instance:

```nix
nixpkgs.overlays = [ nur-osint.overlays.default ];
# then use pkgs.toutatis as usual
```

## License

The Nix expressions in this repository are released under the [MIT License](LICENSE).  
Each packaged tool retains its own upstream license.
