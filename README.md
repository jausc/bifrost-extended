**Bifrost Extended Docker Image**

This repository provides a custom Docker image based on the Bifrost image maximhq/bifrost. It extends the base image by adding commonly used development tools for working with JavaScript and Python.

The image includes curl and certificate packages for network communication, bash as a shell, Node.js with npm for JavaScript development, and Python 3 with pip for Python environments. In addition, the modern Python package manager “uv” is installed to enable faster and more efficient dependency management.

The working directory inside the container is set to /app, which can be used as the default location for your projects.

**Usage**

The Docker image is automatically built and published to the GitHub Container Registry. You can pull and use it in your own projects directly from there. Tags are generated automatically based on branches, releases, and a default “latest” tag.

**Continuous Integration**

This repository uses GitHub Actions to build and publish the Docker image. The workflow runs whenever changes are pushed to the main branch, when version tags are created, on a daily schedule, or when triggered manually.

During the workflow, the repository is checked out, authenticated with the GitHub Container Registry, and the Docker image is built and pushed with appropriate tags.

**Customization**

The image is designed to be easily extendable. You can modify the Dockerfile to add additional tools or dependencies depending on your project requirements.
