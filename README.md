# DevOps

Terraform and related things :robot:

Modules are symlinked within roots ([hashicorp/terraform#23333][1]).

Private files are kept in a `devops-private` private repo connected as a [Git submodule][2] with a mirrored structure and then symlinked back in the public repo — so you won't be able to see those files publicly, but they are mostly just more configs similar to what's already in the `devops` public repo.

[1]: https://github.com/hashicorp/terraform/issues/23333#issuecomment-564662878
[2]: https://git-scm.com/book/en/v2/Git-Tools-Submodules
