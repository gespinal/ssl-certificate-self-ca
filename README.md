## Create Your Own SSL Certificate Authority + WildCard Domain for Local HTTPS Development

### Notes:

This script is designed to work on Ubuntu (works on WSL2 perfectly) and macOS, and can be adapted to work under any linux distribution.

### How to run this:

If you want a local domain, let's say **example.com**, simply run the script.

`./script.sh example.com` 

This will generate your certificate and key files under the `./certs` directory in the following format...

Authority: **example.com-CA.pem**

Certificate: **example.com-CERT.pem**

Key: **example.com.key**

The script will also add it to your OS certificate list. This includes Ubuntu Linux, macOS and Windows if under WSL2.

### Recommendations

Use Edge or Safari to test certificate. Firefox gives some trouble with CACHE and cert validation when re-created. Haven't tested this on Chrome.

In case of Firefox:

Go to: about:config

Set: security.enterprise_roots.enabled to true
