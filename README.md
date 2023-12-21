# quarto_website_workflows

A quarto website with some automation

## First Time Setup

Few things that this template does

- GitHub Action that checks links using [lychee](https://github.com/lycheeverse/lychee-action)
- GihHub Action to build a preview site on PRs into `main` on Netlify
- GitHub Action that builds the website from `main`

### Quarto and Build Site

```
make render
```

is the same as 

```
quarto render
```

This will build the site into the `_site` direcctory

### Netlify

Make sure you have the `_site` directory built.

```
npm install -g netlify-cli

netlify deploy --dir=_site/ --prod
```

This will open a confiramation page for you to confirm.

### GitHub Actions

You will need to go to the repository settions and configure 2 things

- Repository Secrets
- Repository Action Permissions

#### Repository Secrets

In the repository settions > Secrets and variables > Actions page:

Add the following secrets under the "Repository secrets" section of the default "Secrets" tab

- `NETLIFY_AUTH_TOKEN`: this is the Netlify PAT
- `NETLIFY_SITE_ID`: you can find tihs in the Netlify website configuration page

#### Repository Action Permissions

In the repository settions > Actions > General page:

All the way on the bottom of the page, under the "Workflow permissions" section,
make sure you have the

- Read and write permissions selected
