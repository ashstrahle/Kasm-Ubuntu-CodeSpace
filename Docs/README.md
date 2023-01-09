# Kasm-Ubuntu-Dev
**Ubuntu Desktop with PowerShell** for Kasm (Ideal for Raspberry Pi)

Containerised Ubuntu Development with PowerShell, streamed to your browser, running on a Raspberry Pi 😳

![](/docs/kasm-ubuntu-dev-screenshot-1.png)




This repository creates a custom Kasm Ubuntu Development with PowerShell Docker image.

## Installation

- Run the following to create the required Docker image:

      docker build -t ubuntu-dev -f Dockerfile .

- Create the Kasm Workspace as per below:

![](/docs/kasm-ubuntu-dev-setup.png)

- Be sure to configure **Persistent Profile Path** so that user details are saved.sa

Enjoy!