# System image build with Oracle Database support


## Prerequisites

In order to work with Oracle Database for Red Hat 3scale API Management, you will need to create a custom image as Red Hat cannot distribute the binaries of Oracle Database client.

You **MUST** download the client (basic-lite or basic), the odbc driver and the sdk for **19.6** in [Oracle Technology Network](https://www.oracle.com/technetwork/database/features/instant-client/index-097480.html).

* Instant Client Package - Basic or Basic Lite
* Instant Client Package - SDK
* Instant Client Package - ODBC driver

Example:

    * instantclient-basiclite-linux.x64-19.6.0.0.0dbru.zip or instantclient-basic-linux.x64-19.6.0.0.0dbru.zip
    * instantclient-sdk-linux.x64-19.6.0.0.0dbru.zip
    * instantclient-odbc-linux.x64-19.6.0.0.0dbru.zip

## Instructions

1 - Place the downloaded files in the `oracle-client-files` directory.


2 -  Build the custom system Oracle-based image. The image tag must be a fixed image tag as in the following example:

```
$ docker build . --tag myregistry.example.com/system-oracle:2.13.0-1
```
