EASY_TELEMETRY_CHKP_MAJORACCOUNT
=========

This project has been developed to help the customer to create their own monitoring/telemetry system in an easy and simple way using https encryption.

The stack is composed by 3 dockers (prometheus, grafana and an nginx that will work as a reverse-proxy, besides managing the certificates). 

In addition, a bash script (check_and_deploy_skyline.sh) has been developed to facilitate the deployment of skyline on the gateways/security management server.
It will be enough to copy the check_and_deploy_skyline.sh to the gateways/security management server, give them permissions and execute it.

Requirements
------------

In my case I used an ubuntu 22.04 server virtualized on esxi with 4 cores and 8gb of ram. In this I have installed docker and docker compose.


Deployment
------------

1º Copy the script check_and_deploy_skyline.sh to the gw/sms give it permissions and execute it (we will introduce the path of the json configuration file that we have previously copied and the ip address of the server where we have the docker stack). If everything went well or bad we will see something like this

2º In our server we move to the path of the project that we have downloaded, that is to say where we have located the docker-compose.yml and it will be enough to deploy it.

3º Once deployed we will go to our browser https://serverip:4438, and we will introduce the credentials that we have defined in .env ==> admin Cpwins1!

PS: If you want to modify the credentials you can modify the docker-compose commenting the line that makes reference to the database, make the modifications that you consider opportune, export the database, ...etc example:
![troubleshoting_grafanadb](https://github.com/dearevalillo/easy_telemetry_chkp_majoraccount/blob/master/images/troubleshoting_grafanadb.png)

PS2: If you want to create a self-signed certificate here is an example of how to do it.

![cert_1](https://github.com/dearevalillo/easy_telemetry_chkp_majoraccount/blob/master/images/cert_1.png)

![cert_2](https://github.com/dearevalillo/easy_telemetry_chkp_majoraccount/blob/master/images/cert_2.png)

![cert_3](https://github.com/dearevalillo/easy_telemetry_chkp_majoraccount/blob/master/images/cert_3.png)

![cert_4](https://github.com/dearevalillo/easy_telemetry_chkp_majoraccount/blob/master/images/cert_4.png)

ScreenShot
--------------

![check_and_deploy_skyline_sh_ko](https://github.com/dearevalillo/easy_telemetry_chkp_majoraccount/blob/master/images/1.png)

![check_and_deploy_skyline_sh_ok](https://github.com/dearevalillo/easy_telemetry_chkp_majoraccount/blob/master/images/2.png)

![docker_compose_up](https://github.com/dearevalillo/easy_telemetry_chkp_majoraccount/blob/master/images/docker_compose_up.png)

![docker_compose_down](https://github.com/dearevalillo/easy_telemetry_chkp_majoraccount/blob/master/images/docker_compose_down.png)

![grafana_login](https://github.com/dearevalillo/easy_telemetry_chkp_majoraccount/blob/master/images/grafana_login.png)

![grafana_dashboard](https://github.com/dearevalillo/easy_telemetry_chkp_majoraccount/blob/master/images/grafana_dashboard.png)

![grafana_machines_overview](https://github.com/dearevalillo/easy_telemetry_chkp_majoraccount/blob/master/images/grafana_machines_overview.png)

![grafana_single_machine_1](https://github.com/dearevalillo/easy_telemetry_chkp_majoraccount/blob/master/images/grafana_single_machine_1.png)

![grafana_single_machine_2](https://github.com/dearevalillo/easy_telemetry_chkp_majoraccount/blob/master/images/grafana_single_machine_2.png)

![grafana_single_machine_3](https://github.com/dearevalillo/easy_telemetry_chkp_majoraccount/blob/master/images/grafana_single_machine_3.png)

![grafana_single_machine_4](https://github.com/dearevalillo/easy_telemetry_chkp_majoraccount/blob/master/images/grafana_single_machine_4.png)


License
-------

AGPL-3.0 License

Author Information
------------------
**Public Sector Security Engineer**

**Diego Escobar Arevailllo**

[diegoe@checkpoint.com](mailto:diegoe@checkpoint.com)
