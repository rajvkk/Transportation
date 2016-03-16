*REST API Documentation*
---------------------------------

This document describes the Transportation REST API, which allows users to achieve most tasks that can be done from the web UI programmatically. The API accepts JSON and form encoded content as input. The output is always in JSON format.

**AUTHENTICATION:**
-----------

Our REST APIs support token authentication. Only an account administrator can access or generate API key tokens.

Here's a sample curl request that is authenticated using the API key token.

```curl -H "Content-type: application/json" -H "Authorization: Token api_key=7ug68Q6zutSvzQUTevugvv" http://localhost:3000/api/v1/stores```


*Sample Test on how to make API Calls to this application*
------------


**Show Stores**
------

Returns json data for list of stores.

* **URL**

   `api/v1/stores?api_key=`

* **Method:**

	 GET

* **URL Params**

	**Required**

		`api/v1/stores?api_key=`

  **Optional**

    `api/v1/stores/:id.json?api_key=`


* **Success Response**

	* **Code:** 200 <br />
	*  **Content:** `{"id":9,"name":"Logistic","location":"TX","created_at":"2016-03-14T23:21:31.789Z","updated_at":"2016-03-14T23:21:31.789Z"}`

* **Error Response**

	* **Code:** 401 <br />
	* **Content:** `{"errors":"Unauthorized user","status":401}`

* **Sample Call:**

	**For GET Requests:**

	```curl -X GET http://localhost:3000/api/v1/stores?api_key="Pcb9VnCkSheP3DKJUsLSOQvv"```

	**For POST Requests:**

	```curl -X POST -d 'store[name]=Samsung' -d 'store[location]=MD' http://localhost:3000/api/v1/stores?api_key="Pcb9VnCkSheP3DKJUsLSOQvv"```

