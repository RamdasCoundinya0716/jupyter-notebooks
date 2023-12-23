# Python Jupyter Docker Container

This Dockerfile sets up a Python 3.9 environment with Jupyter notebook.

## Getting Started

### Prerequisites

Make sure you have Docker Desktop installed on your machine. You can download it from [Docker's official website](https://www.docker.com/products/docker-desktop).

### Build the Docker Image

Clone this repository to your local machine and navigate to the project directory.

```bash
git clone https://github.com/RamdasCoundinya0716/jupyter-notebooks
cd jupyter-notebooks
```

Build the Docker image using the provided Dockerfile:

```bash
docker build -t python-jupyter .
```

### Run the Docker Container with Docker Volumes

Once the image is built, you can run a container based on it. Use Docker volumes to persist your Jupyter notebook files:

```bash
docker volume create mynotebooks
docker run -p 6969:6969 -v mynotebooks:/app/notebooks python-jupyter
```

This command creates a Docker volume named `mynotebooks` and mounts it to the "notebooks" directory inside the container.

### Access Jupyter Notebook
You will see something like this : http://127.0.0.1:6969/tree?token=<token> on the terminal.

Copy the token(after token=**<token>**).

Open your web browser and go to [http://localhost:6969](http://localhost:6969). You should see the Jupyter notebook interface.

Paste the **<token>** in the token section and authenticate yourself.

Thats it. Start developing code now!

### Saving Your Work
By using a Docker volume (`mynotebooks`), your Jupyter notebook files will be saved persistently. This ensures that your work persists even if you stop and remove the Docker container.

### Additional Notes

- The `requirements.txt` file should contain the Python packages required for your project.
- The `EXPOSE` statement in the Dockerfile informs Docker that the container will listen on the specified network ports at runtime.
- The `CMD` statement defines the default command to be executed when the container starts.

Feel free to customize the Dockerfile and the configuration based on your project requirements.
```

This version uses a Docker volume named `mynotebooks` instead of a local path for persisting Jupyter notebook files.
