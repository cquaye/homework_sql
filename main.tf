#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database
#https://cloud.google.com/sql/docs/mysql/instance-settings

resource "google_sql_database_instance" "my-db-01" {
  name                                = "my-db-01"
  region                              = "us-central1" 
  database_version                    = "POSTGRES_17" 

  settings {
    edition = "ENTERPRISE"
    tier = "db-f1-micro"
  }

  deletion_protection                 = false
}

#https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_user
resource "google_sql_user" "my-user" {
  name                   = "phatbottom"
  password               = "batmanlives"
  instance               = google_sql_database_instance.my-db-01.name
}