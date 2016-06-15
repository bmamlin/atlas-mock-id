MOCK OpenMRS SERVER ATLAS LOGIN MODULE
======================================

Mock login module for OpenMRS Atlas Server (https://github.com/openmrs/openmrs-contrib-atlas). This will help in mocking the login module required to login as OpenMRS user.

## Building

```bash
docker build -t omrs-mock-id .
```

## Running

```bash
docker run -d -p 3000:80 -e REDIRECT_URL=http://atlas/ omrs-mock-id
```

### Parameters

* `REDIRECT_URL` specifies where the user should be redirected (should support the `/auth` path of the multipass conversation at this URL). Note that URL should end with a "/"
* `SITE_KEY` is the multipass site key
* `API_KEY` is the multipass API key

## Usage

When running, the mock-id server will present a simple login screen. You can log in with any username by supplying the same username as the password.