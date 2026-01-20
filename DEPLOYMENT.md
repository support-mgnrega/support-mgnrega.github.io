# GitHub Pages Deployment Guide

Follow these steps to publish your website on GitHub Pages:

## Step 1: Create a GitHub Repository

1. Go to [GitHub](https://github.com) and sign in
2. Click the "+" icon in the top right corner
3. Select "New repository"
4. Name your repository (e.g., `vithosa` or `mgnrega-support`)
5. Make it **Public** (required for free GitHub Pages)
6. **DO NOT** initialize with README, .gitignore, or license (we already have these)
7. Click "Create repository"

## Step 2: Connect Local Repository to GitHub

After creating the repository, GitHub will show you commands. Use these commands in your terminal:

```bash
cd /home/zs-khaleel/Documents/vithosa
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
git branch -M main
git push -u origin main
```

Replace:
- `YOUR_USERNAME` with your GitHub username
- `YOUR_REPO_NAME` with your repository name

## Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click on **Settings** (top menu)
3. Scroll down to **Pages** in the left sidebar
4. Under **Source**, select:
   - Branch: `main`
   - Folder: `/ (root)`
5. Click **Save**

## Step 4: Access Your Live Website

GitHub will provide you with a URL like:
```
https://YOUR_USERNAME.github.io/YOUR_REPO_NAME/
```

It may take a few minutes for the site to be available after enabling Pages.

## Alternative: Using GitHub CLI

If you have GitHub CLI installed:

```bash
gh repo create YOUR_REPO_NAME --public --source=. --remote=origin --push
gh repo view --web
```

Then enable Pages in the repository settings as described in Step 3.

## Troubleshooting

- **Site not loading?** Wait 5-10 minutes after enabling Pages
- **404 Error?** Make sure `index.html` is in the root directory
- **Styling broken?** Check that all CSS is in the HTML file (it is)
- **Changes not showing?** Make sure you've pushed your latest commits

## Updating Your Site

After making changes:

```bash
git add .
git commit -m "Your commit message"
git push
```

Changes will be live within a few minutes.
