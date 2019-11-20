# hotel-api

This is an API about bookings in a hotel

## Setup

Just run the bin setup:

```bash
  bin/setup
```

To run the app:

```bash
  rails server
```
## Endpoinds:💎

* GET Users:
```bash
   localhost:3000/users
```
* GET Rooms:
```bash
   localhost:3000/rooms
```
* GET Bookings:
```bash
   localhost:3000/bookings
```
* POST Bookings:
```bash
   localhost:3000/bookings
```
```bash
   HEADER:
   {
	"booking":{
		"user_id":1,
		"room_id":2,
		"check_in":"2019-10-18",
		"check_out":"2019-10-19"
	}
}
```
* PUT Bookings:
```bash
   localhost:3000/bookings
```
```bash
   HEADER:
{
	"booking":{
		"minibar":35000
	}
}
```

## Pending
- Install rspec
- Create tests
