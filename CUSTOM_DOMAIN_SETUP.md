# Custom Domain Setup Guide

You have two options to change your URL from `tamilmarxist.github.io/support-mgnrega/`:

## Option 1: support-mgnrega.github.io (FREE - Recommended)

This gives you a clean URL: `https://support-mgnrega.github.io`

### Steps:

1. **Create a new GitHub repository:**
   - Go to https://github.com/new
   - Repository name: `support-mgnrega` (exactly this name)
   - Make it **Public**
   - **DO NOT** initialize with README
   - Click "Create repository"

2. **Push your code to the new repository:**
   ```bash
   cd /home/zs-khaleel/Documents/vithosa
   
   # Add the new remote (replace YOUR_USERNAME if needed)
   git remote add new-origin https://github.com/YOUR_USERNAME/support-mgnrega.git
   
   # Push to the new repository
   git push new-origin main
   ```

   OR if you want to completely move to the new repo:
   ```bash
   # Remove old remote
   git remote remove origin
   
   # Add new remote
   git remote add origin https://github.com/YOUR_USERNAME/support-mgnrega.git
   
   # Push
   git push -u origin main
   ```

3. **Enable GitHub Pages:**
   - Go to your new repository: `https://github.com/YOUR_USERNAME/support-mgnrega`
   - Click **Settings** → **Pages**
   - Under **Source**, select:
     - Branch: `main`
     - Folder: `/ (root)`
   - Click **Save**

4. **Your site will be live at:**
   ```
   https://support-mgnrega.github.io
   ```
   (May take 5-10 minutes to become active)

---

## Option 2: Custom Domain (support-mgnrega.com or any domain)

This gives you a professional URL like `https://support-mgnrega.com`

### Step 1: Purchase a Domain

Buy a domain from:
- Namecheap (https://www.namecheap.com)
- Google Domains (https://domains.google)
- GoDaddy (https://www.godaddy.com)
- Cloudflare (https://www.cloudflare.com/products/registrar)

Recommended: **Namecheap** or **Cloudflare** (better prices and privacy)

### Step 2: Configure DNS

After purchasing, configure DNS settings:

#### For Root Domain (support-mgnrega.com):
```
Type: A
Name: @
Value: 185.199.108.153
TTL: Automatic

Type: A
Name: @
Value: 185.199.109.153
TTL: Automatic

Type: A
Name: @
Value: 185.199.110.153
TTL: Automatic

Type: A
Name: @
Value: 185.199.111.153
TTL: Automatic
```

#### For WWW Subdomain (www.support-mgnrega.com):
```
Type: CNAME
Name: www
Value: YOUR_USERNAME.github.io
TTL: Automatic
```

### Step 3: Add CNAME File to Repository

Create a file named `CNAME` (no extension) in your repository root:

```bash
cd /home/zs-khaleel/Documents/vithosa
echo "support-mgnrega.com" > CNAME
git add CNAME
git commit -m "Add custom domain CNAME"
git push
```

### Step 4: Configure in GitHub

1. Go to your repository → **Settings** → **Pages**
2. Under **Custom domain**, enter: `support-mgnrega.com`
3. Check **Enforce HTTPS** (after DNS propagates)
4. Click **Save**

### Step 5: Wait for DNS Propagation

- DNS changes can take 24-48 hours to propagate
- Check status: https://www.whatsmydns.net
- Once DNS is active, GitHub will verify your domain

---

## Quick Comparison

| Feature | support-mgnrega.github.io | Custom Domain |
|---------|---------------------------|---------------|
| **Cost** | FREE | ~$10-15/year |
| **Setup Time** | 5 minutes | 30 minutes + DNS wait |
| **URL** | support-mgnrega.github.io | support-mgnrega.com |
| **Professional** | Good | Excellent |
| **SSL/HTTPS** | Automatic | Automatic (after setup) |

---

## Recommendation

**Start with Option 1** (`support-mgnrega.github.io`) - it's free, quick, and gives you a clean URL. You can always add a custom domain later if needed.

---

## Troubleshooting

### Option 1 Issues:
- **404 Error?** Make sure repository name is exactly `support-mgnrega`
- **Not loading?** Wait 10-15 minutes after enabling Pages
- **Wrong content?** Make sure `index.html` is in the root directory

### Option 2 Issues:
- **DNS not working?** Wait 24-48 hours for propagation
- **HTTPS not available?** Wait for GitHub to verify domain (can take up to 24 hours)
- **CNAME errors?** Make sure CNAME file contains only the domain name, no http:// or https://

---

## Need Help?

If you encounter issues:
1. Check GitHub Pages documentation: https://docs.github.com/en/pages
2. Verify DNS settings match GitHub's requirements
3. Ensure repository is public (required for free GitHub Pages)
