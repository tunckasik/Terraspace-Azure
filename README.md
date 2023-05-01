# Terraspace-Azure Project
This Terraspace Azure project provides a collection of Terraform configurations and modules to provision cloud infrastructure on Azure using the Terraspace Framework. The project is designed to be modular and reusable, allowing you to deploy and manage your infrastructure with ease.

## Prerequisites
  - Terraform (version 0.14 or later)
  - Terraspace CLI (Follow the installation instructions below if not already installed)
  - Azure CLI (version 2.0 or later)
### Terraspace CLI Installation

If Terraspace is not installed on your system, follow these quickstart instructions for different operating systems:

  ###### Mac OSX
  ```bash
  brew tap boltops-tools/software
  brew install terraspace
  ```
  For more information, refer to the [Mac OSX Install](https://terraspace.cloud/docs/install/macos/) guide.

  ###### CentOS/RedHat/Fedora
  
  ```arduino
  sudo su
  curl -so /etc/yum.repos.d/boltops.repo https://yum.boltops.com/boltops.repo
  rpm --import https://yum.boltops.com/boltops-key.public
  yum install -y terraspace
  ```
  For more information, refer to the [CentOS Install](https://terraspace.cloud/docs/install/centos/) guide.

  ###### Ubuntu/Debian
  ```vbnet
  sudo su
  echo "deb https://apt.boltops.com stable main" > /etc/apt/sources.list.d/boltops.list
  curl -s https://apt.boltops.com/boltops-key.public | apt-key add -
  apt-get update
  apt-get install -y terraspace
  ```
  For more information, refer to the [Ubuntu Install](https://terraspace.cloud/docs/install/ubuntu/) guide.

## Getting Started
1. Clone the repository:
      ```bash
      git clone https://github.com/tunckasik/Terraspace-Azure.git
      cd Terraspace-Azure
      ```

1. Install required Terraform modules:
      ```
      terraspace bundle
      ```

1. Set up your environment variables:
      ```
      export TS_ENV=<name of your tfvars file>
      export ARM_SUBSCRIPTION_ID=<your Azure subscription ID>
      ```
## Deployment
#### Deploy All Stacks
To deploy all the infrastructure stacks in the project, run:

  ```css
  terraspace all up
  ```
#### Deploy Individual Stacks
To deploy an individual stack, run:

```
terraspace up <stack_name> # Replace <stack_name> with the desired stack (e.g., demo) from app/stacks/<stack_name>
```

## Terrafile
The Terrafile is a configuration file that lists the modules and their sources used in the project. To add more modules, simply update the Terrafile with the required module information.

For example:

```bash
mod "example_module", source: "Azure/example_module/azurerm", version: "1.0.0"
```

After updating the Terrafile, run **terraspace bundle** to install the new modules.

## Support and Contributions
If you encounter any issues or have questions about this project, please open an issue in the GitHub repository.

Contributions to this project are welcome
