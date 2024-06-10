# Bitrise 

For this project, we will ask you to use our own CI, Bitrise CI, which can be accessed via [app.bitrise.io](https://app.bitrise.io/). This product is heavily mobile focussed, but it is capable of most generic CI use-cases, with more capabilities and options added constantly.

The steps below will guide you through this initial setup and should help you get familiar enough with the platform to work efficiently with it. This guide was last reviewed in 2024. january.

## Introduction to Bitrise CI

The smallest building block in Bitrise CI is a step, which can be:
 - a script Step (e.g. to run a shell command or do something custom),
 - a specific tool running with many parameters (e.g. spinning up android emulators, building mobile app for a platform, etc.),
 - working with source code hosting services (e.g. git pull), or
 - your own custom Step (it is not required and it is out of scope here).

Workflows are a collection of Steps. You can organize one or more Steps into Workflows to automate certain bigger parts of your automation. You can make Workflows reusable via parametrization (e.g. passing package name to a generic .deb package build workflow) or you can create generic Utility Workflows, which can be called before or after your other Workflows (e.g. preparing the workspace to build or signing packages and uploading them).

Pipelines and Stage are out of scope here, but you can read more about them in the (Bitrise CI devcenter)[https://devcenter.bitrise.io/en/builds/build-pipelines.html].

Finally, you have apps, which can be expressed as a bitrise.yml, and are a collection of pipelines, Workflows and metadata. The metadata can include a wide array of settings specific to your app, from trigger maps (e.g. push events to main branch produce a dev release, a tag creates a production release, and PRs run the "CI" workflow) to configuration of your build environment, such as Stacks and Machine types.

Stacks determine what OS and environment your build will run in. For example, selecting the [Xcode 15.2.x](https://stacks.bitrise.io/stack_reports/osx-xcode-15.2.x/) will mean you will get a macOS VM image with the Xcode toolchain's 15.2.x version selected and a plethora of tools for iOS development. It also includes tools that are required to install further tools like [homebrew](https://brew.sh/) or npm, generic scripting runtimes like python or compilers like go, and so on. An up-to-date list of stacks can be found [here](https://stacks.bitrise.io/).

You are welcome to read the [relevant parts of our devcenter articles](https://devcenter.bitrise.io/en/builds.html).

## Registration

It is the easiest if you use the Github sign-up, as this already sets up the Github integration with your account.

You will need to proivde a username and a password for your Bitrise account.

**Important: Share the username with us early on and we will provide extra credits on the platform, because the free tier credits might run out while developing. Fitting into these credits is not part of the challenge.**

After that, you will be prompted for a survey, which will also trigger your Workspace creation.

## Creating a new app

Go to the [Get started with Bitrise CI](https://app.bitrise.io/getting-started-bitrise-ci) page, then click "Add new app".

### Project access

Choose your Workspace and choose "Only Workspace members" to create a Private project.

### Selected repository

Make sure the "Select remote repository" radio button is clicked, so you can choose Github.

Choose Github, then on the Git repository selector click "Select a repository..." and choose your Github repository.

### Authorize Bitrise

Leave it on "Auto-add a generated SSH key to your repository" and click "No, auto-add SSH key".

Please note, that this only adds a "Deploy key" to this specific repository - you can review and verify this on Github by going to your repository's "Settings" page, and it should be under the "Security" section's "Deploy keys" tab.

### Choose branch

Choose your default branch, it should be "main".

Under "Scan branch to auto-detect configuration?" you should opt to "No, skip auto-detection and configure settings manually". You can skip the "Project scanner" step.

If you leave it on "Yes, auto-detect configuration", the project scanner is going to run on your project. However, since Bitrise is mobile focussed, it is not going to figure out the project type. You may try this flow out, but otherwise you should skip the "Project scanner" step.

### Project scanner

You should receive an error saying "We couldn't recognize your platform.". This is normal.

You will have to select "Skip and configure manually"

### Project build configuration

You should select the "Other/manual" option on the bottom.

Once prompted by the "Specify the build configuration" to select from the "Stack selector" drop-down, please select "Xcode 15.2".

Under the "Available Machine Types for this Stack" section you should leave it on "M1 Medium".

### App Icon

Press "Skip for Now".

### Webhook setup

Click "Register a Webhook for me!", to let the Github webhooks trigger workflows later.

### Almost there

Click "View App page".

### Edit app / bitrise.yml

On first visit, this page will guide you to the "Workflows" button on the screen. Click the "Workflows" button.

You should see the "Workflows & Pipelines" page and on first visit the help. Once you dismiss this, you should have a workflow called "primary". Please, click on "Edit bitrise.yml".

This should land you in the "Workflow Editor" page's "bitrise.yml" tab and you should see the "bitrise.yml editor".

You should select the "store on bitrise.io" option, which is much more convenient for rapid prototyping and completing the challenge, however you will have to synchronize the state to the git repository, latest before submission of the solution. It is also a good idea to synchronize it from time to time in this case, and it is recommended to be stored in the repository otherwise.

You should replace the contents of the editor with the bitrise.yml file provided by us.

### Check machine type

Click the "Stacks & Machines" tab, and ensure the "Xcode 15.2" stack and "M1 Medium" machine type is selected as default. This should be used for your other workflow(s), too.
