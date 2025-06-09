resource "kubernetes_secret" "repo" {
  metadata {
    name      = "private-repo"
    namespace = "argocd"
    labels = {
      "argocd.argoproj.io/secret-type" = "repository"
    }
  }

  data = {
    name          = "iti_gp"
    type          = "git"
    url           = "https://github.com/AdhamBasheir/iti-test.git"
    username      = var.github_name
    password      = var.github_privatekey
  }

  type = "Opaque"
}