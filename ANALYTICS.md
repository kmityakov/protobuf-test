# Protocol Documentation
<a name="top"/>

## Table of Contents
* [analytics.proto](#analytics.proto)
 * [CommonProperties](#CommonProperties)

<a name="analytics.proto"/>
<p align="right"><a href="#top">Top</a></p>

## analytics.proto



<a name="CommonProperties"/>
### CommonProperties


| Field | Json Name |Type  | Label | Description |
| ----- | --------- | ---- | ----- | ----------- |
| event_id | event id | [string](#string) | required | Random UUID generated on client side 123e4567-e89b-12d3-a456-426655440000 |
| global_client_timestamp | Global Client Timestamp | [string](#string) | required | 8/6/2015 23:00:00 |
| local_client_timestamp | Local Client Timestamp | [string](#string) | required | 8/6/2015 23:00:00 |
| local_client_timezone | Local Client Time Zone | [string](#string) | required | PST |
| first_name | $first_name | [string](#string) | optional | Ashkon |
| last_name | $last_name | [string](#string) | optional | Nosrat |
| email | $email | [string](#string) | optional | ashkon.nostrat@mixpanel.com |
| Phone | $phone | [string](#string) | optional | (555) 555-555 |
| mc | MC | [string](#string) | optional | 782958 |
| dot | DOT | [string](#string) | optional | 2298495 |
| expected_rpm | expected rpm | [float](#float) | optional | 1.20 |
| first_open_date | First Open Date | [string](#string) | required | 8/6/2015 23:00:00 |
| last_open_date | Last Open Date | [string](#string) | required | 8/6/2015 23:00:00 |
| sign_up_date | Sign Up Date | [string](#string) | optional | 8/6/2015 23:00:00, null if not signed up |
| operating_system | Operating System | [string](#string) | required | iPhone OS, Android |
| user_latitude | User Latitude | [float](#float) | optional | 34.052234 (Users latitude at the time of event) |
| user_longitude | User Longitude | [float](#float) | optional | -118.243685 (Users longitude at the time of event) |
| user_phone | user phone | [string](#string) | optional | string length 10 symbols, i.e. 1234567890 |
| app_version | App Version | [string](#string) | required | 5.0.2 |
| internal_user_id | Internal User ID | [string](#string) | required | 0ZZdkOsAPg |
| device_os | Device O/S | [string](#string) | required | ios7.1, androidxxx 6, macosx10.7 |
| device_id | Device ID | [string](#string) | required | DFA ID and googleID |







