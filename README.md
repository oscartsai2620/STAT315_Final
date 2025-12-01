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

Once the container is running, open your browser and navigate to `http://localhost:8888` to access Jupyter Notebook.
