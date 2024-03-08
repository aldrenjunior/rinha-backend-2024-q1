from fastapi import FastAPI
from .database import SessionLocal


app = FastAPI()


async def get_session():
    session = SessionLocal()
    try:
        yield session
    finally:
        session.close()
