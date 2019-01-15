# GitHub Action: Ruby Recipe 

Use this to kickstart building an Action with Ruby.

## Usage

In your Repository, create a new folder for your Action under `.github/`.

```
mkdir .github/my_ruby_action
cd .github/my_ruby_action
```

Next, copy `Dockerfile`, `entrypoint.sh` and `action.rb` from this repository into your new folder.

Here are some easy commands to download them.

```
curl https://raw.githubusercontent.com/mscoutermarsh/ruby-action-recipe/master/action.rb > action.rb
curl https://raw.githubusercontent.com/mscoutermarsh/ruby-action-recipe/master/Dockerfile > Dockerfile
curl https://raw.githubusercontent.com/mscoutermarsh/ruby-action-recipe/master/entrypoint.sh > entrypoint.sh
```

Then, push up your changes and visit the Actions tab to setup the first run of your new Ruby Action.

### Running your new Action

Setup your workflow to trigger whenever an Issue receives a comment.

<img src="http://cloud.mikeasaur.us/751a683a50d9/Image%2525202019-01-14%252520at%2525204.35.13%252520PM.png" width="250">

*Note:* The `issue_comment` event is currently only available in private repos. If you're doing this in a public repo, use `push` for now.

Then, drag a line to your new Action.
![](http://cloud.mikeasaur.us/febb1899232b/Screen%252520Recording%2525202019-01-14%252520at%25252004.33%252520PM.gif)

This tells GitHub to run your Action whenever an Issue receives a new comment.

Commit your change.

### Trigger the event
Now the fun part. Trigger your event by commenting on an issue in your repo. Then check the Actions tab to see your Action run.
