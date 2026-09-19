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
