# System image build with Oracle Database support


## Prerequisites

In order to work with Oracle Database for Red Hat 3scale API Management, you will need to create a custom image as Red Hat cannot distribute the binaries of Oracle Database client.

You must download the client (basic-lite or basic), the ODBC driver and the SDK with version **19.18** in [Oracle Instant Client Downloads for Linux x86-64 (64-bit)
](https://www.oracle.com/database/technologies/instant-client/linux-x86-64-downloads.html). If the files are not present in `oracle-client-files`, they will be downloaded during the build process.

* Instant Client Package - Basic or Basic Lite
* Instant Client Package - SDK
* Instant Client Package - ODBC driver

Example:

    * [instantclient-basiclite-linux.x64-19.18.0.0.0dbru.zip](https://download.oracle.com/otn_software/linux/instantclient/1918000/instantclient-basiclite-linux.x64-19.18.0.0.0dbru.zip) or [instantclient-basic-linux.x64-19.18.0.0.0dbru.zip](https://download.oracle.com/otn_software/linux/instantclient/1918000/instantclient-basic-linux.x64-19.18.0.0.0dbru.zip)
    * [instantclient-sdk-linux.x64-19.18.0.0.0dbru.zip](https://download.oracle.com/otn_software/linux/instantclient/1918000/instantclient-sdk-linux.x64-19.18.0.0.0dbru.zip)
    * [instantclient-odbc-linux.x64-19.18.0.0.0dbru.zip]( https://download.oracle.com/otn_software/linux/instantclient/1918000/instantclient-odbc-linux.x64-19.18.0.0.0dbru.zip)

## Instructions

1 - Place the downloaded files in the `oracle-client-files` directory.

2 - Build the custom system Oracle-based image. The image tag must be a fixed image tag as in the following example:

```
$ podman build . --tag myregistry.example.com/system-oracle:2.15.0-1
```
