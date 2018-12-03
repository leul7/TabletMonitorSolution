/* Query 4 
Look up ID, Make, Model for a device, given a device id */
select ID, Make, Model, Condition
from DEVICE, DEVICE_MODEL
where DEVICE.PurchaseDate = DEVICE_MODEL.PurchaseDate 
AND DEVICE.ID = 9 

/*Query 5
 List all tablets (their Id, make and model) that can be checked out
 This query lists all tablet that can be checked-out order by purchase date */
select Device.ID as DeviceID, DEVICE_MODEL.Make, DEVICE_MODEL.Model
from DEVICE_MODEL, DEVICE
where DEVICE_MODEL.PurchaseDate = DEVICE.PurchaseDate 
and device.IsCheckedOut = 0 order by DEVICE_MODEL.PurchaseDate 

/* Query 6
This query help to determine the number of tablets in the company vs the number of employees. */
select count(distinct Device.id) as " number of tablets in the company", 
count(distinct employee.id) as "Number of employee in the company" 
from Device, employee
