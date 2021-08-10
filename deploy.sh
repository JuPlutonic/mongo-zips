rm -rf dist  # Ensure that dist folder isn't exist in the first place
git branch master heroku
git worktree add -f dist heroku
sed '/Gemfile\.lock/d' .gitignore > dist/.gitignore
cp Gemfile.lock dist/Gemfile.lock
cd dist
git add .
git commit -m 'Deploy to Heroku'
git push -f heroku heroku:master
cd ..
git worktree remove dist
git branch -D heroku
