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



## Get the code

The easiest way to get started with the code is to [create your own **fork**](http://help.github.com/forking/)
 of this repository, and then clone your fork:

```bash
  $ git clone git@github.com:teiid/beetle-studio.git
  $ cd beetle-studio
  $ git remote add upstream git@github.com:teiid/beetle-studio.git
```

At any time, you can pull changes from the upstream and merge them onto your **dev**:

```bash
  $ git checkout dev       # switches to the 'dev' branch
  $ git pull upstream dev  # fetches all 'upstream' changes and merges 'upstream/dev' onto your 'dev' branch
  $ git push origin           # pushes all the updates to your fork, which should be in-sync with 'upstream'
```

## Building Locally
### Prerequisites
* Install NodeJS
* Install `yarn`: `curl -o- -L https://yarnpkg.com/install.sh | bash`
  * macOS and Homebrew users: `brew install yarn`
* Add yarn's binary directory to your path in your `.bashrc` or `.bash_profile`: `export PATH=${PATH}:$(yarn global bin)`
* Install `gulp` globally: `yarn global add gulp-cli`
* Install `hugo` (see http://gohugo.io/overview/installing/)
* Run `yarn`


### Building
Run `gulp build` to build site into `public` directory.

### Previewing
 - Run `gulp`
 - Open your browser at **http://localhost:1313/teiid.io.**


## Promoting your changes

1. Commit your changes to your forked **dev** branch
2. Submit pull request against the teiid.io **dev** branch.

When your PR is merged, a Netlify build (~ 5 minutes) will generate and publish the web content which you can view on our staging site at : **https://teiiddev.netlify.com/**

Project leads will periodically merge **dev** content into **master** branch which will move the changes to the publich site at: **https://teiid.github.io/teiid.io/**

