#!/bin/bash

echo "=========================================="
echo "Pushing code to support-mgnrega organization"
echo "=========================================="
echo ""

# Check if org-origin already exists
if git remote | grep -q "org-origin"; then
    echo "Remote 'org-origin' already exists. Updating..."
    git remote set-url org-origin https://github.com/support-mgnrega/support-mgnrega.github.io.git
else
    echo "Adding new remote 'org-origin'..."
    git remote add org-origin https://github.com/support-mgnrega/support-mgnrega.github.io.git
fi

echo ""
echo "Pushing code to organization repository..."
git push org-origin main

echo ""
echo "=========================================="
echo "✅ Code pushed successfully!"
echo ""
echo "Next steps:"
echo "1. Go to: https://github.com/support-mgnrega/support-mgnrega.github.io/settings/pages"
echo "2. Enable GitHub Pages (Source: main branch, / root)"
echo "3. Your site will be live at: https://support-mgnrega.github.io"
echo "=========================================="
