# teiid.io website

## Repo Structure

The teiid.io website repo contains 3 branches.


* **dev**
  * development branch used to stage the latest yet-to-be-released content
  * commits/merges will trigger a Netlify build (~ 5 minutes) that will generate and publish web content
  * view staging website at: https://teiiddev.netlify.com/
* **master**
  * contains the approved/latest site source code/markdown
  * when sufficient new content is added to **dev**, or critical fixes or additions are applied, a PR will be created and merged to the **master** branch.
  * 
* **gh-pages**
  * changes to the **master** branch will trigger a [.travis.yml](https://github.com/teiid/teiid.io/blob/master/.travis.yml)  build to generate content, merge to **gh-pages** and published to https://teiid.github.io/teiid.io/


## Building Locally
### Prerequisites
* Install NodeJS
* Install `yarn`: `curl -o- -L https://yarnpkg.com/install.sh | bash`
  * macOS and Homebrew users: `brew install yarn`
* Add yarn's binary directory to your path in your `.bashrc` or `.bash_profile`: `export PATH=${PATH}:$(yarn global bin)`
* Install `gulp` globally: `yarn global add gulp-cli`
* Install `hugo` (see http://gohugo.io/overview/installing/)
* Run `yarn`

### Previewing
Run `gulp` and open your browser at http://localhost:1313/teiid.io.

### Building
Run `gulp build` to build site into `public` directory.

## Publishing

To set up on your own fork for the first time:

1. Fork this repo.
2. Clone to your machine: `$ git clone git@github.com:<USERNAME>/teiid.io.git`
  - ( or `$git clone https://github.com/<USERNAME>/teiid.io.git`
  
2. Make sure that your GitHub repo settings for the branch and directory of your GitHub pages is set to `master/gh-pages`.
3. Run the following:

```
$ cd teiid.io
$ git checkout --orphan gh-pages
$ git rm -rf .
$ rm '.gitignore'
$ git commit -a -m "Setting up gh-pages branch"
$ git push origin gh-pages
$ git checkout master
$ ./publish-to-gh-pages.sh
```

Your published fork should now be running at https://<USERNAME>.github.io/teiid.io/.

### Publishing Each Time After Setup
From the `master` branch, or any branch other than `gh-pages`, first update your local fork:

```
$ gulp build && git add -A . && git push
```

Then publish to GitHub pages with:

`$ ./publish-to-gh-pages.sh`
