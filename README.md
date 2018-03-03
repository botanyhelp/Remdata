# R data frame containing Disasters wordwide from 1900-2008 

## Description 

**R Data frame of a comprehensive listing of of over 17,000 disasters, natural and otherwise, from around the globe.**

<http://www.emdat.be/> stores dates as 00002008 for a disaster that occurred in the entire year of 2008..and so such dates were changed to 20080101 YMD

At least one function exists, **disasters_bycountry()**  Here we can see some basic interaction. 

`sum(Remdat$Killed,na.rm=T)`

`sum(as.numeric(Remdat$Cost),na.rm=T)`

`levels(as.factor(Remdat$Country))`

`names(Remdat)`

`library(lubridate)`

`ymd(Remdat[1,]$Start)`

`sum(disasters_bycountry("China P Rep")$Killed,na.rm=T)`

This data is also loaded into an Android application found here:

<https://play.google.com/store/apps/details?id=com.jimsuplee.disastersworldwide>

This data, and this exact R package, are used in simple Shiny application running here:

<http://li1077-179.members.linode.com:8787/>

The code for that shiny application is in the botanyhelp/ShinyRemdat package and can be installed in R like this:

`library(devtools)`

`install_github("botanyhelp/Remdata")`

The ShinyRemdat repository contains one code file, app.R, found in this repository:

<https://github.com/botanyhelp/ShinyRemdat>

## Starting th Shiny server on linux

To start this shiny-based Remdata server: 

* listening on port 8789 
* on a machine named www.example.com
* assuming the directory named "Remdata" is in your home directory

nohup R -e "shiny::runApp('~/Remdata',port=8789,host=getOption('www.example.com'))" &

The **nohup** program at the front and the ampersand at the end are there to keep the server running even after you logout.  You should start by running the server without "nohup" and "&" until you see smooth and expected operation.  

If the linux machine is not currently running a web server, then you can change port 8789 to 80.  Shiny servers require listening on their own port and so they cannot share it with Apache.  If you do start the server on port 80 or any port < 1024, then you will need to run the above command as user *root* or by prefixing the command with *sudo*.

## Getting the Data

As you will see in a minute, the licensing is very free and open even it proprietary in wording given by the CRED.  This data is not easy to get anymore as there is not a simple zip file download.  I cannot recall if it was obtained with a persistent web crawler or if it was more easily available then.  Maybe there is a web crawler script in here, TODO: need to look for it and solve this mystery. 

## About the Data

Disasters wordwide from 1900-2008
A comprehensive listing of of over 17,000 disasters, natural and otherwise, from around the globe.

Since 1988 the WHO Collaborating Centre for Research on the Epidemiology of Disasters (CRED) has been maintaining an Emergency Events Database EM-DAT. EM-DAT was created with the initial support of the WHO and the Belgian Government.

The main objective of the database is to serve the purposes of humanitarian action at national and international levels. It is an initiative aimed to rationalise decision making for disaster preparedness, as well as providing an objective base for vulnerability assessment and priority setting. For example, it allows on to decide whether floods in a given country are more significant in terms of its human impact than earthquakes or whether a country is more vulnerable than another for computing resources is.

EM-DAT contains essential core data on the occurrence and effects of over 16,000 mass disasters in the world from 1900 to present. The database is compiled from various sources, including UN agencies, non-governmental organisations, insurance companies, research institutes and press agencies.

This is only public domain natural disaster database around (two other global sources are private: Sigma from Swiss Re and NatCat from Munich Re).

The EM-DAT database is protected by the law of 30 June 1994 on copyright and the law of 31 August 1998 on the legal protection of databases.

EM-DAT was created in 1988 at the Université Catholique de Louvain by researchers at the Centre de Recherche sur l’Epidemiologie des Desastres – Centre for Research on the Epidemiology of Disasters (CRED). The database was set up with the support of the WHO and the Belgian government. Since 1999, CRED has received support from the Office of Foreign Disaster Assistance (OFDA) of the US Agency for International Development (USAID). The Université Catholique de Louvain holds the copyright for the database.

The EM-DAT database has been made available for unrestricted access free of charge by UCL so that anyone with a query can obtain information.

