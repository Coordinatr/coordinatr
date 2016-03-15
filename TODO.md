# Todo List

- OAuth
  - [ ] Facebook & Google at minimum
- Schema
  - [ ] Users -- preferences, contact info
  - [ ] Other
- APIs 
  - [ ] OAuth - Facebook, etc.
  - [ ] Google Maps - navigation (routing), geolocation (fetch user current location)
- Controllers / models
  - [ ] Figure out what goes here
- Calculations
  - [ ] Decide where calculations are handled
  - [ ] Write calculation logic (see below)
- [ ] User notification system

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