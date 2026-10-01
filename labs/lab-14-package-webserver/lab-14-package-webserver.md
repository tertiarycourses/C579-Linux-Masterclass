# Lab 14 — Package Management and Web Server Deployment

**Course:** Linux Masterclass (C579)  
**Topic 03:** Linux Networking Configuration  
**Objective:** Configure software products and deploy a release to the platform, then test it  
**Platform:** [KillerCoda Ubuntu Playground](https://killercoda.com/playgrounds/scenario/ubuntu)

## Goal

Manage software with APT and dpkg, then deploy a real service: install NGINX, publish a page, control the service, and run a configuration test with curl to interpret the result.

## What you'll build

A running NGINX web server serving your own index.html, verified by an HTTP 200 from curl.

**Tools:** apt, dpkg, nginx, systemctl/service, curl

## Files in this lab

- `install_web.sh`

## Step-by-step

1. Refresh the package lists (always do this first)

   ```bash
   sudo apt update
   ```

2. Search the repositories and inspect a package before installing

   ```bash
   apt search nginx 2>/dev/null | head && apt show nginx | head
   ```

3. Install the NGINX web server

   ```bash
   sudo apt install -y nginx
   ```

4. Confirm what dpkg installed

   ```bash
   dpkg -l | grep nginx
   ```

5. Start the service and check its status

   ```bash
   sudo service nginx start && service nginx status
   ```

6. Run a configuration test: request the default page and read the HTTP status

   ```bash
   curl -I http://localhost
   ```

7. Publish your own page into the web root

   ```bash
   echo '<h1>Deployed on Linux by '$(whoami)'</h1>' | sudo tee /var/www/html/index.html
   ```

8. Re-test and interpret the result — the body should now be your page

   ```bash
   curl http://localhost
   ```

9. Validate the NGINX configuration file syntax like a release engineer

   ```bash
   sudo nginx -t
   ```

10. Practise the remove/clean cycle (then reinstall if you wish)

   ```bash
   sudo apt remove -y nginx && sudo apt autoremove -y
   ```


## Test it

curl -I returns HTTP/1.1 200 OK and curl http://localhost shows your deployed heading; nginx -t reports the configuration file syntax is ok.
