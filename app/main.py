from fastapi import FastAPI

app = FastAPI(title="ecs-eks-demo")


@app.get("/")
def root():
    return {"message": "Hello from ECS/EKS demo", "version": "1.0.0"}


@app.get("/health")
def health():
    return {"status": "ok"}