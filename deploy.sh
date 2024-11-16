# #!/bin/bash

# # Check if there are any changes to commit
# if [[ -n $(git status -s) ]]; then
#     # Stage all changes
#     git add .

#     # Commit changes with an automated message
#     git commit -m "Automated commit"

#     # Push changes to the specified branch on GitHub
#     git push origin
# else
#     echo "No changes to commit."
# fi

#!/bin/bash

# Stage, Commit, and Push to GitHub
git status
git add .
git commit -m "Automated commit"
git push origin main

# Install dependencies and build the app
npm install
npm run build

# Upload the built files to the GCS bucket
gsutil cp -r build/* gs://menuchi_feldman_bucket
