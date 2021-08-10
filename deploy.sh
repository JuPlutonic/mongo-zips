rm -rf dist  # Ensure that dist folder isn't exist in the first place
git branch master heroku # if scripts fails delete heroku with -D
mkdir -p dist
# git worktree add -f dist 93ee16d6e1dec888f806f44c493624e5835b7379 (hash from output `git ls-remote --heads heroku`)
git worktree add -f dist heroku
rm -f dist/.gitignore
sed '/Gemfile\.lock/d;;/gems.locked/d' .gitignore > dist/.gitignore
cp Gemfile.lock dist/Gemfile.lock
cd dist
# git add .
git add -f .gitignore
git add -f Gemfile.lock
git commit -m 'Deploy to Heroku'
git push heroku heroku:main --force
cd ..
git worktree remove dist
git branch -D heroku
