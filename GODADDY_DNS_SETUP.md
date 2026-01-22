# GoDaddy DNS Setup for savemnrega.in

## Step 1: Configure DNS in GoDaddy

1. **Log in to GoDaddy:**
   - Go to https://dcc.godaddy.com
   - Sign in to your account

2. **Access DNS Management:**
   - Go to "My Products"
   - Find `savemnrega.in` domain
   - Click on "DNS" or "Manage DNS"

3. **Add/Update DNS Records:**

   You need to add these **A records** for the root domain (`savemnrega.in`):

   ```
   Type: A
   Name: @
   Value: 185.199.108.153
   TTL: 600 (or Automatic)

   Type: A
   Name: @
   Value: 185.199.109.153
   TTL: 600 (or Automatic)

   Type: A
   Name: @
   Value: 185.199.110.153
   TTL: 600 (or Automatic)

   Type: A
   Name: @
   Value: 185.199.111.153
   TTL: 600 (or Automatic)
   ```

   **Note:** If you already have an A record for `@`, you can either:
   - Delete the existing one and add these 4 new ones, OR
   - Update the existing one to point to `185.199.108.153` and add the other 3

4. **Add CNAME for WWW (Optional but Recommended):**

   ```
   Type: CNAME
   Name: www
   Value: support-mgnrega.github.io
   TTL: 600 (or Automatic)
   ```

   This allows `www.savemnrega.in` to also work.

5. **Save Changes:**
   - Click "Save" after adding each record
   - Wait for changes to propagate (can take a few minutes to 48 hours)

## Step 2: Push CNAME File to GitHub

The CNAME file has been created. Push it to your repository:

```bash
cd /home/zs-khaleel/Documents/vithosa
git add CNAME
git commit -m "Add custom domain savemnrega.in"
git push origin main
```

## Step 3: Configure Custom Domain in GitHub

1. **Go to Repository Settings:**
   - Visit: https://github.com/support-mgnrega/support-mgnrega.github.io/settings/pages

2. **Add Custom Domain:**
   - Under "Custom domain", enter: `savemnrega.in`
   - Click "Save"

3. **Enable HTTPS (Automatic):**
   - GitHub will automatically provision an SSL certificate
   - This may take a few minutes to several hours
   - Once ready, check "Enforce HTTPS"

## Step 4: Verify DNS Propagation

Check if DNS has propagated:
- Visit: https://www.whatsmydns.net/#A/savemnrega.in
- All 4 IP addresses should show: `185.199.108.153`, `185.199.109.153`, `185.199.110.153`, `185.199.111.153`

## Step 5: Wait for GitHub Verification

- GitHub needs to verify your domain (can take up to 24 hours)
- You'll see a green checkmark in repository settings when verified
- Once verified, enable "Enforce HTTPS"

## Troubleshooting

### DNS Not Working?
- Wait 24-48 hours for full propagation
- Verify all 4 A records are added correctly
- Make sure there are no conflicting records

### HTTPS Not Available?
- Wait for GitHub to verify domain (up to 24 hours)
- Make sure DNS is fully propagated
- Check that CNAME file is in repository root

### Site Not Loading?
- Verify DNS propagation: https://www.whatsmydns.net
- Check GitHub Pages settings show the custom domain
- Clear browser cache

## Your Site URLs

Once set up, your site will be available at:
- **https://savemnrega.in** (primary)
- **https://www.savemnrega.in** (if CNAME added)
- **https://support-mgnrega.github.io** (will redirect to custom domain)

## Important Notes

- **DNS Propagation:** Can take 24-48 hours
- **HTTPS Certificate:** GitHub provisions automatically (may take up to 24 hours)
- **CNAME File:** Must be in repository root and contain only `savemnrega.in`
- **A Records:** All 4 IP addresses are required for reliability
