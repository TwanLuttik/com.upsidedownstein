PROJECT_NAME="upsidedownstein"

# Install packages
yarn

# Build
yarn build

# Remove the folder
rm -rf /var/www/$PROJECT_NAME

# Create folder
mkdir /var/www/$PROJECT_NAME

# copy build to prod
cp -r ./dist/* /var/www/$PROJECT_NAME/
