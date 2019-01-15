# GitHub Action: Ruby Recipe 

Use this to kickstart building an Action with Ruby.

## Usage

1. **In your Repository, create a new folder for your Action under `.github/`.**

```
mkdir .github/my_ruby_action
cd .github/my_ruby_action
```

2. **Next, copy `Dockerfile`, `entrypoint.sh` and `action.rb` from this repository into your new folder.**

Here are some easy commands to download them.

```
curl https://raw.githubusercontent.com/mscoutermarsh/ruby-action-recipe/master/action.rb > action.rb
curl https://raw.githubusercontent.com/mscoutermarsh/ruby-action-recipe/master/Dockerfile > Dockerfile
curl https://raw.githubusercontent.com/mscoutermarsh/ruby-action-recipe/master/entrypoint.sh > entrypoint.sh
```

3. **Commit and push up your changes.**

## Running your new Action

1. **Visit the Actions tab for your repository.**

Setup your workflow to trigger whenever an Issue receives a comment.

<img src="http://cloud.mikeasaur.us/751a683a50d9/Image%2525202019-01-14%252520at%2525204.35.13%252520PM.png" width="250">

*Note:* The `issue_comment` event is currently only available in private repos. If you're doing this in a public repo, use `push` for now.

2. **Then, drag a line to your new Action.**
![](http://cloud.mikeasaur.us/fd228f66cf8d/Screen%252520Recording%2525202019-01-14%252520at%25252005.02%252520PM.gif)

Be sure to click `GITHUB_TOKEN` so that your Action can use the GitHub API.

3. **Commit your change.**

## Trigger the event
Now the fun part. Trigger your event by commenting on an issue in your repo. Then check the Actions tab to see your Action run.

![](http://cloud.mikeasaur.us/134492c4e33a/Image%2525202019-01-14%252520at%2525205.05.11%252520PM.png)

Take a look at the logs and you'll see the output from the `puts` calls in your Ruby script. ✨
