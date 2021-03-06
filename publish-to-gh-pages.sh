#!/bin/bash
directory=public
branch=gh-pages
repo=${1:-origin}
build_command() {
  gulp build
  cp CNAME.travis $directory/CNAME
}

echo -e "\033[0;32mDeleting old content...\033[0m"
rm -rf $directory
git worktree prune

echo -e "\033[0;32mChecking out $branch....\033[0m"
git worktree add $directory
git branch -D $branch
cd $directory
git checkout --orphan $branch
cd ..
rm -rf $directory/*

echo -e "\033[0;32mGenerating site...\033[0m"
build_command

echo -e "\033[0;32mDeploying $branch branch...\033[0m"
cd $directory &&
  git add --all &&
  git commit -m "Deploy updates" &&
  git push -f $repo $branch

echo -e "\033[0;32mCleaning up...\033[0m"
git worktree remove $directory
