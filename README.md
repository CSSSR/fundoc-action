# Fundoc Action

It's a GitHub Action for [Fundoc](https://github.com/daynin/fundoc) documentation generator. You can use it to automate documentation generation and publishing it into your repository.

# Installation

Just create `.github/workflows/fundoc.yml` in the root folder of your repository and add the following code into the file:

```yaml
name: fundoc

on:
  workflow_dispatch:
  push:
    branches: [ master ]

jobs:
  fundoc:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2
      with:
        ref: ${{ github.head_ref }}

    - name: Fundoc Action
      uses: daynin/fundoc-action@v0.2.2

    - uses: stefanzweifel/git-auto-commit-action@v4
      with:
        commit_message: 'docs: generate documentation'
```

After installation documentation will be generated and pushed by the action with a separate commit on behalf of the author of the last commit. You can specify a commit message and other settings (see documentation [here](https://github.com/stefanzweifel/git-auto-commit-action)).
