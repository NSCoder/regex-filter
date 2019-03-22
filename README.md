# GitHub Regex Filter Action

Action allow to filter GitHub references (GITHUB_REF) using bash pattern matching. ([more info](https://www.gnu.org/software/bash/manual/bashref.html#Pattern-Matching))

## Usage

An example workflow to filter a branch by either master or staging:

```hcl
workflow "Filter workflow by master or staging branch" {
  on = "push"
  resolves = "filter branch"
}

action "filter branch" {
  uses = "juankaram/regex-filter@master"
  needs = "push"
  args = ["refs/heads/(master|staging)"]
}
```

## Attribution

Heavily inspired by [GitHub Actions](https://github.com/actions).

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
