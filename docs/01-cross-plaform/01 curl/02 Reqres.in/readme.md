# GET ONLY RESPONSE
  curl url

# GET RESPONSE AND HEADERS
  curl -i url

# GET ONLY HEADERS
  curl --head url
  curl -I url

# GET DETAILS OF CLIENT SERVER INTERERACTION
  -v verbose
  curl -v url

# MORE DETAIL TRACE
  --trace
  curl --trace file.txt url

# SEND HEADERS IN REQUEST
  -H
  curl -H "Accept:application/json"

# POST
  -d or --data
  curl url --data "name=jaime&job=teacher"

  ## using entire json
  -X POST -H "Accept:application/json" https://reqres.in/api/users -d '{"name": "jaime", "job": "teacher"}'

