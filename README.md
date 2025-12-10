# STAT315_Final_Project
STAT 315 Computational Data Science Final Project. Using GitHub, Docker, SQL, and Python to do data analysis on Steam Game Dataset 2025 from Kaggle (https://www.kaggle.com/datasets/artermiloff/steam-games-dataset).

## Build the Docker Image

Open a terminal or PowerShell instance and navigate to the directory containing the Dockerfile, then build the image using:

```powershell
docker build -t stat315_final:1.0 .
```

This will create a Docker image tagged as `stat315_final:1.0`.

## Run the Docker Container

To run a Docker container from this image and access the Jupyter notebook, use:

```powershell
docker run -v "C:\Users\lamda\Downloads\TAMU\Fall 2025\STAT-315\STAT315_Final:/home/notebooks" -p 8888:8888 --name stat315_container stat315_final:1.0
```

**Notes:** 
- Ensure you have Docker Desktop open.
- You will need to modify the local file path in the Docker volume specification (`-v` flag) to match your local file path. Replace `C:\Users\lamda\Downloads\TAMU\Fall 2025\STAT-315\STAT315_Final` with the full path to your project directory.
- Ensure the port 8888 is available.

**Possible errors**
- If this error happens to you:

```powershell
docker: Error response from daemon: failed to set up container networking: driver failed programming external connectivity on endpoint stat315_container (65403970a2fb4d71a5880fc48617a550f2730778004111c838d75e70bd599f7a): Bind for 0.0.0.0:8888 failed: port is already allocated
```

Go to Docker Desktop and look for any containers running in that port.

- If this error happens to you:

```powershell
docker: Error response from daemon: Conflict. The container name "/stat315_container" is already in use by container "f1d8dab1bd49a6f412d6308a51198cff4c9fa6cae606245053559bd6020aee8d". You have to remove (or rename) that container to be able to reuse that name.
```

Go to Docker Desktop and look for a container that has the same container name and remove it.

Once the container is running, open your browser and navigate to `http://localhost:8888` to access Jupyter Notebook.
