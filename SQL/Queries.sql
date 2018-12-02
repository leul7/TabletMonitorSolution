select ID, Make, Model, Condition
from DEVICE, DEVICE_MODEL
where DEVICE.PurchaseDate = DEVICE_MODEL.PurchaseDate 
AND DEVICE.ID = 9 