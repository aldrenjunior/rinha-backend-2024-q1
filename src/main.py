from typing import Union
from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()


class Item(BaseModel):
    name: str
    price: float
    is_offer: Union[bool] = None


@app.get("/")
async def root():
    return {"message": "Hello World"}


@app.get("/items/{item_id}")
async def read_item(item_id: int, opc: Union[str, None] = None):
    return {"item_id inserted": item_id, 'opc': opc}


@app.put("/items/{items_id}")
async def update_item(item_id: int, item: Item):
    return {"item_name": item.name, "item_id": item_id}
