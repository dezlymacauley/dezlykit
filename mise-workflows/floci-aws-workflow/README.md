# ☁️ Floci AWS Workflow
_______________________________________________________________________________

Create the directory and enter it
```bash
mkdir floci-aws-workflow && cd floci-aws-workflow
```
_______________________________________________________________________________

Install the AWS CLI
```bash
mise use aws-cli@latest  
```
_______________________________________________________________________________

Install the Floci CLI
```bash
mise use github:floci-io/floci-cli@latest
```
_______________________________________________________________________________

Your `mise.toml` file should now look like this
```toml
[tools]
aws-cli = { version = "latest", symlink_bins = "true" }
"github:floci-io/floci-cli" = "latest"
```
_______________________________________________________________________________

Add these shell aliases to the `mise.toml` file
```toml
[shell_alias]
run = "floci start && eval $(floci env)"
floci-status= "floci status"
stop = "floci stop"
```
_______________________________________________________________________________
