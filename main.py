from fastapi import FastAPI
from pymilvus import connections, utility
import uvicorn

app = FastAPI()

# Connect on startup
@app.on_event("startup")
def connect_milvus():
    connections.connect("default", host="localhost", port="19530")

@app.get("/")
def health():
    return {"status": "Milvus is connected."}

@app.get("/collections")
def list_collections():
    return {"collections": utility.list_collections()}

if __name__ == "__main__":
    uvicorn.run("main:app", host="0.0.0.0", port=9091)
