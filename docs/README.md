# Kasm-Ubuntu-CodeSpace
**Ubuntu Desktop with PowerShell** for Kasm (Ideal for Raspberry Pi)

Containerised Ubuntu CodeSpace Desktop with PowerShell, streamed to your browser

![](/docs/kasm-ubuntu-codespace-screenshot-1.png)

![](/docs/kasm-ubuntu-codespace-screenshot-2.png)

This repository creates a custom Kasm Ubuntu CodeSpace with PowerShell Docker image.

## Installation

- Run the following to create the required Docker image:

      docker build -t ubuntu-dev -f Dockerfile .

- Create the Kasm Workspace as per below:

![](/docs/kasm-ubuntu-codespace-setup.png)

- Be sure to configure **Persistent Profile Path** so that user details are saved.

Enjoy!