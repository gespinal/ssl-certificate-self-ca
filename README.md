## Create Your Own SSL Certificate Authority + WildCard Domain for Local HTTPS Development

### Notes:

This script is designed to work on Ubuntu (works on WSL2 perfectly), but can be adapted to work under any linux distribution.

### How to run this:

If you want a local domain, let's say `example.com`, simply run the script.

`./script.sh example.com` 

This will generate your certificate and key files under the `./certs` directory in the following format...

CERT: `example.com.crt`

KEY: `example.com.key` 

The script will also add it to your OS certificate list, including Windows if under WSL2.
