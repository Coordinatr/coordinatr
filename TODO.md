# Todo List

- OAuth
  - [ ] Facebook & Google at minimum
    - [App Academy link](https://github.com/appacademy/capstone-project-curriculum/blob/master/readings/omniauth.md) 
- Schema
  - [ ] Users -- preferences, contact info
  - [ ] Other
- APIs, etc. 
  - [ ] OAuth - Facebook, etc.
  - [ ] Travel time: [Google Maps distance matrix API](https://developers.google.com/maps/documentation/distance-matrix/)
  - [ ] Navigation: [Google Maps directions API](https://developers.google.com/maps/documentation/directions/)
  - [ ] [Geolocation](https://developer.mozilla.org/en-US/docs/Web/API/Geolocation/Using_geolocation) ([Google link](https://developers.google.com/web/fundamentals/native-hardware/user-location/obtain-location?hl=en))
- Controllers / models
  - [ ] Figure out what goes here
- Calculations
  - [ ] Decide where calculations are handled
  - [ ] Write calculation logic (see below)
- Bonus
  - Taking actions
    - [ ] User notification
    - [ ] Hail Uber 
  - Front-end
    - [ ] Google Maps API for choosing locations ([vanilla Javascript maps API](https://developers.google.com/maps/documentation/javascript/))
    - [ ] Functionality for double-click location adding -- new google.maps.Marker onDoubleClick

# Travel time calculations

## Easy: `arrival_time` provided
1. Pass `from` and `to` coordinates to Google Maps API for each user
2. Return all `transit_time` in an array
3. Calculate `departure_time = arrival_time - transit_time` for all users
4. Take action on `departure_time`
  * Ping user
  * Future -- hail Uber

## Hard: "as soon as possible"
1. Pass `from` and `to` coordinates to Google Maps API for each user
2. Return all `transit_time` in an array; sort array
3. Take action for furthest user immediately; start `countdown` from longest time
4. Take action for any user where `transit_time == countdown`

## Resources

* [Google Maps Web Service APIs](https://developers.google.com/maps/web-services/overview)