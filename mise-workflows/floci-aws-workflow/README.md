# ☁️ Floci AWS Workflow
_______________________________________________________________________________

```bash
mkdir floci-aws-workflow && cd floci-aws-workflow
```
_______________________________________________________________________________

```bash
mise use aws-cli@latest  
```
_______________________________________________________________________________

```bash
mise use "github:floci-io/floci-cli@latest"
```
_______________________________________________________________________________

Your `mise.toml` file should now look like this
```toml
[tools]
aws-cli = { version = "latest", symlink_bins = "true" }
"github:floci-io/floci-cli" = "latest"
```
_______________________________________________________________________________
