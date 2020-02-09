# Shortcuts for @operatehappy

> This repository is a collection of organization-specific shortcuts for [@operatehappy](https://github.com/operatehappy/).

## Table of Contents

- [Shortcuts for @operatehappy](#shortcuts-for-operatehappy)
  - [Table of Contents](#table-of-contents)
  - [Requirements](#requirements)
  - [Dependencies](#dependencies)
  - [Usage](#usage)
  - [Author Information](#author-information)
  - [License](#license)

## Requirements

This module requires Node.js 6.x or later.

## Dependencies

This script has no external dependencies.

## Usage

To install this utility, run the following command in your console:

```sh
npm install -g @operatehappy/shortcuts
```

This will make the following shortcuts available globally:

### Docker

- `docker-remove-dangling-volumes`
- `docker-remove-dead`
- `docker-system-prune`
- `docker-system-df`

### Git

- `git-log`

### Terraform

- `terraform-apply`
- `terraform-destroy`
- `terraform-fmt`
- `terraform-get`
- `terraform-graph`
- `terraform-import`
- `terraform-init`
- `terraform-plan`
- `terraform-refresh`
- `terraform-taint`
- `terraform-untaint`
- `terraform-workspace-delete`
- `terraform-workspace-new`

The shortcuts in the _Terraform_ section set sensible defaults that work for _us_. Inspect the [Shell scripts](https://github.com/operatehappy/node-shortcuts/search?l=Shell&q=terraform) for a better understanding of what that means.

### `pre-commit`

- `pre-commit-install`
- `pre-commit-remove`
- `pre-commit-run`

The shortcuts in the [pre-commit](https://pre-commit.com/) section install, remove, or run Git hooks using our organization-specific [configuration](https://github.com/operatehappy/dotfiles-org/blob/master/.pre-commit-config.yaml).

### Operate Happy

- `oh-release`

### misc. stuff

- `serve-me`

This shortcut provides a quick way of serving the current directory via HTTP. The shortcut defaults to using `python` and maps to port `4779`.

The runtime can be changed by supplying a single argument as the first argument. Valid options include: `python2`, `python3`, `php`, and `ruby`.

## Author Information

This module is maintained by the contributors listed on [GitHub](https://github.com/operatehappy/node-shortcuts/graphs/contributors)

Development of this module was sponsored by [Operate Happy](https://github.com/operatehappy).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
