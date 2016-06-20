# Oracle Monitoring in Oracle APEX (OMonAPEX)

## OMonAPEX?
Monitoring a database is one of the main tasks of database administrators. There are various tools and facilities available for this purpose. Some of these tools that can be noted is Oracle EM tool which is a perfect choice. But In many cases, the employer may requests monitoring the database, and providing access to that environment is accompanied by substantial risk. To do so, one of the safe and alternative ways of providing monitoring reports is to hand a program to provide the monitoring. OMonAPEX is a database monitoring application that can provide a great and beautiful monitoring report in the Oracle APEX. The goal of OMonAPEX application is to be as simple as possible to install and use.


Introduction Application now available: [Introduction](https://apex.oracle.com/pls/apex/f?p=63389:1)


## Feedback/Issues
Please submit any feedback, suggestions, or issues on the project's issue page.

## Installation
If you're new to Oracle APEX, it's recommended you simply install Oracle APEX 5 or higher on your system and then create a new workspace. Then create a user/schema on your database and grant select any dictionary to new user. Download application (f500.sql) from project’s GitHub page and import it into your new workspace environment to get up and running as quickly as possible. Once you are comfortable using this application, it is recommended to restrict the privileges and customize your application.

## How to download and install
1. Using sql*plus or SQL Developer, connect to the database as system or a user with the DBA role.

2. Run:

```sql
create user DBMON identified by DBMON;
grant select any dictionary to DBMON;
```

Please change `DBMON` password to what you want.

3. Check new user privileges as system or a user with the DBA role:

```sql
select * from dba_sys_privs where privilege = 'SELECT ANY DICTIONARY';
```

4. Create your new Workspace on your new schema that created on step 2: name it for example WS_DBMON

5. Download Monitoring application (OMonAPEX) from project’s GitHub page. Under the [`releases`](/Release) directory, simply unzip the corresponding version: `f500.sql`

6. Log in to your workspace, import monitoring application (`f500.sql`) and install it.


## Grants
To access data dictionary tables and views we grant `SELECT ANY DICTIONARY` to new created user. `SELECT ANY DICTIONARY` is a system privilege, which remains active throughout the sessions and allows the user to create stored objects on objects on which it has privileges as a result of the grant.
Please pay attention to this article [about new behavior in Oracle Database 12c and 11.2.0.4: SELECT ANY DICTIONARY with reduced privilege set](https://blogs.oracle.com/UPGRADE/entry/change_in_12c_select_any)


## Previous Installations
OMonAPEX will be updated regularly, new application export file will be available after each release on project’s GitHub page. To use new version, just replace it on your previous application or import and install it separately and then remove your previous version.


## Uninstall
To uninstall OMonAPEX simply delete it from your workspace and revoke the privileges from user by running this command:
```sql
revoke select any dictionary from dbmon;
```

## Screen Shot and Demo
![ScreenShot](https://cloud.githubusercontent.com/assets/13412866/16200150/57bc5ae2-3721-11e6-874c-81b0d48292dd.png)

To see application screen shots : [Demo Page](http://iranapex.ir/database-monitoring-in-oracle-apex5/)


## Known Issues
If gauge regions on home page those not show, it’s a known issue that will fix on next release.


## Supported APEX Versions
OMonAPEX is compatible with Oracle Application Express 5.0 and above. If you are using version below 5.0, you will be able to use this application but you should change Universal Theme to another theme like theme 25. There is also another, even better option. Upgrade your APEX to version 5.0 :)


## Sponsors
OMonAPEX is maintained and sponsored by [IRANAPEX](http://www.iranapex.ir).


## History
Monitoring application was originally created by Karsten Thiele and is now maintained by OraOpenSource.


## Version
Version 1.0. 

Version 1.1. (Monday - 2016 20 June)

## Change log

# 1.1
Introduction Application now available. [Introduction](https://apex.oracle.com/pls/apex/f?p=63389:1)

More accurate reports. All reports were reviewed to display informations smarter and more straightforward.

Detail information are now available on "Single Row View" in Interactive Reports.

Nice Login Page.

"Show Maximize Button" property on all report regions. 

Full Screen Button on home page.

Red Vita Theme Style now available.

Drill down reports in Scheduler Jobs section.

# 1.0
Initial Release

## Contributing to project
Now if you have any issue or any improvement or feature to add, here is how you can take action.

-	If you find a bug in application and you don’t know how to fix it, have trouble following the documentation or have a question about the application please create an issue! Whatever issue you’re having, you’re likely not the only one, so others will find your issue helpful, too. Before creating an issue please check existing issues for your issue, also be clear and Include details.
-	If you’re able to patch the bug or add the feature yourself – fantastic, make a pull request! and let us know. Once you’ve submitted a pull request the maintainer(s) can compare your branch to the existing one and decide whether or not to incorporate (pull in) your changes. Oh, remember, please create a branch for your edits.
-	Once you’ve opened a pull request a discussion will start around your proposed changes. Other contributors and users may chime in, but ultimately the decision is made by the maintainer(s).
