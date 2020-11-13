
# This file is used for Git repositories to specify intentionally untracked files that Git should ignore. 
# If you are not using git, you can delete this file. For more information see: https://git-scm.com/docs/gitignore
# For useful gitignore templates see: https://github.com/github/gitignore

# Salesforce dev
.sfdx/
.localdevserver/

# LWC VSCode autocomplete
jsconfig.json

# Logs
logs
*.log
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# Dependency directories
node_modules/
yarn.lock

# Eslint cache
.eslintcache

# MacOS system files
.DS_Store

# Windows system files
Thumbs.db
ehthumbs.db
[Dd]esktop.ini
$RECYCLE.BIN/

# VS Code project settings
.vscode/

# Codecov
coverage

# ebikes-lwc

Add a brief description of this project here, in Markdown format.
It will be shown on the main page of the project's GitHub repository.

## Development

To work on this project in a scratch org:

1. [Set up CumulusCI](https://cumulusci.readthedocs.io/en/latest/tutorial.html)
2. Run `cci flow run dev_org --org dev` to deploy this project.
3. Run `cci org browser dev` to open the org in your browser.