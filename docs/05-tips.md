
# Tips

You may skip these and get to work, but we aim to contain some useful tips and tricks here, that should make solving this challenge easier.

## Remote access to builds

Our CI platform, has a [remote access](https://devcenter.bitrise.io/en/builds/build-data-and-troubleshooting/remote-access.html) feature, which can be used on a build.

It is super useful for development, especially without a Mac - it will let you inspect the environment your build is going to run in, and you can reset it by aborting the build and rerunning it.

Whenever you are lost, it is a good idea to tinker with it. However, the green build cannot have any traces of remote access.

Note: You may have to wait a little bit for the remote access SSH to be really available.

## Links

It is worth exploring the links we are embedding, as they point to useful spots in the documentation.

## Set up CI right away

Even if you just use it to have remote access to rapidly prototype your solution, it is a good idea to have the CI validate your solution.

It is also okay for development to modify the bitrise.yml on the website.

## Simplicity

A simple solution that works far outweighs a very complex and hard to reason one. We do not expect you to spend hours on making simple to do more complex and smarter, however we expect you to favor Ansible for most things.

## Read through the provided code!

We've given pointers, hints, tips, and skeletons - use them!

## Default folder

By default, your code will run in "$HOME/git", which is "/Users/vagrant/git".