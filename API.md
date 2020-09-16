#####API Documentation

#####Authenticate User

.URL
/authenticate

.METHOD
POST

.DATA Params
{
    "email": "user1@gmail.com",
    "password": "12345"
}

.Success Response:
Code: 200
Content: { "auth_token": ""}

.Error Response:
Content: { error :  { "user_authentication": "invalid credentials"} }


#####Create Appointment

.URL
api/v1/appointments

.METHOD
POST


.URL Params
Required:
header: 
key: Authorization
value: jwt-token


.DATA Params
{
    "appointment":{
        "title": "",
        "start_time": "",
        "end_time": "",
        "doctor_id": ,

    }
}


.Success Response:
Code: 200

.Error Response:
Code: 401 UNAUTHORIZED


#####List all appointment
.URL
api/v1/appointments

.METHOD
GET

.URL Params
Required:
header: 
key: Authorization
value: jwt-token

.Success Response:
Code: 200

.Error Response:
Code: 401 UNAUTHORIZED