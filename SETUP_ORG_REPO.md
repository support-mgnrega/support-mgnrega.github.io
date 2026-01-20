# Setup Repository in support-mgnrega Organization

## Step 1: Create Repository in Organization

1. Go to: https://github.com/organizations/support-mgnrega/repositories/new
2. Repository name: **support-mgnrega.github.io** (must be exactly this)
3. Description: "Support MGNREGA - Restore and Enrich"
4. Make it **Public**
5. **DO NOT** check any initialization options (no README, .gitignore, or license)
6. Click **"Create repository"**

## Step 2: Push Code to New Repository

After creating the repository, run these commands:

```bash
cd /home/zs-khaleel/Documents/vithosa

# Add the new organization repository as remote
git remote add org-origin https://github.com/support-mgnrega/support-mgnrega.github.io.git

# Push to the organization repository
git push org-origin main
```

## Step 3: Enable GitHub Pages

1. Go to: https://github.com/support-mgnrega/support-mgnrega.github.io/settings/pages
2. Under **Source**, select:
   - Branch: `main`
   - Folder: `/ (root)`
3. Click **Save**

## Step 4: Your Site Will Be Live!

Your website will be available at:
```
https://support-mgnrega.github.io
```

(May take 5-10 minutes to become active)

## Optional: Remove Old Remote

If you want to only use the organization repository:

```bash
git remote remove origin
git remote rename org-origin origin
```

This makes the organization repository your default remote.
