from fastapi import FastAPI

app = FastAPI(title="InfraLab")

@app.get("/")
def root():
    return {
        "project": "InfraLab",
        "status": "running"
    }

@app.get("/health")
def health():
    return {
        "status": "UP"
    }
