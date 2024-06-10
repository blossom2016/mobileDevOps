# Tasks

You are tasked with creating a minor customization for Hashicorp's Nomad solution, where you have to test that this customization is indeed present and the tool is working as intended.

To make this cleaner, you have to have nomad in a separate repository.

## Customize nomad

You have to first create fork of the [nomad Github repository](https://github.com/hashicorp/nomad), use as base the version [1.3.9](https://github.com/hashicorp/nomad/tree/v1.3.9), and customize it to have in the version as suffix the text "-nomad-customization-challenge".

Note: it is okay to have a simple fork and leave this part public.

## Continuous Integration job

You have to enhance the skeleton workflow you are provided, to include steps detailed below.

### Build

Build the nomad binary for macOS AMD64 and Linux AMD64 targets with your customizations.

You have to put the resulting binaries in "$HOME/artifacts" directory.

Tip: It might be a good idea to explore the output of `make help`.

### Launch Nomad Server

Create automation that starts the nomad server on the machine running the CI, that should accept the localhost (and only that) as a client.

It is preferred that this is started as a daemon via [launchd](https://www.launchd.info/).

### Launch Nomad Client

Create automation that starts the nomad client on the machine running the CI, and add it to the nomad server with the datacenter name "nomad-challenge-dc".

We prefer this specific step to be done purely via Ansible against the local machine. No need to template everything, this is a CI workflow.

It is preferred that this is started as a daemon via [launchd](https://www.launchd.info/).

### Test Job

Launch a nomad job [shell/raw_exec](https://developer.hashicorp.com/nomad/docs/drivers/raw_exec) with task name of "nomad-challenge-job", that runs the challenge.sh script from the root of this directory.

Make sure your step waits for the job to complete!

Hint: nomad job init --short and the link above.

### Test Run

Execute the script in the `infra-tests` directory called `test.sh`.

### Deploy artifact

Use the `deploy-to-bitrise-io` step to upload the customized nomad binaries from the "$HOME/artifacts" directory.

# Submit your solution

See the 06-submit.md
