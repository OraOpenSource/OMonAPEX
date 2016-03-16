set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.1.00.06'
,p_default_workspace_id=>2085683539749568
,p_default_application_id=>500
,p_default_owner=>'HR'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 500 - APEX ADMIN MONITORING
--
-- Application Export:
--   Application:     500
--   Name:            APEX ADMIN MONITORING
--   Date and Time:   10:14 Saturday February 27, 2016
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.1.00.06
--   Instance ID:     102270577498120
--

-- Application Statistics:
--   Pages:                     34
--     Items:                   10
--     Processes:                6
--     Regions:                 81
--     Buttons:                 11
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:             32
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               8
--       Plug-ins:               2
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,500)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'DBAMON')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'APEX ADMIN MONITORING')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_500')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'3ACD230D1F1E38C0C39651AD4442F5BF747B8B57778884F02888E3291F24BFD2'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(67613309683476253)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:APEX ADMIN MONITORING'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160227100923'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(67570962369476070)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(67614567070476267)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(67634568065576294)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Database'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-database'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(67649368717622057)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'SGA'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:::'
,p_parent_list_item_id=>wwv_flow_api.id(67634568065576294)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(67649677100624620)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'PGA'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP,4:::'
,p_parent_list_item_id=>wwv_flow_api.id(67634568065576294)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(67650580834639598)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'DB Parameter'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(67634568065576294)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(67659768469653978)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Buffer Pool Keep Candidates'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(67634568065576294)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(67770718211419244)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Version and Patches'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(67634568065576294)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(67790357832515981)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'RealTime Monitor'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-flash'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(67798043764548742)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Locks'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_api.id(67790357832515981)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(67798582372556768)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'DDL Locks'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(67798043764548742)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(67805852818679771)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'DML Lock'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(67798043764548742)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(67815527436698883)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Library Cache Lock'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(67798043764548742)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(67822282072707605)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Library Cache Pin'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_api.id(67798043764548742)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(67833775674720998)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Database Sessions'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(67790357832515981)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(67888499769777447)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'SQL Statements'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(67790357832515981)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(67928143307810404)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Temp Usage'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(67790357832515981)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(67934419974820604)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Bind Variables'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(67790357832515981)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(67944553737836211)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'SQL Statistics'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(67790357832515981)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'19'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(67964339098851335)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Segment Statistics'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(67790357832515981)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(67976958656875046)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Index Segment Statistic'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(67790357832515981)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'21'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(68013284374898530)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Session Long Operations'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(67790357832515981)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(68026291241904742)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'PGA Memory Usage'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(67790357832515981)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'23'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(68032980159911781)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Objects'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-file-text'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(68033454771917139)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Tablespaces'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(68032980159911781)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'24'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(68039223631931919)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>'Segments'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(68032980159911781)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'25'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(68052780757967423)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>'Objects'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(68032980159911781)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'26'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(68062147292995491)
,p_list_item_display_sequence=>270
,p_list_item_link_text=>'Indexes'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(68032980159911781)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'27'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(68088622779087822)
,p_list_item_display_sequence=>280
,p_list_item_link_text=>'Extents'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(68032980159911781)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'28'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(68095877269117914)
,p_list_item_display_sequence=>290
,p_list_item_link_text=>'Total Table Space'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(68032980159911781)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'29'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(68099809127130585)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>'Waste Space'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(68032980159911781)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(68105572854147679)
,p_list_item_display_sequence=>310
,p_list_item_link_text=>'APEX'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-send'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(68106058696152434)
,p_list_item_display_sequence=>320
,p_list_item_link_text=>'APEX Activity'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(68105572854147679)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'31'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(68125842281210418)
,p_list_item_display_sequence=>330
,p_list_item_link_text=>'Mail Log'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(68105572854147679)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'32'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(68134423959216621)
,p_list_item_display_sequence=>340
,p_list_item_link_text=>'Apex Mail Queue'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(68105572854147679)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'33'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(68142989047219187)
,p_list_item_display_sequence=>350
,p_list_item_link_text=>'Jobs'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-stack-exchange'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(68143417914224280)
,p_list_item_display_sequence=>360
,p_list_item_link_text=>'Scheduler Jobs'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(68142989047219187)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'34'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(68171573611261654)
,p_list_item_display_sequence=>370
,p_list_item_link_text=>'Scheduler Job Log'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(68142989047219187)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'35'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(68182634507296420)
,p_list_item_display_sequence=>380
,p_list_item_link_text=>'Scheduler Job Run Details'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(68142989047219187)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'36'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(68254011462410982)
,p_list_item_display_sequence=>390
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-gear'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(68254597463418083)
,p_list_item_display_sequence=>400
,p_list_item_link_text=>'Theme Style'
,p_list_item_link_target=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(68254011462410982)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'37'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(67613071530476245)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(67613262849476248)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(67570680144476070)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(67570799532476070)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(67570848358476070)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(68209607846817468)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'PLUGIN_COM.ORACLE.APEX.FLOT.PIE'
,p_attribute_01=>'1.333'
,p_attribute_02=>'1.5'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(68215041657872568)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'PLUGIN_COM.ORACLE.APEX.D3.BARCHART'
,p_attribute_01=>'3'
,p_attribute_02=>'1.333'
,p_attribute_03=>'480'
,p_attribute_04=>'REGION'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(67614454121476265)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(67614886414476268)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(67646442985612129)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'PGA'
,p_link=>'f?p=&APP_ID.:4:&SESSION.'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(67651474803639600)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'DB Parameter'
,p_link=>'f?p=&APP_ID.:5:&SESSION.'
,p_page_id=>5
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(67660639707653988)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'Buffer Pool Keep Candidates'
,p_link=>'f?p=&APP_ID.:6:&SESSION.'
,p_page_id=>6
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(67771536126419279)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'Version and Patches'
,p_link=>'f?p=&APP_ID.:7:&SESSION.'
,p_page_id=>7
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(67799464586556768)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'DDL Locks'
,p_link=>'f?p=&APP_ID.:9:&SESSION.'
,p_page_id=>9
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(67806768983679775)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'DML Lock'
,p_link=>'f?p=&APP_ID.:10:&SESSION.'
,p_page_id=>10
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(67816408577698883)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'Library Cache Lock'
,p_link=>'f?p=&APP_ID.:11:&SESSION.'
,p_page_id=>11
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(67823143129707607)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'Library Cache Pin'
,p_link=>'f?p=&APP_ID.:13:&SESSION.'
,p_page_id=>13
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(67834600901720998)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'Database Sessions'
,p_link=>'f?p=&APP_ID.:14:&SESSION.'
,p_page_id=>14
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(67889351052777447)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'SQL Statements'
,p_link=>'f?p=&APP_ID.:15:&SESSION.'
,p_page_id=>15
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(67929032445810405)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'Temp Usage'
,p_link=>'f?p=&APP_ID.:16:&SESSION.'
,p_page_id=>16
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(67935314486820608)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'Bind Variables'
,p_link=>'f?p=&APP_ID.:17:&SESSION.'
,p_page_id=>17
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(67945456171836211)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'SQL Statistics'
,p_link=>'f?p=&APP_ID.:19:&SESSION.'
,p_page_id=>19
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(67965277458851337)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'Segment Statistics'
,p_link=>'f?p=&APP_ID.:20:&SESSION.'
,p_page_id=>20
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(67977876689875046)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'Index Segment Statistic'
,p_link=>'f?p=&APP_ID.:21:&SESSION.'
,p_page_id=>21
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(68014101255898530)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'Session Long Operations'
,p_link=>'f?p=&APP_ID.:22:&SESSION.'
,p_page_id=>22
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(68027113241904742)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'PGA Memory Usage'
,p_link=>'f?p=&APP_ID.:23:&SESSION.'
,p_page_id=>23
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(68034365945917141)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'Tablespaces'
,p_link=>'f?p=&APP_ID.:24:&SESSION.'
,p_page_id=>24
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(68040119345931921)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'All Segments'
,p_link=>'f?p=&APP_ID.:25:&SESSION.'
,p_page_id=>25
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(68053643766967423)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'Objects'
,p_link=>'f?p=&APP_ID.:26:&SESSION.'
,p_page_id=>26
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(68063021701995493)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'Indexes'
,p_link=>'f?p=&APP_ID.:27:&SESSION.'
,p_page_id=>27
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(68089588824087822)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'Extents'
,p_link=>'f?p=&APP_ID.:28:&SESSION.'
,p_page_id=>28
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(68096724235117916)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'Total Table Space Usage'
,p_link=>'f?p=&APP_ID.:29:&SESSION.'
,p_page_id=>29
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(68100763435130585)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'Waste Space'
,p_link=>'f?p=&APP_ID.:30:&SESSION.'
,p_page_id=>30
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(68106953841152439)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'APEX Activity'
,p_link=>'f?p=&APP_ID.:31:&SESSION.'
,p_page_id=>31
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(68126782871210420)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'Apex Mail Log'
,p_link=>'f?p=&APP_ID.:32:&SESSION.'
,p_page_id=>32
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(68135389720216621)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'Apex Mail Queue'
,p_link=>'f?p=&APP_ID.:33:&SESSION.'
,p_page_id=>33
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(68144317512224280)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'Scheduler Jobs'
,p_link=>'f?p=&APP_ID.:34:&SESSION.'
,p_page_id=>34
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(68172415560261654)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'Scheduler Job Log'
,p_link=>'f?p=&APP_ID.:35:&SESSION.'
,p_page_id=>35
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(68183512590296422)
,p_parent_id=>wwv_flow_api.id(67614886414476268)
,p_short_name=>'Scheduler Job Run Details'
,p_link=>'f?p=&APP_ID.:36:&SESSION.'
,p_page_id=>36
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(68255443836418105)
,p_short_name=>'Application Theme Style'
,p_link=>'f?p=&APP_ID.:37:&SESSION.'
,p_page_id=>37
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(67571097526476101)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67571172976476107)
,p_page_template_id=>wwv_flow_api.id(67571097526476101)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67571204703476107)
,p_page_template_id=>wwv_flow_api.id(67571097526476101)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67571337604476107)
,p_page_template_id=>wwv_flow_api.id(67571097526476101)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67571425818476107)
,p_page_template_id=>wwv_flow_api.id(67571097526476101)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67571511272476107)
,p_page_template_id=>wwv_flow_api.id(67571097526476101)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67571693712476107)
,p_page_template_id=>wwv_flow_api.id(67571097526476101)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67571739850476107)
,p_page_template_id=>wwv_flow_api.id(67571097526476101)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67571887242476107)
,p_page_template_id=>wwv_flow_api.id(67571097526476101)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(67571981358476139)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67572041895476140)
,p_page_template_id=>wwv_flow_api.id(67571981358476139)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67572178928476140)
,p_page_template_id=>wwv_flow_api.id(67571981358476139)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67572272353476140)
,p_page_template_id=>wwv_flow_api.id(67571981358476139)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67572341566476140)
,p_page_template_id=>wwv_flow_api.id(67571981358476139)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67572431425476140)
,p_page_template_id=>wwv_flow_api.id(67571981358476139)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67572550715476140)
,p_page_template_id=>wwv_flow_api.id(67571981358476139)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67572692607476140)
,p_page_template_id=>wwv_flow_api.id(67571981358476139)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67572701878476140)
,p_page_template_id=>wwv_flow_api.id(67571981358476139)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67572826431476140)
,p_page_template_id=>wwv_flow_api.id(67571981358476139)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(67572994327476142)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67573052039476142)
,p_page_template_id=>wwv_flow_api.id(67572994327476142)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67573144767476142)
,p_page_template_id=>wwv_flow_api.id(67572994327476142)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(67573265080476142)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67573308490476142)
,p_page_template_id=>wwv_flow_api.id(67573265080476142)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67573445442476142)
,p_page_template_id=>wwv_flow_api.id(67573265080476142)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67573535184476142)
,p_page_template_id=>wwv_flow_api.id(67573265080476142)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67573672617476142)
,p_page_template_id=>wwv_flow_api.id(67573265080476142)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67573750098476142)
,p_page_template_id=>wwv_flow_api.id(67573265080476142)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67573891984476142)
,p_page_template_id=>wwv_flow_api.id(67573265080476142)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67573985911476142)
,p_page_template_id=>wwv_flow_api.id(67573265080476142)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67574005216476142)
,p_page_template_id=>wwv_flow_api.id(67573265080476142)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67574109576476142)
,p_page_template_id=>wwv_flow_api.id(67573265080476142)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(67574275347476143)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67574303845476145)
,p_page_template_id=>wwv_flow_api.id(67574275347476143)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67574455716476145)
,p_page_template_id=>wwv_flow_api.id(67574275347476143)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67574584184476145)
,p_page_template_id=>wwv_flow_api.id(67574275347476143)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67574692956476145)
,p_page_template_id=>wwv_flow_api.id(67574275347476143)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67574712214476145)
,p_page_template_id=>wwv_flow_api.id(67574275347476143)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67574898205476145)
,p_page_template_id=>wwv_flow_api.id(67574275347476143)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67574935005476145)
,p_page_template_id=>wwv_flow_api.id(67574275347476143)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(67575096668476146)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67575113608476146)
,p_page_template_id=>wwv_flow_api.id(67575096668476146)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67575234636476146)
,p_page_template_id=>wwv_flow_api.id(67575096668476146)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67575342872476146)
,p_page_template_id=>wwv_flow_api.id(67575096668476146)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(67575417774476146)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67575594181476146)
,p_page_template_id=>wwv_flow_api.id(67575417774476146)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67575637936476146)
,p_page_template_id=>wwv_flow_api.id(67575417774476146)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67575730019476146)
,p_page_template_id=>wwv_flow_api.id(67575417774476146)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67575842747476146)
,p_page_template_id=>wwv_flow_api.id(67575417774476146)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67575997633476146)
,p_page_template_id=>wwv_flow_api.id(67575417774476146)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67576020191476146)
,p_page_template_id=>wwv_flow_api.id(67575417774476146)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67576154625476146)
,p_page_template_id=>wwv_flow_api.id(67575417774476146)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67576204990476146)
,p_page_template_id=>wwv_flow_api.id(67575417774476146)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(67576325968476146)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67576442388476148)
,p_page_template_id=>wwv_flow_api.id(67576325968476146)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67576512495476148)
,p_page_template_id=>wwv_flow_api.id(67576325968476146)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67576684501476148)
,p_page_template_id=>wwv_flow_api.id(67576325968476146)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67576751912476148)
,p_page_template_id=>wwv_flow_api.id(67576325968476146)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67576809696476148)
,p_page_template_id=>wwv_flow_api.id(67576325968476146)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67576998509476148)
,p_page_template_id=>wwv_flow_api.id(67576325968476146)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67577000702476148)
,p_page_template_id=>wwv_flow_api.id(67576325968476146)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(67577135192476151)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon fa-times"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67577230963476151)
,p_page_template_id=>wwv_flow_api.id(67577135192476151)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67577364086476151)
,p_page_template_id=>wwv_flow_api.id(67577135192476151)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(67577425179476151)
,p_page_template_id=>wwv_flow_api.id(67577135192476151)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(67607893416476224)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(67607950040476224)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(67608016817476224)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(67577516305476154)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(67577637813476154)
,p_plug_template_id=>wwv_flow_api.id(67577516305476154)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(67579097657476170)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(67579144638476171)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(67579285946476171)
,p_plug_template_id=>wwv_flow_api.id(67579144638476171)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(67579381590476171)
,p_plug_template_id=>wwv_flow_api.id(67579144638476171)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(67580052472476171)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(67580171145476173)
,p_plug_template_id=>wwv_flow_api.id(67580052472476171)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(67580223451476173)
,p_plug_template_id=>wwv_flow_api.id(67580052472476171)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(67583441075476185)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(67583593914476185)
,p_plug_template_id=>wwv_flow_api.id(67583441075476185)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(67583604959476185)
,p_plug_template_id=>wwv_flow_api.id(67583441075476185)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(67585562438476189)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(67585690271476189)
,p_plug_template_id=>wwv_flow_api.id(67585562438476189)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(67585732643476189)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(67585815354476189)
,p_plug_template_id=>wwv_flow_api.id(67585732643476189)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(67586649206476189)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(67586940208476190)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(67587011454476190)
,p_plug_template_id=>wwv_flow_api.id(67586940208476190)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(67587118660476190)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(67587237034476190)
,p_plug_template_id=>wwv_flow_api.id(67587118660476190)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(67587356136476190)
,p_plug_template_id=>wwv_flow_api.id(67587118660476190)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(67589272040476193)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(67589356099476193)
,p_plug_template_id=>wwv_flow_api.id(67589272040476193)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(67589459865476193)
,p_plug_template_id=>wwv_flow_api.id(67589272040476193)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(67590474734476193)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(67590923426476193)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(67591036817476193)
,p_plug_template_id=>wwv_flow_api.id(67590923426476193)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(67599167302476206)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(67600858696476207)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(67602954731476207)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-'
||'badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #IMAGE#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#</span></a>'
||'</li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(67603763759476212)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(67604675864476212)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(67605183010476212)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(67605216049476212)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a><ul>'
,p_sub_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a><ul>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(67605350526476214)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav t-Body-nav--dark" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(67605452540476214)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #IMAGE#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #IMAGE#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(67606335383476217)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#IMAGE#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(67606867880476217)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(67591587801476195)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(67591652306476195)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(67593340186476196)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(67595414320476198)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(67595895923476198)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(67595940629476198)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(67595940629476198)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(67597291740476198)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(67598240963476201)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Report-paginationLink">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(67607316731476218)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(67607408339476223)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(67607575980476223)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(67607696560476223)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(67607717183476223)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(67608415667476224)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(67608685870476229)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(67608547750476228)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(67609094902476235)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(67576325968476146)
,p_default_dialog_template=>wwv_flow_api.id(67575096668476146)
,p_error_template=>wwv_flow_api.id(67572994327476142)
,p_printer_friendly_template=>wwv_flow_api.id(67576325968476146)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(67572994327476142)
,p_default_button_template=>wwv_flow_api.id(67607950040476224)
,p_default_region_template=>wwv_flow_api.id(67587118660476190)
,p_default_chart_template=>wwv_flow_api.id(67587118660476190)
,p_default_form_template=>wwv_flow_api.id(67587118660476190)
,p_default_reportr_template=>wwv_flow_api.id(67587118660476190)
,p_default_tabform_template=>wwv_flow_api.id(67587118660476190)
,p_default_wizard_template=>wwv_flow_api.id(67587118660476190)
,p_default_menur_template=>wwv_flow_api.id(67590474734476193)
,p_default_listr_template=>wwv_flow_api.id(67587118660476190)
,p_default_irr_template=>wwv_flow_api.id(67586649206476189)
,p_default_report_template=>wwv_flow_api.id(67595940629476198)
,p_default_label_template=>wwv_flow_api.id(67607408339476223)
,p_default_menu_template=>wwv_flow_api.id(67608415667476224)
,p_default_calendar_template=>wwv_flow_api.id(67608547750476228)
,p_default_list_template=>wwv_flow_api.id(67602954731476207)
,p_default_nav_list_template=>wwv_flow_api.id(67606335383476217)
,p_default_top_nav_list_temp=>wwv_flow_api.id(67606335383476217)
,p_default_side_nav_list_temp=>wwv_flow_api.id(67605350526476214)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(67579144638476171)
,p_default_dialogr_template=>wwv_flow_api.id(67579097657476170)
,p_default_option_label=>wwv_flow_api.id(67607408339476223)
,p_default_required_label=>wwv_flow_api.id(67607696560476223)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(67605216049476212)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>62
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.regionDisplaySelector#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(67608713782476231)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(67608827617476234)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(67608991372476234)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67577857758476164)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67578003614476168)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67578215881476168)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67579456146476171)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67579649228476171)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67580378209476173)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67580780919476173)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67581355102476173)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67581989336476173)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67582196381476184)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67583055074476185)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67584637074476187)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67586050508476189)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67589530348476193)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67589705046476193)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67590153601476193)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67590585134476193)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67591126281476193)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67591702555476196)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67591978385476196)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67593587783476196)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67594297258476196)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67594502774476196)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67595239043476198)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67595543380476198)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67596055230476198)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67596398646476198)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67596568326476198)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67597379229476201)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67599239388476206)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67600089212476206)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67601050697476207)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67601728209476207)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67602099631476207)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67602783958476207)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67603403195476210)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67605862408476214)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67606942253476218)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67608128276476224)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67609163458476240)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67609325729476240)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67609527555476240)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67609714853476240)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67609902041476240)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67610392743476242)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67611098982476243)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67611415558476243)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67611653504476243)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67611870775476243)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67612033031476243)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67612355317476243)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(67612659837476243)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67577774685476162)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(67577516305476154)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67577973344476167)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67577516305476154)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(67577857758476164)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67578118929476168)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67577516305476154)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(67578003614476168)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67578352945476170)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67577516305476154)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(67578215881476168)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67578400613476170)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(67577516305476154)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(67577857758476164)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67578562550476170)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(67577516305476154)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(67578003614476168)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67578623555476170)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(67577516305476154)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(67577857758476164)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67578741839476170)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67577516305476154)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(67578003614476168)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67578847804476170)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67577516305476154)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(67577857758476164)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67578932948476170)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67577516305476154)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(67578215881476168)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67579583033476171)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(67579144638476171)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(67579456146476171)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67579725392476171)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(67579144638476171)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(67579649228476171)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67579899413476171)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(67579144638476171)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(67579456146476171)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67579966798476171)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(67579144638476171)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(67579649228476171)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67580485095476173)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(67580378209476173)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67580590444476173)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(67580378209476173)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67580692146476173)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(67580378209476173)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67580816753476173)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(67580780919476173)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67580912537476173)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(67580780919476173)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67581084990476173)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(67580780919476173)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67581102080476173)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(67580378209476173)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67581207318476173)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(67580780919476173)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67581491756476173)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(67581355102476173)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67581599176476173)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(67581355102476173)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67581678471476173)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(67581355102476173)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67581777245476173)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(67581355102476173)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67581883739476173)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(67581355102476173)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67582003476476173)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(67581989336476173)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67582258684476184)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(67582196381476184)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67582342786476185)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(67581989336476173)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67582490274476185)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67582543715476185)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(67579456146476171)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67582623223476185)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67582714923476185)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(67582196381476184)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67582887491476185)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67582939861476185)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67583180750476185)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(67583055074476185)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67583205160476185)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(67583055074476185)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67583349564476185)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67580052472476171)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(67579456146476171)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67583773016476185)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67583441075476185)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(67580780919476173)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67583879236476185)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67583441075476185)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(67580780919476173)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67583962187476185)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(67583441075476185)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(67580780919476173)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67584002542476185)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(67583441075476185)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(67580780919476173)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67584115138476185)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67583441075476185)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(67581355102476173)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67584225744476185)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67583441075476185)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(67581355102476173)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67584389150476185)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(67583441075476185)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(67581355102476173)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67584452324476185)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(67583441075476185)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(67581355102476173)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67584562713476187)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(67583441075476185)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(67581355102476173)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67584785205476187)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67583441075476185)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(67584637074476187)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67584849767476189)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67583441075476185)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(67584637074476187)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67584950012476189)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67583441075476185)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(67582196381476184)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67585041034476189)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67583441075476185)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67585144415476189)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67583441075476185)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(67579456146476171)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67585295439476189)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(67583441075476185)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(67579456146476171)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67585313559476189)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67583441075476185)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(67582196381476184)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67585446467476189)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67583441075476185)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(67579456146476171)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67585938597476189)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67585732643476189)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67586181027476189)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(67585732643476189)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(67586050508476189)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67586231261476189)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67585732643476189)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(67586050508476189)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67586306923476189)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67585732643476189)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67586471020476189)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(67585732643476189)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67586586960476189)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67585732643476189)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(67586050508476189)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67586703847476190)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67586649206476189)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67586875648476190)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67586649206476189)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67587464674476190)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67587118660476190)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(67580780919476173)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67587573365476190)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67587118660476190)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(67580780919476173)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67587640853476190)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(67587118660476190)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(67580780919476173)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67587758446476190)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(67587118660476190)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(67580780919476173)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67587804730476190)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67587118660476190)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(67581355102476173)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67587969248476190)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67587118660476190)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(67581355102476173)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67588037505476190)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(67587118660476190)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(67581355102476173)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67588139910476190)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(67587118660476190)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(67581355102476173)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67588262990476190)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(67587118660476190)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(67581355102476173)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67588327241476190)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67587118660476190)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(67581989336476173)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67588414349476192)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67587118660476190)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(67582196381476184)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67588527344476192)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67587118660476190)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(67581989336476173)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67588666626476192)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67587118660476190)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67588704918476192)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67587118660476190)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(67579456146476171)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67588839482476192)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(67587118660476190)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(67579456146476171)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67588951767476192)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67587118660476190)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(67582196381476184)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67589053490476192)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67587118660476190)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67589145995476193)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67587118660476190)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(67579456146476171)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67589660197476193)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67589272040476193)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(67589530348476193)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67589866612476193)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67589272040476193)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(67589705046476193)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67589918547476193)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67589272040476193)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67590075169476193)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67589272040476193)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(67589705046476193)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67590206596476193)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67589272040476193)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(67590153601476193)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67590350707476193)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67589272040476193)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(67590153601476193)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67590664919476193)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(67590474734476193)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(67590585134476193)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67590759409476193)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(67590474734476193)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67590897921476193)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(67590474734476193)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(67590585134476193)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67591279662476193)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(67590923426476193)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(67591126281476193)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67591349906476193)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67590923426476193)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(67591126281476193)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67591460096476193)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(67590923426476193)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67591831922476196)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(67591652306476195)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(67591702555476196)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67592081311476196)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(67591652306476195)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(67591978385476196)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67592113023476196)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(67591652306476195)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(67591702555476196)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67592219080476196)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(67591652306476195)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(67591978385476196)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67592355283476196)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(67591652306476195)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(67591702555476196)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67592419308476196)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(67591652306476195)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(67591978385476196)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67592534819476196)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(67591652306476195)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(67591978385476196)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67592630081476196)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(67591652306476195)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(67591702555476196)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67592709034476196)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(67591652306476195)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(67591702555476196)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67592875672476196)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(67591652306476195)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(67591978385476196)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67592906389476196)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(67591652306476195)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(67591978385476196)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67593091545476196)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(67591652306476195)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(67591978385476196)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67593172162476196)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(67591652306476195)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67593238927476196)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(67591652306476195)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(67591978385476196)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67593424058476196)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(67593340186476196)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(67591978385476196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67593649535476196)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(67593340186476196)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(67593587783476196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67593776806476196)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(67593340186476196)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(67591978385476196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67593861173476196)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(67593340186476196)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(67593587783476196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67593905257476196)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(67593340186476196)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(67591978385476196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67594036519476196)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(67593340186476196)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(67593587783476196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67594197256476196)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(67593340186476196)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(67591978385476196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67594373167476196)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(67593340186476196)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(67594297258476196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67594469449476196)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(67593340186476196)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(67594297258476196)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67594684488476196)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(67593340186476196)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(67594502774476196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67594785154476196)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(67593340186476196)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(67594502774476196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67594885957476196)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(67593340186476196)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(67594297258476196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67594925573476198)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(67593340186476196)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(67591978385476196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67595090353476198)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(67593340186476196)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(67593587783476196)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67595158137476198)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(67593340186476196)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(67591978385476196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67595332188476198)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(67593340186476196)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(67595239043476198)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67595667078476198)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(67595414320476198)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(67595543380476198)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67595745483476198)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(67595414320476198)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(67595543380476198)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67596141334476198)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(67595940629476198)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(67596055230476198)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67596268475476198)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(67595940629476198)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(67596055230476198)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67596407844476198)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(67595940629476198)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(67596398646476198)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67596616455476198)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(67595940629476198)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(67596568326476198)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67596765883476198)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(67595940629476198)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(67596568326476198)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67596809604476198)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(67595940629476198)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(67596568326476198)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67596911005476198)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(67595940629476198)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(67596398646476198)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67597059754476198)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(67595940629476198)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67597166336476198)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(67595940629476198)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(67596568326476198)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67597489818476201)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(67597291740476198)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(67597379229476201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67597549872476201)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(67597291740476198)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(67597379229476201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67597653465476201)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(67597291740476198)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(67597379229476201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67597793554476201)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(67597291740476198)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(67591978385476196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67597814642476201)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(67597291740476198)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(67591978385476196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67597930464476201)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(67597291740476198)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(67597379229476201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67598062226476201)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(67597291740476198)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(67597379229476201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67598137081476201)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(67597291740476198)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(67597379229476201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67598358627476201)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(67598240963476201)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(67597379229476201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67598441695476201)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(67598240963476201)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(67597379229476201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67598544424476201)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(67598240963476201)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(67597379229476201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67598620193476201)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(67598240963476201)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(67591978385476196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67598789069476201)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(67598240963476201)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(67591978385476196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67598810484476201)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(67598240963476201)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(67597379229476201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67598961458476201)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(67598240963476201)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(67597379229476201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67599064642476201)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(67598240963476201)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(67597379229476201)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67599378698476206)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(67599167302476206)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(67599239388476206)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67599480078476206)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(67599167302476206)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(67599239388476206)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67599530691476206)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(67599167302476206)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(67599239388476206)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67599647878476206)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(67599167302476206)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(67599239388476206)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67599716961476206)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(67599167302476206)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(67599239388476206)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67599890627476206)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(67599167302476206)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(67599239388476206)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67599980347476206)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(67599167302476206)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(67599239388476206)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67600179552476206)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(67599167302476206)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(67600089212476206)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67600212111476206)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(67599167302476206)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(67600089212476206)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67600328851476206)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(67599167302476206)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67600409321476206)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(67599167302476206)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(67600089212476206)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67600571967476206)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(67599167302476206)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(67599239388476206)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67600644040476206)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(67599167302476206)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(67600089212476206)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67600768019476207)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(67599167302476206)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(67600089212476206)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67600908561476207)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(67600858696476207)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(67599239388476206)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67601130759476207)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(67600858696476207)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(67601050697476207)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67601287882476207)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(67600858696476207)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(67599239388476206)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67601349255476207)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(67600858696476207)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(67601050697476207)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67601421703476207)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(67600858696476207)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(67599239388476206)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67601594623476207)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(67600858696476207)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(67601050697476207)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67601682421476207)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(67600858696476207)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(67599239388476206)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67601856589476207)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(67600858696476207)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(67601728209476207)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67601954610476207)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(67600858696476207)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(67601728209476207)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67602104248476207)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(67600858696476207)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(67602099631476207)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67602299094476207)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(67600858696476207)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(67602099631476207)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67602321554476207)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(67600858696476207)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(67601728209476207)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67602405509476207)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(67600858696476207)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(67599239388476206)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67602524624476207)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(67600858696476207)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(67601050697476207)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67602637923476207)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(67600858696476207)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(67599239388476206)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67602869924476207)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(67600858696476207)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(67602783958476207)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67603076928476210)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(67602954731476207)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(67601728209476207)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67603125850476210)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(67602954731476207)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67603225269476210)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(67602954731476207)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67603328172476210)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(67602954731476207)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67603586445476210)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(67602954731476207)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(67603403195476210)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67603638618476212)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(67602954731476207)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(67603403195476210)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67603848113476212)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(67603763759476212)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(67599239388476206)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67603903963476212)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(67603763759476212)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(67599239388476206)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67604088684476212)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(67603763759476212)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(67599239388476206)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67604171197476212)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(67603763759476212)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(67599239388476206)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67604289919476212)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(67603763759476212)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67604394917476212)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(67603763759476212)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67604468667476212)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(67603763759476212)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67604587954476212)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(67603763759476212)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(67599239388476206)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67604729522476212)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(67604675864476212)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67604846050476212)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(67604675864476212)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67604912316476212)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(67604675864476212)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67605020179476212)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(67604675864476212)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67605549866476214)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(67605452540476214)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(67602099631476207)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67605602382476214)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(67605452540476214)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(67599239388476206)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67605782289476214)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(67605452540476214)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(67602099631476207)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67605946904476214)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(67605452540476214)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(67605862408476214)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67606033778476214)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(67605452540476214)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(67601728209476207)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67606112662476214)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(67605452540476214)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(67601728209476207)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67606291115476214)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(67605452540476214)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(67605862408476214)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67606416673476217)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(67606335383476217)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67606562034476217)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(67606335383476217)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67606650896476217)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(67606335383476217)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67606781826476217)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(67606335383476217)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67607007663476218)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(67606867880476217)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(67606942253476218)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67607147632476218)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(67606867880476217)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(67606942253476218)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67607203655476218)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(67606867880476217)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(67606942253476218)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67608226831476224)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(67608016817476224)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(67608128276476224)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67608366961476224)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(67608016817476224)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(67608128276476224)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67609272828476240)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(67609163458476240)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67609411877476240)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(67609325729476240)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67609604222476240)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(67609527555476240)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67609892086476240)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(67609714853476240)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67610016826476240)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(67609902041476240)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67610128997476242)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(67609325729476240)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67610239449476242)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(67609527555476240)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67610475962476242)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(67610392743476242)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67610565574476243)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(67610392743476242)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67610637050476243)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(67610392743476242)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67610783793476243)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(67609163458476240)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67610891746476243)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(67609902041476240)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67610976450476243)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(67609714853476240)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67611151293476243)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(67611098982476243)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67611200076476243)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(67609163458476240)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67611380066476243)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(67609163458476240)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67611504824476243)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(67611415558476243)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67611776386476243)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(67611653504476243)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67611912211476243)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(67611870775476243)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67612109589476243)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(67612033031476243)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67612280404476243)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(67612033031476243)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67612464393476243)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(67612355317476243)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67612593014476243)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(67611653504476243)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67612732705476243)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(67612659837476243)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67612889082476243)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(67612929828476243)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(67612659837476243)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(67613309683476253)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_d3_barchart
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(2228962028121037432)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.D3.BARCHART'
,p_display_name=>'D3 Bar Chart'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.D3.BARCHART'),'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.barchart/')
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/d3/3.5.5/d3.min.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3/d3.oracle.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3/oracle.jql.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3/jquery.getScrollbarWidth.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.tooltip/d3.oracle.tooltip.js',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.ary/d3.oracle.ary.js',
'#PLUGIN_FILES#d3.oracle.barchart.js',
'#PLUGIN_FILES#d3.oracle.barchart.apex.js',
'#PLUGIN_FILES#com.oracle.apex.d3.barchart.js'))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.tooltip/d3.oracle.tooltip.css',
'#IMAGE_PREFIX#plugins/com.oracle.apex.d3.ary/d3.oracle.ary.css',
'#PLUGIN_FILES#d3.oracle.barchart.css'))
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'function render ',
'(',
'    p_region                in  apex_plugin.t_region,',
'    p_plugin                in  apex_plugin.t_plugin,',
'    p_is_printer_friendly   in  boolean ',
')',
'return apex_plugin.t_region_render_result',
'is',
'    c_region_static_id      constant varchar2(255)  := apex_escape.html_attribute( p_region.static_id );',
'',
'-- Assign readable names to plugin attributes. Omit data attributes, they''ll be handled in ajax function.',
'    -- Dimensions',
'    c_height_mode           constant varchar2(200)  := p_region.attribute_21;',
'    c_min_height            constant number         := nvl(p_region.attribute_18, 100);',
'    c_max_height            constant number         := nvl(p_region.attribute_19, 500);',
'    c_spacing               constant number         := nvl(p_region.attribute_16, 20);',
'    c_inner_spacing         constant number         := nvl(p_region.attribute_17, 20);',
'',
'    -- Axis titles',
'    c_x_axis_title          constant varchar2(200)  := p_region.attribute_08;',
'    c_y_axis_title          constant varchar2(200)  := p_region.attribute_09;',
'',
'    -- Axis grid',
'    c_x_axis_grid           constant boolean        := instr('':'' || p_region.attribute_22 || '':'', '':X:'') > 0;',
'    c_y_axis_grid           constant boolean        := instr('':'' || p_region.attribute_22 || '':'', '':Y:'') > 0;',
'',
'    -- Tooltip configuration',
'    c_show_tooltip          constant boolean        := p_region.attribute_10 is not null;',
'    c_series_tooltip        constant boolean        := instr('':'' || p_region.attribute_10 || '':'', '':SERIES:'') > 0;',
'    c_x_tooltip             constant boolean        := instr('':'' || p_region.attribute_10 || '':'', '':X:'') > 0;',
'    c_y_tooltip             constant boolean        := instr('':'' || p_region.attribute_10 || '':'', '':Y:'') > 0;',
'    c_custom_tooltip        constant boolean        := instr('':'' || p_region.attribute_10 || '':'', '':CUSTOM:'') > 0;',
'',
'    -- Legend',
'    c_show_legend           constant boolean        := p_region.attribute_12 is not null;',
'    c_legend_position       constant varchar2(200)  := p_region.attribute_12;',
'',
'    -- Display modes',
'    c_value_template        constant varchar2(200)  := nvl(p_region.attribute_15, p_region.attribute_25);',
'    c_horizontal            constant boolean        := substr(p_region.attribute_06, 1, instr(p_region.attribute_06, '','') - 1) = ''HORIZONTAL'';',
'    c_display               constant varchar2(200)  := substr(p_region.attribute_06, instr(p_region.attribute_06, '','') + 1);',
'    c_responsive            constant boolean        := p_plugin.attribute_06 = ''Y'';',
'    c_transitions           constant boolean        := p_plugin.attribute_05 = ''Y'';',
'',
'    -- Colors',
'    c_color_scheme          constant varchar2(200)  := p_region.attribute_13;',
'    l_colors                varchar2(200)           := p_region.attribute_14;',
'    c_multiple_colors       constant boolean        := p_region.attribute_24 = ''Y'';',
'',
'    -- Aspect ratios',
'    c_min_ar                constant number         := nvl( apex_plugin_util.get_attribute_as_number( p_plugin.attribute_02, ''Min Aspect Radio'' ), 1.333);',
'    c_max_ar                constant number         := nvl( apex_plugin_util.get_attribute_as_number( p_plugin.attribute_01, ''Max Aspect Radio'' ), 3);',
'    c_threshold             constant number         := p_plugin.attribute_03;',
'    c_threshold_of          constant varchar2(200)  := p_plugin.attribute_04;',
'',
'    -- Function constants',
'    c_rgb_list_regex        constant varchar2(200)  := ''^#[0-9a-fA-F]{6}(,#[0-9a-fA-F]{6})*$'';',
'begin',
'    -- Add placeholder div',
'    sys.htp.p (',
'        ''<div class="a-D3BarChart" id="'' || c_region_static_id || ''_region">'' ||',
'            ''<div class="a-D3BarChart-container" id="'' || c_region_static_id || ''_chart"></div>'' ||',
'        ''</div>'' );',
'',
'',
'    -- Color scheme',
'    case c_color_scheme',
'        when ''MODERN'' then',
'            l_colors := ''#FF3B30:#FF9500:#FFCC00:#4CD964:#34AADC:#007AFF:#5856D6:#FF2D55:#8E8E93:#C7C7CC'';',
'        when ''MODERN2'' then',
'            l_colors := ''#1ABC9C:#2ECC71:#4AA3DF:#9B59B6:#3D566E:#F1C40F:#E67E22:#E74C3C'';',
'        when ''SOLAR'' then',
'            l_colors := ''#B58900:#CB4B16:#DC322F:#D33682:#6C71C4:#268BD2:#2AA198:#859900'';',
'        when ''METRO'' then',
'            l_colors := ''#E61400:#19A2DE:#319A31:#EF9608:#8CBE29:#A500FF:#00AAAD:#FF0094:#9C5100:#E671B5'';',
'        else',
'            null;',
'    end case;',
'',
'    -- Build the initial chart. Data will be loaded with ajax.',
'    apex_javascript.add_onload_code (',
'        p_code => ''(function(){ var a = com_oracle_apex_d3_barchart('' ||',
'            apex_javascript.add_value(p_region.static_id) ||',
'            ''{'' ||',
'                apex_javascript.add_attribute(''chartRegionId'',  p_region.static_id || ''_chart'') ||',
'                apex_javascript.add_attribute(''xAxisTitle'',     c_x_axis_title) || ',
'                apex_javascript.add_attribute(''yAxisTitle'',     c_y_axis_title) || ',
'                apex_javascript.add_attribute(''showTooltip'',    c_show_tooltip) || ',
'                apex_javascript.add_attribute(''tooltipSeries'',  c_series_tooltip) || ',
'                apex_javascript.add_attribute(''tooltipX'',       c_x_tooltip) || ',
'                apex_javascript.add_attribute(''tooltipY'',       c_y_tooltip) || ',
'                apex_javascript.add_attribute(''tooltipCustom'',  c_custom_tooltip) || ',
'                apex_javascript.add_attribute(''spacing'',        c_spacing) || ',
'                apex_javascript.add_attribute(''innerSpacing'',   c_inner_spacing) || ',
'                apex_javascript.add_attribute(''horizontal'',     c_horizontal) || ',
'                apex_javascript.add_attribute(''display'',        c_display) || ',
'                apex_javascript.add_attribute(''responsive'',     c_responsive) || ',
'                apex_javascript.add_attribute(''transitions'',    c_transitions) || ',
'                apex_javascript.add_attribute(''valueTemplate'',  c_value_template) || ',
'                apex_javascript.add_attribute(''showLegend'',     c_show_legend) || ',
'                apex_javascript.add_attribute(''legendPosition'', c_legend_position) || ',
'                apex_javascript.add_attribute(''colors'',         l_colors) || ',
'                apex_javascript.add_attribute(''xGrid'',          c_x_axis_grid) || ',
'                apex_javascript.add_attribute(''yGrid'',          c_y_axis_grid) || ',
'                apex_javascript.add_attribute(''multipleColors'', c_multiple_colors) || ',
'                apex_javascript.add_attribute(''heightMode'',     c_height_mode) || ',
'                apex_javascript.add_attribute(''minHeight'',      c_min_height) || ',
'                apex_javascript.add_attribute(''maxHeight'',      c_max_height) || ',
'                apex_javascript.add_attribute(''threshold'',      c_threshold) || ',
'                apex_javascript.add_attribute(''thresholdOf'',    c_threshold_of) || ',
'                apex_javascript.add_attribute(''minAR'',          c_min_ar) || ',
'                apex_javascript.add_attribute(''maxAR'',          c_max_ar) || ',
'                apex_javascript.add_attribute(''noDataFoundMessage'', p_region.no_data_found_message) || ',
'                apex_javascript.add_attribute(''pageItems'',      apex_plugin_util.page_item_names_to_jquery(p_region.ajax_items_to_submit)) ||',
'                apex_javascript.add_attribute(''ajaxIdentifier'', apex_plugin.get_ajax_identifier, false, false) ||',
'            ''},'' || apex_javascript.add_value( p_region.name, false ) || '');})()'' );',
'    return null;',
'end;',
'',
'function ajax',
'(',
'    p_region    in  apex_plugin.t_region,',
'    p_plugin    in  apex_plugin.t_plugin ',
')',
'return apex_plugin.t_region_ajax_result',
'is',
'    -- It''s better to have named variables instead of using the generic ones, ',
'    -- makes the code more readable. ',
'',
'    c_has_multiple_series   constant boolean := p_region.attribute_03 is not null;',
'',
'    -- Column names',
'    c_x_column              constant varchar2(255) := p_region.attribute_01;',
'    c_y_column              constant varchar2(255) := p_region.attribute_02;',
'    c_series_column         constant varchar2(255) := case when c_has_multiple_series then p_region.attribute_04 end;',
'    c_tooltip_column        constant varchar2(255) := p_region.attribute_11;',
'    c_link_target           constant varchar2(255) := p_region.attribute_20;',
'',
'    -- Series name, for single series configuration',
'    c_series_name           constant varchar2(200) := case when not c_has_multiple_series then p_region.attribute_05 end;',
'    c_use_sql_color         constant boolean       := p_region.attribute_13 = ''COLUMN'';',
'',
'    -- Column numbers for fetching',
'    l_x_column_no           pls_integer;',
'    l_y_column_no           pls_integer;',
'    l_series_column_no      pls_integer;',
'    l_tooltip_column_no     pls_integer;',
'    l_column_value_list     apex_plugin_util.t_column_value_list2;',
'',
'    -- Holders for row data',
'    l_x                     varchar2(200);',
'    l_y                     number;',
'    l_series                varchar2(4000);',
'    l_color                 varchar2(4000);',
'    l_tooltip               varchar2(4000);',
'    l_link                  varchar2(4000);',
'',
'begin',
'',
'    apex_json.initialize_output (',
'        p_http_cache => false );',
'',
'    apex_json.open_object;',
'',
'    -- First, we must get the color mapping if the color scheme requires it.',
'    if c_use_sql_color then',
'        l_column_value_list := apex_plugin_util.get_data2 (',
'            p_sql_statement     => p_region.attribute_23,',
'            p_min_columns       => 2,',
'            p_max_columns       => 2,',
'            p_component_name    => p_region.name );',
'',
'        apex_json.open_array(''colors'');',
'        for l_row_num in 1 .. l_column_value_list(1).value_list.count loop',
'            -- Series, optional',
'            l_series := apex_plugin_util.get_value_as_varchar2 (',
'                p_data_type => l_column_value_list(1).data_type,',
'                p_value     => l_column_value_list(1).value_list(l_row_num) );',
'            l_color := apex_plugin_util.get_value_as_varchar2 (',
'                p_data_type => l_column_value_list(2).data_type,',
'                p_value     => l_column_value_list(2).value_list(l_row_num) );',
'            ',
'            apex_json.open_object;',
'            apex_json.write(''series'', l_series);',
'            apex_json.write(''color'',  l_color);',
'            apex_json.close_object;',
'',
'        end loop;',
'        apex_json.close_array;',
'',
'        l_series := null;',
'    end if;',
'',
'    -- Then, we get the actual data points.',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'        p_sql_statement  => p_region.source,',
'        p_min_columns    => 2,',
'        p_max_columns    => 5,',
'        p_component_name => p_region.name );',
'',
'    -- Get the actual column # for faster access and also verify that the data type',
'    -- of the column matches with what we are looking for',
'    l_x_column_no := apex_plugin_util.get_column_no (',
'                p_attribute_label       => ''x column'',',
'                p_column_alias          => c_x_column,',
'                p_column_value_list     => l_column_value_list,',
'                p_is_required           => true,',
'                p_data_type             => apex_plugin_util.c_data_type_varchar2 );',
'',
'    l_y_column_no := apex_plugin_util.get_column_no (',
'        p_attribute_label       => ''y column'',',
'        p_column_alias          => c_y_column,',
'        p_column_value_list     => l_column_value_list,',
'        p_is_required           => true,',
'        p_data_type             => apex_plugin_util.c_data_type_number );',
'',
'    l_series_column_no := apex_plugin_util.get_column_no (',
'        p_attribute_label       => ''series column'',',
'        p_column_alias          => c_series_column,',
'        p_column_value_list     => l_column_value_list,',
'        p_is_required           => false,',
'        p_data_type             => apex_plugin_util.c_data_type_varchar2 );',
'',
'    l_tooltip_column_no := apex_plugin_util.get_column_no (',
'        p_attribute_label       => ''tooltip column'',',
'        p_column_alias          => c_tooltip_column,',
'        p_column_value_list     => l_column_value_list,',
'        p_is_required           => false,',
'        p_data_type             => apex_plugin_util.c_data_type_varchar2 );',
'',
'    apex_json.open_array(''data'');',
'',
'    -- Fetch data',
'    for l_row_num in 1 .. l_column_value_list(1).value_list.count loop',
'        begin',
'            apex_plugin_util.set_component_values (',
'                p_column_value_list => l_column_value_list,',
'                p_row_num => l_row_num ',
'            );',
'',
'            -- X is a string, required',
'            if l_x_column_no is not null then',
'                l_x := apex_plugin_util.get_value_as_varchar2 (',
'                    p_data_type => l_column_value_list(l_x_column_no).data_type,',
'                    p_value     => l_column_value_list(l_x_column_no).value_list(l_row_num) );',
'            end if;',
'',
'            -- Y is a number, required',
'            l_y := l_column_value_list(l_y_column_no).value_list(l_row_num).number_value;',
'',
'            -- Series, optional',
'            if l_series_column_no is not null then',
'                l_series := apex_plugin_util.get_value_as_varchar2 (',
'                    p_data_type => l_column_value_list(l_series_column_no).data_type,',
'                    p_value     => l_column_value_list(l_series_column_no).value_list(l_row_num) );',
'            end if;',
'',
'            -- Tooltip, optional',
'            if l_tooltip_column_no is not null then',
'                l_tooltip := apex_plugin_util.get_value_as_varchar2 (',
'                    p_data_type => l_column_value_list(l_tooltip_column_no).data_type,',
'                    p_value     => l_column_value_list(l_tooltip_column_no).value_list(l_row_num) );',
'            end if;',
'',
'            -- Link, optional',
'            if c_link_target is not null then',
'                l_link := wwv_flow_utilities.prepare_url (',
'                    apex_plugin_util.replace_substitutions (',
'                        p_value  => c_link_target,',
'                        p_escape => false ) );',
'            end if;',
'',
'            apex_json.open_object;',
'            apex_json.write(''series'',  nvl(l_series, c_series_name));',
'            apex_json.write(''tooltip'', l_tooltip);',
'            apex_json.write(''link'',    l_link);',
'            apex_json.write(''x'',       l_x);',
'            apex_json.write(''y'',       l_y);',
'            apex_json.close_object;',
'',
'            apex_plugin_util.clear_component_values;',
'        exception when others then',
'            apex_plugin_util.clear_component_values;',
'            raise;',
'        end;',
'    end loop;',
'    apex_json.close_array;',
'    apex_json.close_object;',
'',
'    return null;',
'end;'))
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'SOURCE_SQL:SOURCE_REQUIRED:AJAX_ITEMS_TO_SUBMIT:NO_DATA_FOUND_MESSAGE'
,p_sql_min_column_count=>2
,p_sql_max_column_count=>5
,p_substitute_attributes=>false
,p_subscribe_plugin_settings=>true
,p_help_text=>'Data Driven Documents (D3) Bar Chart provides dynamic and interactive bar charts for data visualization, using Scalable Vector Graphics (SVG), JavaScript, HTML5, and Cascading Style Sheets (CSS3) standards.'
,p_version_identifier=>'5.0.1'
,p_about_url=>'http://apex.oracle.com/plugins'
,p_files_version=>58
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645679711905058705)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>510
,p_prompt=>'Maximum Aspect Ratio'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'3'
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the maximum aspect ratio that charts use to recommend a height. A maximum aspect ratio of 3 means that the chart''s width should be no greater than 3 times its height. </p>',
'<p>Note: This setting can be overridden by the ''Maximum Height'' setting on the region.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645680098827058706)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>500
,p_prompt=>'Minimum Aspect Ratio'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'1.333'
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the minimum aspect ratio that charts use to recommend a height. A minimum aspect ratio of 1.333 means that the chart''s width should be no less than 1.333 times its height. </p>',
'<p>Note: This setting can be overridden by the ''Minimum Height'' setting on the region.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645680512879058706)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>3
,p_display_sequence=>540
,p_prompt=>'Responsive Behavior Threshold'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'480'
,p_display_length=>5
,p_max_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'Enter the threshold (in pixels) at which the responsive behavior will be activated.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645680874450058706)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>4
,p_display_sequence=>530
,p_prompt=>'Responsive Behavior Measure'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'WINDOW'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select whether the responsive behavior threshold will be compared to the window or the region width.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645681281880058706)
,p_plugin_attribute_id=>wwv_flow_api.id(2645680874450058706)
,p_display_sequence=>10
,p_display_value=>'Window'
,p_return_value=>'WINDOW'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645681801451058706)
,p_plugin_attribute_id=>wwv_flow_api.id(2645680874450058706)
,p_display_sequence=>20
,p_display_value=>'Region'
,p_return_value=>'REGION'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645682273748058706)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>5
,p_display_sequence=>550
,p_prompt=>'Enable Transitions'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Select whether transitions are enabled for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645682704683058707)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>6
,p_display_sequence=>520
,p_prompt=>'Responsive Behavior'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Select whether responsive behavior is enabled for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645683044708058707)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'X Values Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which holds the X-axis values for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645683512757058707)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Y Values Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query which holds the Y-axis values for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645683866679058708)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>50
,p_prompt=>'Multiple Series'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Check multiple series if you want the chart displaying more than one series of data. The different series must be specified by a column from the region SQL Query.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645684268372058708)
,p_plugin_attribute_id=>wwv_flow_api.id(2645683866679058708)
,p_display_sequence=>10
,p_display_value=>' '
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645684745451058708)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>60
,p_prompt=>'Series Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2645683866679058708)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'Select the column from the region SQL Query that defines the multiple series for the chart. The values from this column will become the labels for the series.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645685187115058708)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>70
,p_prompt=>'Series Name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_api.id(2645683866679058708)
,p_depending_on_condition_type=>'NULL'
,p_help_text=>'Enter the name of the single data series which is shown on the legend.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645685596383058708)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>40
,p_prompt=>'Display'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'VERTICAL,SIDE-BY-SIDE'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select how the bar chart data is displayed.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645685934310058708)
,p_plugin_attribute_id=>wwv_flow_api.id(2645685596383058708)
,p_display_sequence=>10
,p_display_value=>'Vertical, Side by Side'
,p_return_value=>'VERTICAL,SIDE-BY-SIDE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645686518443058709)
,p_plugin_attribute_id=>wwv_flow_api.id(2645685596383058708)
,p_display_sequence=>20
,p_display_value=>'Horizontal, Side by Side'
,p_return_value=>'HORIZONTAL,SIDE-BY-SIDE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645686924711058709)
,p_plugin_attribute_id=>wwv_flow_api.id(2645685596383058708)
,p_display_sequence=>30
,p_display_value=>'Vertical, Stacked'
,p_return_value=>'VERTICAL,STACKED'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645687468490058709)
,p_plugin_attribute_id=>wwv_flow_api.id(2645685596383058708)
,p_display_sequence=>40
,p_display_value=>'Horizontal, Stacked'
,p_return_value=>'HORIZONTAL,STACKED'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645687972648058709)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>90
,p_prompt=>'X-Axis Title'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>20
,p_is_translatable=>true
,p_help_text=>'Enter the label for the X-axis.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645688365250058709)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>100
,p_prompt=>'Y-Axis Title'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>20
,p_is_translatable=>true
,p_help_text=>'The label for the Y-axis.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645688807744058710)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>130
,p_prompt=>'Tooltips'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Check which attributes are shown on the tooltip for each data point. The ''Custom column'' option allows you to specify text for each individual data point as an additional column in the region SQL Query.</p>',
'<p>Note: Leave all options unchecked to disable the tooltip.</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645689140260058710)
,p_plugin_attribute_id=>wwv_flow_api.id(2645688807744058710)
,p_display_sequence=>0
,p_display_value=>'Show series name'
,p_return_value=>'SERIES'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645689629236058710)
,p_plugin_attribute_id=>wwv_flow_api.id(2645688807744058710)
,p_display_sequence=>10
,p_display_value=>'Show X value'
,p_return_value=>'X'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645690199931058710)
,p_plugin_attribute_id=>wwv_flow_api.id(2645688807744058710)
,p_display_sequence=>20
,p_display_value=>'Show Y value'
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645690659288058712)
,p_plugin_attribute_id=>wwv_flow_api.id(2645688807744058710)
,p_display_sequence=>30
,p_display_value=>'Custom column'
,p_return_value=>'CUSTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645691148475058712)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>140
,p_prompt=>'Tooltip Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2645688807744058710)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'SERIES:X:Y:CUSTOM,SERIES:X:CUSTOM,SERIES:Y:CUSTOM,X:Y:CUSTOM,SERIES:CUSTOM,X:CUSTOM,Y:CUSTOM,CUSTOM'
,p_help_text=>'Enter the column from the region SQL Query that holds the custom tooltip values.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645691563347058712)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>150
,p_prompt=>'Legend'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'No Legend'
,p_help_text=>'Select where the legend is displayed on the chart.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645691955118058712)
,p_plugin_attribute_id=>wwv_flow_api.id(2645691563347058712)
,p_display_sequence=>10
,p_display_value=>'Above chart'
,p_return_value=>'TOP'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645692473081058712)
,p_plugin_attribute_id=>wwv_flow_api.id(2645691563347058712)
,p_display_sequence=>20
,p_display_value=>'Below chart'
,p_return_value=>'BOTTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645693014786058713)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>250
,p_prompt=>'Color Scheme'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'MODERN'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Theme Default'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Select the color scheme used to render the chart.</p>',
'<p>Note: For multiple series charts, each series will be assigned a different color depending on the setting for ''Multiple Colors''.</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645693372695058713)
,p_plugin_attribute_id=>wwv_flow_api.id(2645693014786058713)
,p_display_sequence=>10
,p_display_value=>'Modern'
,p_return_value=>'MODERN'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645693910697058713)
,p_plugin_attribute_id=>wwv_flow_api.id(2645693014786058713)
,p_display_sequence=>20
,p_display_value=>'Modern 2'
,p_return_value=>'MODERN2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645694417588058713)
,p_plugin_attribute_id=>wwv_flow_api.id(2645693014786058713)
,p_display_sequence=>30
,p_display_value=>'Solar'
,p_return_value=>'SOLAR'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645694880963058714)
,p_plugin_attribute_id=>wwv_flow_api.id(2645693014786058713)
,p_display_sequence=>40
,p_display_value=>'Metro'
,p_return_value=>'METRO'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645695918469058714)
,p_plugin_attribute_id=>wwv_flow_api.id(2645693014786058713)
,p_display_sequence=>50
,p_display_value=>'SQL Query'
,p_return_value=>'COLUMN'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645695338524058714)
,p_plugin_attribute_id=>wwv_flow_api.id(2645693014786058713)
,p_display_sequence=>60
,p_display_value=>'Custom'
,p_return_value=>'CUSTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645696324688058714)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>260
,p_prompt=>'Colors'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2645693014786058713)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'CUSTOM'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dl>',
'  <dt>Hexadecimal (hex) notation</dt><dd><pre>#FF3377</pre>;</dd>',
'  <dt>RGB color notation  (red,green,blue)</dt><dd><pre>rgba(0,25,47,0.5)</pre>; or </dd>',
'  <dt>RGBA color notation (red,green,blue,alpha)</dt><dd><pre>rgba(0,25,47,0.5)</pre>; or </dd>',
'  <dt>HTML colors</dt><dd><pre>blue</pre>.</dd>',
'</dl>'))
,p_help_text=>'<p>Enter a colon-separated list of color strings for the custom colors to be used in the chart.</p>'
);
end;
/
begin
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645696811136058714)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>120
,p_prompt=>'Custom Value Formatting'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'FRIENDLY'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2645702778417058718)
,p_depending_on_condition_type=>'NULL'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul>',
'<li><b>,d</b> = 14,435</li>',
'<li><b>d</b> = 14435</li>',
'<li><b>,.2f</b> = 14,435.49</li>',
'<li><b>.2f</b> = 14435.49</li>',
'<li><b>.3s</b> = 14.4k</li>',
'<li><b>$,d</b> = $14,435</li>',
'<li><b>$d</b> = $14435</li>',
'<li><b>$,.2f</b> = $14,435.49</li>',
'<li><b>$.2f</b> = $14435.49</li>',
'<li><b>$.3s</b> = $14.4k</li>',
'<li><b>n" ft."</b> = 14435.49 ft. **</li>',
'<li><b>"[["$.3s"]]"</b> = [[$14.4k]] **</li>',
'<li>Refer to https://github.com/mbostock/d3/wiki/Formatting#d3_format for the full syntax specification</li>',
'</ul>',
'<br/>',
'** You may use leading and trailing double-quoted literals, but this feature is not part of the standard D3 specification'))
,p_help_text=>'Enter the D3 format string used to format the Y-axis values on axes, tooltips and legends. Use <pre>FRIENDLY</pre> to utilize sensible formatting defaults for your data.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645697140051058714)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>200
,p_prompt=>'Spacing Between Categories'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'10'
,p_display_length=>5
,p_max_length=>3
,p_unit=>'%'
,p_is_translatable=>false
,p_help_text=>'Enter the spacing between categories, expressed as an integer percentage (1-100).'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645697549005058715)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>210
,p_prompt=>'Spacing Between Series'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_default_value=>'10'
,p_display_length=>5
,p_max_length=>3
,p_unit=>'%'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2645683866679058708)
,p_depending_on_condition_type=>'NOT_NULL'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the spacing between series on the same category (X-axis value). It is represented as an integer percentage (0-100).</p>',
'<p>Note: This setting only affects charts using the "Side by Side" display modes.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645698009687058716)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_prompt=>'Minimum Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_display_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'Enter the minimum height, in pixels, of the chart. Chart width will adapt to the size of the region. Defaults to 100px.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645698328589058716)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_prompt=>'Maximum Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_display_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'The maximum height, in pixels, of the chart. Chart width will adapt to the size of the region. Defaults to 500px.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645698753842058716)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>20
,p_display_sequence=>30
,p_prompt=>'Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_reference_scope=>'ROW'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Example 1: URL to navigate to page 10 and set P10_EMPNO to the EMPNO value of the clicked entry.',
'<pre>f?p=&amp;APP_ID.:10:&amp;APP_SESSION.::&amp;DEBUG.:RP,10:P10_EMPNO:&amp;EMPNO.</pre>',
'</p>',
'<p>Example 2: Display the EMPNO value of the clicked entry in a JavaScript alert',
'<pre>javascript:alert(''current empno: &amp;EMPNO.'');</pre>',
'</p>'))
,p_help_text=>'<p>Enter a target page to be called when the user clicks a chart entry.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645699218087058716)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>21
,p_display_sequence=>170
,p_prompt=>'Height Measure'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'BARS'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select how the minimum and maximum height of the chart is calculated.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645700109224058716)
,p_plugin_attribute_id=>wwv_flow_api.id(2645699218087058716)
,p_display_sequence=>10
,p_display_value=>'Bars Area'
,p_return_value=>'BARS'
,p_help_text=>'Minimum and maximum height for the area is determined by the height of the the bars drawn. Axis labels may take additional space.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645699581974058716)
,p_plugin_attribute_id=>wwv_flow_api.id(2645699218087058716)
,p_display_sequence=>20
,p_display_value=>'Chart Area'
,p_return_value=>'CHART'
,p_help_text=>'Minimum and maximum height will include the axes dimensions.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645700573545058718)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>22
,p_display_sequence=>160
,p_prompt=>'Show Grid Lines'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Check the axes to display grid lines for that axis.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645700924842058718)
,p_plugin_attribute_id=>wwv_flow_api.id(2645700573545058718)
,p_display_sequence=>10
,p_display_value=>'X-Axis'
,p_return_value=>'X'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645701436039058718)
,p_plugin_attribute_id=>wwv_flow_api.id(2645700573545058718)
,p_display_sequence=>20
,p_display_value=>'Y-Axis'
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645701959078058718)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>23
,p_display_sequence=>270
,p_prompt=>'Color SQL Query'
,p_attribute_type=>'SQL'
,p_is_required=>true
,p_is_common=>false
,p_show_in_wizard=>false
,p_sql_min_column_count=>2
,p_sql_max_column_count=>2
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2645693014786058713)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'COLUMN'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<pre>select ''SALES'', rgb(0,255,0)',
'from dual',
'UNION',
'select ''RESEARCH'', rgba(0,25,47,0.5)',
'from dual;</pre>'))
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Enter a SQL Query that maps a series name to an RGB color. The first column must contain the series names (and those values must match the ones returned from the region SQL) and the second column must have the RGB or RGBA color notation for the serie'
||'s. ',
'Both columns must be VARCHAR2.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645702361764058718)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>24
,p_display_sequence=>80
,p_prompt=>'Multiple Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2645683866679058708)
,p_depending_on_condition_type=>'NULL'
,p_help_text=>'Select whether each series is displayed in a different color.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2645702778417058718)
,p_plugin_id=>wwv_flow_api.id(2228962028121037432)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>25
,p_display_sequence=>110
,p_prompt=>'Value Format Mask'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_common=>false
,p_show_in_wizard=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Custom'
,p_help_text=>'Select the format mask to apply to the displayed values.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645704220746058720)
,p_plugin_attribute_id=>wwv_flow_api.id(2645702778417058718)
,p_display_sequence=>30
,p_display_value=>'14,435'
,p_return_value=>',.0f'
,p_help_text=>'Comma-separated thousands, integers'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645704666684058720)
,p_plugin_attribute_id=>wwv_flow_api.id(2645702778417058718)
,p_display_sequence=>40
,p_display_value=>'14435'
,p_return_value=>'.0f'
,p_help_text=>'Integer'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645705664576058720)
,p_plugin_attribute_id=>wwv_flow_api.id(2645702778417058718)
,p_display_sequence=>60
,p_display_value=>'14,435.49'
,p_return_value=>',.2f'
,p_help_text=>'Comma-separated thousands, 2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645706166550058721)
,p_plugin_attribute_id=>wwv_flow_api.id(2645702778417058718)
,p_display_sequence=>70
,p_display_value=>'14435.49'
,p_return_value=>'.2f'
,p_help_text=>'2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645705209139058720)
,p_plugin_attribute_id=>wwv_flow_api.id(2645702778417058718)
,p_display_sequence=>71
,p_display_value=>'14.4k'
,p_return_value=>'.3s'
,p_help_text=>'Precision 3, SI suffixes'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645706668561058722)
,p_plugin_attribute_id=>wwv_flow_api.id(2645702778417058718)
,p_display_sequence=>80
,p_display_value=>'$14,435'
,p_return_value=>'$,.0f'
,p_help_text=>'Currency, comma-separated thousands, integer'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645707167297058722)
,p_plugin_attribute_id=>wwv_flow_api.id(2645702778417058718)
,p_display_sequence=>90
,p_display_value=>'$14435'
,p_return_value=>'$.0f'
,p_help_text=>'Currency, integer'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645703148107058719)
,p_plugin_attribute_id=>wwv_flow_api.id(2645702778417058718)
,p_display_sequence=>99
,p_display_value=>'$14,435.49'
,p_return_value=>'$,.2f'
,p_help_text=>'Currency, comma-separated thousands, 2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645707687475058722)
,p_plugin_attribute_id=>wwv_flow_api.id(2645702778417058718)
,p_display_sequence=>100
,p_display_value=>'$14435.49'
,p_return_value=>'$.2f'
,p_help_text=>'Currency, 2 decimals'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2645703647678058719)
,p_plugin_attribute_id=>wwv_flow_api.id(2645702778417058718)
,p_display_sequence=>120
,p_display_value=>'$14.4k'
,p_return_value=>'$.3s'
,p_help_text=>'Currency, precison 3, SI suffixes'
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_flot_pie
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(4390600385658068430)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.FLOT.PIE'
,p_display_name=>'Flot Pie Chart'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.FLOT.PIE'),'#IMAGE_PREFIX#plugins/com.oracle.apex.flot_pie/')
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/jquery-flot/0.8.3/excanvas#MIN#.js',
'#IMAGE_PREFIX#libraries/jquery-flot/0.8.3/jquery.flot#MIN#.js',
'#IMAGE_PREFIX#libraries/jquery-flot/0.8.3/jquery.flot.resize#MIN#.js',
'#PLUGIN_FILES#jquery.flot.pie.js',
'#PLUGIN_FILES#com_oracle_apex_flot_pie.js'))
,p_css_file_urls=>'#PLUGIN_FILES#com_oracle_apex_flot_pie.css'
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'    -- NOTE: THIS IS THE VALUE FOR PLUGIN FILE PREFIX #IMAGE_PREFIX#plugins/com.oracle.apex.flot_pie/',
'',
'function render (',
'    p_region              in apex_plugin.t_region,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result',
'is',
'    -- determine plugin attributes and assign readable names',
'    c_color_scheme         constant varchar2(255) := p_region.attribute_15;',
'    l_colors               varchar2(2000);',
'',
'    c_pie_type             constant apex_application_page_regions.attribute_05%type := nvl(p_region.attribute_05, ''STANDARD'');',
'',
'    c_inner_radius         constant number  := apex_plugin_util.get_attribute_as_number(apex_plugin_util.replace_substitutions(nvl(p_region.attribute_14,''-1'')), ''Inner Radius'');',
'',
'    c_show_tooltip         constant boolean := (instr('':'' || p_region.attribute_08 || '':'', '':TOOLTIP:'') > 0);',
'    c_show_legend          constant boolean := (instr('':'' || p_region.attribute_08 || '':'', '':LEGEND:'') > 0);',
'    c_show_label           constant boolean := (instr('':'' || p_region.attribute_08 || '':'', '':LABEL:'')  > 0);',
'    c_show_value           constant boolean := (instr('':'' || p_region.attribute_08 || '':'', '':VALUE:'')  > 0);',
'    c_pie_width            constant number  := to_number(apex_plugin_util.replace_substitutions(p_region.attribute_06));',
'',
'    c_min_height           constant number  := to_number(nvl(p_region.attribute_17, ''100''));',
'    c_max_height           constant number  := to_number(nvl(p_region.attribute_18, ''400''));',
'',
'    c_min_ar               constant number  := greatest(apex_plugin_util.get_attribute_as_number(p_plugin.attribute_01, ''Min Aspect Ratio''), 0.25);',
'    c_max_ar               constant number  := least(apex_plugin_util.get_attribute_as_number(p_plugin.attribute_02, ''Max Aspect Ratio''), 4);',
'',
'    c_combine_slices       constant boolean := (nvl(p_region.attribute_09, ''N'') = ''Y'');',
'    c_combine_threshold    constant number  := nvl(to_number(p_region.attribute_10), 10);',
'    c_combined_slice_label constant apex_application_page_regions.attribute_11%type := nvl(p_region.attribute_11, ''Other'');',
'    c_combined_slice_link  constant apex_application_page_regions.attribute_12%type := p_region.attribute_12;',
'    c_combined_slice_color constant apex_application_page_regions.attribute_13%type := p_region.attribute_13;',
'begin',
'    -- add placeholder div for chart',
'    sys.htp.p(',
'        ''<div class="flotPieContainer"><div id="'' || apex_escape.html_attribute(p_region.static_id || ''_chart'') || ''" style="width:'' ||',
'        case when c_pie_width is null then ''auto'' else c_pie_width || ''px'' end ||',
'        ''" class="flotPieContainerInner"></div></div>'' );',
'',
'    -- Set the colors to be used, if a non-SQL scheme was selected',
'    case c_color_scheme',
'      when ''MODERN'' then',
'        l_colors := ''#FF3B30,#FF9500,#FFCC00,#4CD964,#34AADC,#007AFF,#5856D6,#FF2D55,#8E8E93,#C7C7CC'';',
'      when ''MODERN2'' then',
'        l_colors := ''#1ABC9C,#2ECC71,#4AA3DF,#9B59B6,#3D566E,#F1C40F,#E67E22,#E74C3C'';',
'      when ''SOLAR'' then',
'        l_colors := ''#B58900,#CB4B16,#DC322F,#D33682,#6C71C4,#268BD2,#2AA198,#859900'';',
'      when ''METRO'' then',
'        l_colors := ''#E61400,#19A2DE,#319A31,#EF9608,#8CBE29,#A500FF,#00AAAD,#FF0094,#9C5100,#E671B5'';',
'      when ''CUSTOM'' then',
'        l_colors := p_region.attribute_16;',
'      when ''SQL'' then',
'        l_colors := null;',
'    end case;',
'',
'    -- Initialize the Flot pie chart when the page has been rendered.',
'    -- apex_javascript.add_attribute are used to make sure that',
'    -- the values are properly escaped.   ',
'    apex_javascript.add_onload_code (',
'        p_code => ''com_oracle_apex_flot_pie('' ||',
'                  apex_javascript.add_value(p_region.static_id) ||',
'                  ''{'' ||',
'                      apex_javascript.add_attribute(''colors'',           l_colors) || ',
'                      apex_javascript.add_attribute(''type'',             c_pie_type) || ',
'                      apex_javascript.add_attribute(''innerRadius'',      c_inner_radius)||',
'                      apex_javascript.add_attribute(''minAR'',            c_min_ar)||',
'                      apex_javascript.add_attribute(''maxAR'',            c_max_ar)||',
'                      apex_javascript.add_attribute(''minHeight'',        c_min_height) || ',
'                      apex_javascript.add_attribute(''maxHeight'',        c_max_height) || ',
'                      apex_javascript.add_attribute(''showLabel'',        c_show_label) || ',
'                      apex_javascript.add_attribute(''showLegend'',       c_show_legend) ||',
'                      apex_javascript.add_attribute(''showTooltip'',      c_show_tooltip) || ',
'                      apex_javascript.add_attribute(''showValue'',        c_show_value) || ',
'                      apex_javascript.add_attribute(''combineSlices'',    c_combine_slices) || ',
'                      apex_javascript.add_attribute(''combineThreshold'', c_combine_threshold) || ',
'                      apex_javascript.add_attribute(''combineLabel'',     apex_plugin_util.escape(',
'                                                                            apex_plugin_util.replace_substitutions (',
'                                                                                p_value  => c_combined_slice_label,',
'                                                                                p_escape => false ),',
'                                                                            p_region.escape_output )) || ',
'                      apex_javascript.add_attribute(''combineUrl'',       wwv_flow_utilities.prepare_url(',
'                                                                            apex_plugin_util.replace_substitutions (',
'                                                                                p_value  => c_combined_slice_link,',
'                                                                                p_escape => false ))) ||',
'                      apex_javascript.add_attribute(''combineColor'',     apex_plugin_util.escape(',
'                                                                            apex_plugin_util.replace_substitutions (',
'                                                                                p_value  => c_combined_slice_color,',
'                                                                                p_escape => false ),',
'                                                                            true )) || ',
'                      apex_javascript.add_attribute(''noDataFoundMessage'', p_region.no_data_found_message) || ',
'                      apex_javascript.add_attribute(''pageItems'',        apex_plugin_util.page_item_names_to_jquery(p_region.ajax_items_to_submit)) ||',
'                      apex_javascript.add_attribute(''ajaxIdentifier'',   apex_plugin.get_ajax_identifier, false, false) ||',
'                  ''});'' );',
'    apex_javascript.add_onload_code (',
'        p_code => ''setTimeout(function(){$("span.pieLabel").removeAttr("id");},1000);'' );',
'',
'    return null;',
'',
'end render;',
'',
'',
'function ajax (',
'     p_region in apex_plugin.t_region,',
'     p_plugin in apex_plugin.t_plugin )',
'     return apex_plugin.t_region_ajax_result',
'is',
'    -- It''s better to have named variables instead of using the generic ones,',
'    -- makes the code more readable. We are using the same defaults for the',
'    -- required attributes as in the plug-in attribute configuration, because',
'    -- they can still be null. Keep them in sync!',
'    c_label_column constant varchar2(255) := p_region.attribute_01;',
'    c_value_column constant varchar2(255) := p_region.attribute_02;',
'    c_color_column constant varchar2(255) := p_region.attribute_03;',
'    c_link_target  constant varchar2(255) := p_region.attribute_04;',
'',
'    l_label_column_no   pls_integer;',
'    l_value_column_no   pls_integer;',
'    l_color_column_no   pls_integer;',
'    l_column_value_list apex_plugin_util.t_column_value_list2;',
'    ',
'    l_label             varchar2(4000);',
'    l_value             number;',
'    l_color             varchar2(20);',
'    l_url               varchar2(4000);',
'begin',
'    apex_plugin_util.print_json_http_header;',
'',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'                               p_sql_statement  => p_region.source,',
'                               p_min_columns    => 2,',
'                               p_max_columns    => null,',
'                               p_component_name => p_region.name );',
'',
'    -- Get the actual column# for faster access and also verify that the data type',
'    -- of the column matches with what we are looking for',
'    l_label_column_no := apex_plugin_util.get_column_no (',
'                             p_attribute_label   => ''Label Column'',',
'                             p_column_alias      => c_label_column,',
'                             p_column_value_list => l_column_value_list,',
'                             p_is_required       => true,',
'                             p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'                                      ',
'    l_value_column_no := apex_plugin_util.get_column_no (',
'                             p_attribute_label   => ''Value Column'',',
'                             p_column_alias      => c_value_column,',
'                             p_column_value_list => l_column_value_list,',
'                             p_is_required       => true,',
'                             p_data_type         => apex_plugin_util.c_data_type_number );',
'',
'    l_color_column_no := apex_plugin_util.get_column_no (',
'                             p_attribute_label   => ''Color Column'',',
'                             p_column_alias      => c_color_column,',
'                             p_column_value_list => l_column_value_list,',
'                             p_is_required       => false,',
'                             p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'',
'    sys.htp.prn(''['');',
'',
'    -- It''s time to emit the selected rows',
'    for l_row_num in 1 .. l_column_value_list(1).value_list.count loop',
'        begin',
'            apex_plugin_util.set_component_values (',
'                p_column_value_list => l_column_value_list,',
'                p_row_num           => l_row_num );',
'',
'            -- get the label',
'            l_label := apex_plugin_util.escape (',
'                           apex_plugin_util.get_value_as_varchar2 (',
'                               p_data_type => l_column_value_list(l_label_column_no).data_type,',
'                               p_value     => l_column_value_list(l_label_column_no).value_list(l_row_num) ),',
'                           p_region.escape_output );',
'',
'            -- get the value',
'            l_value := l_column_value_list(l_value_column_no).value_list(l_row_num).number_value;',
'',
'            -- get the color if specified',
'            if l_color_column_no is not null then',
'                l_color := apex_plugin_util.escape (',
'                               apex_plugin_util.get_value_as_varchar2 (',
'                                   p_data_type => l_column_value_list(l_color_column_no).data_type,',
'                                   p_value     => l_column_value_list(l_color_column_no).value_list(l_row_num) ),',
'                               true );',
'            end if;',
'',
'            -- get the link target if it does exist',
'            if c_link_target is not null then',
'                l_url := wwv_flow_utilities.prepare_url (',
'                             apex_plugin_util.replace_substitutions (',
'                                 p_value  => c_link_target,',
'                                 p_escape => false ));',
'            end if;',
'',
'            -- write the data to our output buffer',
'            sys.htp.p (',
'                case when l_row_num > 1 then '','' end ||',
'                ''{'' ||',
'                apex_javascript.add_attribute(''label'', l_label) ||',
'                apex_javascript.add_attribute(''color'', l_color) ||',
'                apex_javascript.add_attribute(''url'',   l_url) ||',
'                apex_javascript.add_attribute(''data'',  l_value, false, false ) ||',
'                ''}'' );',
'',
'            apex_plugin_util.clear_component_values;',
'        exception when others then',
'            apex_plugin_util.clear_component_values;',
'            raise;',
'        end;',
'    end loop;',
'    sys.htp.prn('']'');',
'',
'    return null;',
'end ajax;'))
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'SOURCE_SQL:SOURCE_REQUIRED:AJAX_ITEMS_TO_SUBMIT:NO_DATA_FOUND_MESSAGE:ESCAPE_OUTPUT'
,p_sql_min_column_count=>1
,p_sql_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select *',
'  from emp',
' order by sal'))
,p_substitute_attributes=>false
,p_subscribe_plugin_settings=>true
,p_help_text=>'Flot Pie Chart is a pure JavaScript plotting library for jQuery, with a focus on simple usage, attractive looks and interactive features.'
,p_version_identifier=>'5.02'
,p_about_url=>'http://apex.oracle.com/plugins'
,p_files_version=>25
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2646739365981016354)
,p_plugin_id=>wwv_flow_api.id(4390600385658068430)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>510
,p_prompt=>'Minimum Aspect Ratio'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'1.333'
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the minimum aspect ratio that charts use to recommend a height. A maximum aspect ratio of 3 means that the chart''s width should be no greater than 3 times its height. </p>',
'<p>Note: This setting can be overridden by the ''Minimum Height'' setting on the region.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2646739745298016354)
,p_plugin_id=>wwv_flow_api.id(4390600385658068430)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>520
,p_prompt=>'Maximum Aspect Ratio'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'1.5'
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the maximum aspect ratio that charts use to recommend a height. A maximum aspect ratio of 3 means that the chart''s width should be no greater than 3 times its height. </p>',
'<p>Note: This setting can be overridden by the ''Maximum Height'' setting on the region.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2646740103732016354)
,p_plugin_id=>wwv_flow_api.id(4390600385658068430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Label Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the labels for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2646740494010016354)
,p_plugin_id=>wwv_flow_api.id(4390600385658068430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Value Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the values for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2646740962918016354)
,p_plugin_id=>wwv_flow_api.id(4390600385658068430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>170
,p_prompt=>'Colors Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2646752356681016362)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'SQL'
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dl>',
'  <dt>Hexadecimal (hex) notation</dt><dd><pre>#FF3377</pre>;</dd>',
'  <dt>HTML colors</dt><dd><pre>blue</pre>.</dd>',
'</dl>'))
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Select the column from the region SQL Query that holds the color codes for the chart. The color can be set using hex values or as the name of the color.</p>',
'<p>Note: If no column is entered then the color will automatically be calculated.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2646741292248016355)
,p_plugin_id=>wwv_flow_api.id(4390600385658068430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>30
,p_prompt=>'Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Example 1: URL to navigate to page 10 and set P10_EMPNO to the EMPNO value of the clicked entry.',
'<pre>f?p=&amp;APP_ID.:10:&amp;APP_SESSION.::&amp;DEBUG.:RP,10:P10_EMPNO:&amp;EMPNO.</pre>',
'</p>',
'<p>Example 2: Display the EMPNO value of the clicked entry in a JavaScript alert',
'<pre>javascript:alert(''current empno: &amp;EMPNO.'');</pre>',
'</p>'))
,p_help_text=>'<p>Enter a target page to be called when the user clicks a chart entry.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2646741723641016355)
,p_plugin_id=>wwv_flow_api.id(4390600385658068430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>40
,p_prompt=>'Pie Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'STANDARD'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select the type of pie chart that should be displayed.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2646742139344016356)
,p_plugin_attribute_id=>wwv_flow_api.id(2646741723641016355)
,p_display_sequence=>10
,p_display_value=>'Standard'
,p_return_value=>'STANDARD'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2646742605666016356)
,p_plugin_attribute_id=>wwv_flow_api.id(2646741723641016355)
,p_display_sequence=>20
,p_display_value=>'Donut'
,p_return_value=>'DONUT'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2646743118219016356)
,p_plugin_attribute_id=>wwv_flow_api.id(2646741723641016355)
,p_display_sequence=>30
,p_display_value=>'Tilted'
,p_return_value=>'TILTED'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2646743591525016356)
,p_plugin_attribute_id=>wwv_flow_api.id(2646741723641016355)
,p_display_sequence=>40
,p_display_value=>'Rectangular'
,p_return_value=>'RECT'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2646744092932016356)
,p_plugin_id=>wwv_flow_api.id(4390600385658068430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>70
,p_prompt=>'Width'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_display_length=>5
,p_max_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the width of the pie chart you want to create. For example, setting the width to 100 will create a pie chart that is a maximum of 100 pixels wide and 100 pixels in height.</p>',
'<p>Note: If no value is specified, the pie chart will consume all the space of the containing region. </p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2646744494163016356)
,p_plugin_id=>wwv_flow_api.id(4390600385658068430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>60
,p_prompt=>'Display Options'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>true
,p_default_value=>'LABEL:VALUE'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Check which attributes are shown on the pie chart.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2646744957648016357)
,p_plugin_attribute_id=>wwv_flow_api.id(2646744494163016356)
,p_display_sequence=>5
,p_display_value=>'Legend'
,p_return_value=>'LEGEND'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2646745407512016357)
,p_plugin_attribute_id=>wwv_flow_api.id(2646744494163016356)
,p_display_sequence=>10
,p_display_value=>'Tooltip'
,p_return_value=>'TOOLTIP'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2646745873928016357)
,p_plugin_attribute_id=>wwv_flow_api.id(2646744494163016356)
,p_display_sequence=>30
,p_display_value=>'Label'
,p_return_value=>'LABEL'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2646746383358016358)
,p_plugin_attribute_id=>wwv_flow_api.id(2646744494163016356)
,p_display_sequence=>40
,p_display_value=>'Value'
,p_return_value=>'VALUE'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2646746870286016358)
,p_plugin_id=>wwv_flow_api.id(4390600385658068430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Combine Slices'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>'Select whether slices that are below a given percentage threshold can be combined into a single "other" slice.  For example, if the threshold is set to 10%, then any slice that is below 10% will be grouped into the "other" slice.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2646747356949016358)
,p_plugin_id=>wwv_flow_api.id(4390600385658068430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Combined Slice Threshold'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'10'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2646746870286016358)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_help_text=>'Enter the threshold percentage which determines which slices to group together in an "other" slice.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2646747671879016359)
,p_plugin_attribute_id=>wwv_flow_api.id(2646747356949016358)
,p_display_sequence=>10
,p_display_value=>'1%'
,p_return_value=>'1'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2646748180322016360)
,p_plugin_attribute_id=>wwv_flow_api.id(2646747356949016358)
,p_display_sequence=>20
,p_display_value=>'2%'
,p_return_value=>'2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2646748765757016360)
,p_plugin_attribute_id=>wwv_flow_api.id(2646747356949016358)
,p_display_sequence=>30
,p_display_value=>'5%'
,p_return_value=>'5'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2646749201907016360)
,p_plugin_attribute_id=>wwv_flow_api.id(2646747356949016358)
,p_display_sequence=>40
,p_display_value=>'10%'
,p_return_value=>'10'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2646749684601016360)
,p_plugin_attribute_id=>wwv_flow_api.id(2646747356949016358)
,p_display_sequence=>50
,p_display_value=>'15%'
,p_return_value=>'15'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2646750236184016360)
,p_plugin_attribute_id=>wwv_flow_api.id(2646747356949016358)
,p_display_sequence=>60
,p_display_value=>'20%'
,p_return_value=>'20'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2646750718866016361)
,p_plugin_id=>wwv_flow_api.id(4390600385658068430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Combined Slice Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'Other'
,p_display_length=>20
,p_max_length=>20
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_api.id(2646746870286016358)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'Enter the label for the combined slice.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2646751135101016361)
,p_plugin_id=>wwv_flow_api.id(4390600385658068430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_prompt=>'Combined Slice Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2646746870286016358)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter a target page to be called when the user clicks the combined slice. </p>',
'<p>Note: Leave the link blank if you do not want to make this clickable. </p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2646751528447016361)
,p_plugin_id=>wwv_flow_api.id(4390600385658068430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_prompt=>'Combined Slice Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dl>',
'  <dt>Hexadecimal (hex) notation</dt><dd><pre>#FF3377</pre>;</dd>',
'  <dt>HTML colors</dt><dd><pre>blue</pre>.</dd>',
'</dl>'))
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>Enter the color which should be used for the combined slice. The color can be entered as hex value or as the name of the color.</p>',
'<p>Note: If no color is specified then it will be defaulted to gray.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2646751879183016362)
,p_plugin_id=>wwv_flow_api.id(4390600385658068430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>50
,p_prompt=>'Inner Radius'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_display_length=>5
,p_max_length=>5
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2646741723641016355)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'DONUT'
,p_help_text=>'Enter the radius of the hole inside the donut. Numbers between 0 and 1 are treated as percentages and numbers greater than 1 are treated as pixels'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2646752356681016362)
,p_plugin_id=>wwv_flow_api.id(4390600385658068430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_prompt=>'Color Scheme'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'MODERN'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Select the color scheme used to render the chart.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2646755186294016364)
,p_plugin_attribute_id=>wwv_flow_api.id(2646752356681016362)
,p_display_sequence=>10
,p_display_value=>'Modern'
,p_return_value=>'MODERN'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2646752714096016362)
,p_plugin_attribute_id=>wwv_flow_api.id(2646752356681016362)
,p_display_sequence=>20
,p_display_value=>'Modern 2'
,p_return_value=>'MODERN2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2646753192401016363)
,p_plugin_attribute_id=>wwv_flow_api.id(2646752356681016362)
,p_display_sequence=>30
,p_display_value=>'Solar'
,p_return_value=>'SOLAR'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2646753698245016363)
,p_plugin_attribute_id=>wwv_flow_api.id(2646752356681016362)
,p_display_sequence=>40
,p_display_value=>'Metro'
,p_return_value=>'METRO'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2646754180410016364)
,p_plugin_attribute_id=>wwv_flow_api.id(2646752356681016362)
,p_display_sequence=>50
,p_display_value=>'SQL Column'
,p_return_value=>'SQL'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(2646754734392016364)
,p_plugin_attribute_id=>wwv_flow_api.id(2646752356681016362)
,p_display_sequence=>60
,p_display_value=>'Custom'
,p_return_value=>'CUSTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2646755694969016364)
,p_plugin_id=>wwv_flow_api.id(4390600385658068430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_prompt=>'Custom Colors'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(2646752356681016362)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'CUSTOM'
,p_help_text=>'<p>Enter a list of CSS supported colors separated by colons.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2646756118145016365)
,p_plugin_id=>wwv_flow_api.id(4390600385658068430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>180
,p_prompt=>'Minimum Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_display_length=>5
,p_max_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'Enter the minimum height, in pixels, of the chart. Chart width will adapt to the size of the region.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2646756535692016365)
,p_plugin_id=>wwv_flow_api.id(4390600385658068430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>190
,p_prompt=>'Maximum Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>'Enter the maximum height, in pixels, of the chart. Chart width will adapt to the size of the region.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(2646756937665016365)
,p_plugin_id=>wwv_flow_api.id(4390600385658068430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>80
,p_prompt=>'Value Format Mask'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'Enter the data format mask for the pie slices.'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(67613105901476246)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_navigation_list_id=>wwv_flow_api.id(67570962369476070)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(67605350526476214)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(67613071530476245)
,p_nav_bar_list_template_id=>wwv_flow_api.id(67605216049476212)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_44/gauge.min.js',
'#IMAGE_PREFIX#themes/theme_44/countUp.js'))
,p_javascript_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'/*var options = {',
'  useEasing : true, ',
'  useGrouping : true, ',
'  separator : '','', ',
'  decimal : ''.'', ',
'  prefix : ''% '', ',
'  suffix : '' CPU Usage'' ',
'};',
'',
'var c0 = new countUp("cputext", 0, 21, 0, 4, options);',
'',
'/**********************************************************/',
'',
'var option = {',
'  useEasing : true, ',
'  useGrouping : true, ',
'  separator : '','', ',
'  decimal : ''.'', ',
'  prefix : ''% '', ',
'  suffix : '' RAM Usage'' ',
'};',
'',
'var c1 = new countUp("ramtext", 0, 43, 0, 4, option);',
'',
'/**********************************************************/',
'',
'var option1 = {',
'  useEasing : true, ',
'  useGrouping : true, ',
'  separator : '','', ',
'  decimal : ''.'', ',
'  prefix : ''% '', ',
'  suffix : '' HARD Usage'' ',
'};',
'',
'var c2 = new countUp("hardtext", 0, 76, 0, 4, option1);*/'))
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'/*c0.start();',
'c1.start();',
'c2.start();*/',
'/************ CPU Usage ******************/',
'',
'var optst = {',
'  lines: 12, // The number of lines to draw',
'  angle: 0, // The length of each line',
'  lineWidth: 0.44, // The line thickness',
'  pointer: {',
'    length: 0.9, // The radius of the inner circle',
'    strokeWidth: 0.035, // The rotation offset',
'    color: ''#000000'' // Fill color',
'  },',
'  colorStart: ''#01FF70'',   // Colors',
'  colorStop: ''#2ECC40'',    // just experiment with them',
'  strokeColor: ''#E0E0E0'',   // to see which ones work best for you',
'  generateGradient: true',
'};',
'var target1 = document.getElementById(''cpu''); // your canvas element',
'var gauge = new Gauge(target1);',
'gauge.setOptions(optst); // create sexy gauge!',
'gauge.maxValue = 100; // set max gauge value',
'gauge.animationSpeed = 32; // set animation speed (32 is default value)',
'gauge.set(21); // set actual value',
'',
'',
'/************ RAM Usage ******************/',
'',
'var optst2 = {',
'  lines: 12, // The number of lines to draw',
'  angle: 0, // The length of each line',
'  lineWidth: 0.44, // The line thickness',
'  pointer: {',
'    length: 0.9, // The radius of the inner circle',
'    strokeWidth: 0.035, // The rotation offset',
'    color: ''#000000'' // Fill color',
'  },',
'  colorStart: ''#FFDC00'',   // Colors',
'  colorStop: ''#FF851B'',    // just experiment with them',
'  strokeColor: ''#E0E0E0'',   // to see which ones work best for you',
'  generateGradient: true',
'};',
'var target2 = document.getElementById(''ram''); // your canvas element',
'var gauge = new Gauge(target2);',
'gauge.setOptions(optst2); // create sexy gauge!',
'gauge.maxValue = 100; // set max gauge value',
'gauge.animationSpeed = 32; // set animation speed (32 is default value)',
'gauge.set(43); // set actual value',
'',
'',
'/************ HARD Usage ******************/',
'',
'var optst3 = {',
'  lines: 12, // The number of lines to draw',
'  angle: 0, // The length of each line',
'  lineWidth: 0.44, // The line thickness',
'  pointer: {',
'    length: 0.9, // The radius of the inner circle',
'    strokeWidth: 0.035, // The rotation offset',
'    color: ''#000000'' // Fill color',
'  },',
'  colorStart: ''#CF6304'',   // Colors',
'  colorStop: ''#DA3C1C'',    // just experiment with them',
'  strokeColor: ''#E0E0E0'',   // to see which ones work best for you',
'  generateGradient: true',
'};',
'var target3 = document.getElementById(''hard''); // your canvas element',
'var gauge = new Gauge(target3);',
'gauge.setOptions(optst3); // create sexy gauge!',
'gauge.maxValue = 100; // set max gauge value',
'gauge.animationSpeed = 32; // set animation speed (32 is default value)',
'gauge.set(76); // set actual value'))
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.preview-textfield {',
'    margin: auto;',
'    text-align: center;',
'    font-size: 20px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20160227100923'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67614999867476270)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(67615946319486601)
,p_name=>'Instance'
,p_template=>wwv_flow_api.id(67587118660476190)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'  instance_name AS "Instance Name"',
'  ,  (SELECT   VALUE',
'            FROM   v$parameter',
'           WHERE   name = ''cpu_count'')',
'            "CPU Count",',
'         (SELECT   ROUND (bytes / POWER (2, 30), 2)',
'            FROM   V$SGAINFO',
'           WHERE   name = ''Maximum SGA Size'')',
'            "SGA in GBytes",',
'         (SELECT   ROUND (SUM (bytes) / POWER (2, 30), 0)',
'            FROM   (SELECT   (bytes) bytes FROM dba_data_files',
'                    UNION ALL',
'                    SELECT   (bytes) bytes FROM dba_temp_files ))',
'            "Filesize in GByte"',
'  , host_name',
'  , Version',
'  , startup_time',
'  , status, archiver, log_switch_wait, logins , shutdown_pending, database_status, instance_role, active_state, blocked',
'  from v$instance'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(67597291740476198)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67616077396486602)
,p_query_column_id=>1
,p_column_alias=>'Instance Name'
,p_column_display_sequence=>1
,p_column_heading=>'Instance name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67616110791486603)
,p_query_column_id=>2
,p_column_alias=>'CPU Count'
,p_column_display_sequence=>2
,p_column_heading=>'Cpu count'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67616282166486604)
,p_query_column_id=>3
,p_column_alias=>'SGA in GBytes'
,p_column_display_sequence=>3
,p_column_heading=>'Sga in gbytes'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67616381826486605)
,p_query_column_id=>4
,p_column_alias=>'Filesize in GByte'
,p_column_display_sequence=>4
,p_column_heading=>'Filesize in gbyte'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67616484929486606)
,p_query_column_id=>5
,p_column_alias=>'HOST_NAME'
,p_column_display_sequence=>5
,p_column_heading=>'Host name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67616572987486607)
,p_query_column_id=>6
,p_column_alias=>'VERSION'
,p_column_display_sequence=>6
,p_column_heading=>'Version'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67616624619486608)
,p_query_column_id=>7
,p_column_alias=>'STARTUP_TIME'
,p_column_display_sequence=>7
,p_column_heading=>'Startup time'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67616795462486609)
,p_query_column_id=>8
,p_column_alias=>'STATUS'
,p_column_display_sequence=>8
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67616836676486610)
,p_query_column_id=>9
,p_column_alias=>'ARCHIVER'
,p_column_display_sequence=>9
,p_column_heading=>'Archiver'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67616960529486611)
,p_query_column_id=>10
,p_column_alias=>'LOG_SWITCH_WAIT'
,p_column_display_sequence=>10
,p_column_heading=>'Log switch wait'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67617034785486612)
,p_query_column_id=>11
,p_column_alias=>'LOGINS'
,p_column_display_sequence=>11
,p_column_heading=>'Logins'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67617158996486613)
,p_query_column_id=>12
,p_column_alias=>'SHUTDOWN_PENDING'
,p_column_display_sequence=>12
,p_column_heading=>'Shutdown pending'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67617298707486614)
,p_query_column_id=>13
,p_column_alias=>'DATABASE_STATUS'
,p_column_display_sequence=>13
,p_column_heading=>'Database status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67617339652486615)
,p_query_column_id=>14
,p_column_alias=>'INSTANCE_ROLE'
,p_column_display_sequence=>14
,p_column_heading=>'Instance role'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67617405408486616)
,p_query_column_id=>15
,p_column_alias=>'ACTIVE_STATE'
,p_column_display_sequence=>15
,p_column_heading=>'Active state'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67617558390486617)
,p_query_column_id=>16
,p_column_alias=>'BLOCKED'
,p_column_display_sequence=>16
,p_column_heading=>'Blocked'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67617640612486618)
,p_plug_name=>' Active Session'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(67587118660476190)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'  null "link" ',
'  , nvl( Module, schemaname ) "Module"',
'  , count(*) "Session"',
' from v$session',
'where status = ''ACTIVE''',
'  and type = ''USER''',
'group by nvl( Module, schemaname )'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.FLOT.PIE'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'Module'
,p_attribute_02=>'Session'
,p_attribute_04=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:RP::'
,p_attribute_05=>'DONUT'
,p_attribute_08=>'TOOLTIP:LABEL:VALUE'
,p_attribute_09=>'N'
,p_attribute_14=>'40'
,p_attribute_15=>'MODERN2'
,p_attribute_17=>'220'
,p_attribute_18=>'220'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67617978420486621)
,p_plug_name=>'SGA'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--noPadding'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(67587118660476190)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select  ''f?p=&APP_ID.:2:''||:APP_SESSION||'':::'' "link", component, current_size / 1024/1024 MByte',
'  from v$sga_dynamic_components',
'where current_size <> 0 '))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.FLOT.PIE'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'COMPONENT'
,p_attribute_02=>'MBYTE'
,p_attribute_04=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP::'
,p_attribute_05=>'STANDARD'
,p_attribute_08=>'TOOLTIP:LABEL:VALUE'
,p_attribute_09=>'N'
,p_attribute_15=>'MODERN2'
,p_attribute_17=>'340'
,p_attribute_18=>'340'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67618215409486624)
,p_plug_name=>'Redo Log Swithes per Day'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(67587118660476190)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT null link,',
'       A.day Day,',
'       A.Count# Redo_Switches',
'FROM',
'  (SELECT TO_CHAR(First_Time,''YYYY-MM-DD'') DAY,',
'          Count(1) Count#',
'  FROM v$log_history',
'  where sysdate - 30 <= first_time',
'  GROUP BY TO_CHAR(First_Time,''YYYY-MM-DD'')',
'  ) A ',
'  where rownum < 10',
'order by 2 ;'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.D3.BARCHART'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'DAY'
,p_attribute_02=>'REDO_SWITCHES'
,p_attribute_05=>'Redo Logs'
,p_attribute_06=>'VERTICAL,SIDE-BY-SIDE'
,p_attribute_10=>'Y'
,p_attribute_13=>'MODERN2'
,p_attribute_15=>'FRIENDLY'
,p_attribute_16=>'10'
,p_attribute_18=>'200'
,p_attribute_19=>'200'
,p_attribute_21=>'BARS'
,p_attribute_24=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67876205944730023)
,p_plug_name=>'CPU Usage'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(67587118660476190)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h1 class="preview-textfield" id="cputext">75</h1>',
'<canvas id="cpu"  style="text-align: center; margin:0 auto;display: table;">guage</canvas>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67876315982730024)
,p_plug_name=>'RAM Usage'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(67587118660476190)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h1 class="preview-textfield" id="ramtext">43</h1>',
'<canvas id="ram" style="text-align: center; margin:0 auto;display: table;">guage</canvas>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67876400478730025)
,p_plug_name=>'HARD Usage'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(67587118660476190)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h1 class="preview-textfield" id="hardtext">75</h1>',
'<canvas id="hard"  style="text-align: center; margin:0 auto;display: table;">guage</canvas>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'SGA'
,p_page_mode=>'NORMAL'
,p_step_title=>'SGA'
,p_step_sub_title=>'SGA'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715031121'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67635002053582558)
,p_plug_name=>'SGA DYNAMIC COMPONENTS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select * ',
'from v$sga_dynamic_components'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(67635158167582558)
,p_name=>'SGA'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67635158167582558
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67618546195486627)
,p_db_column_name=>'COMPONENT'
,p_display_order=>10
,p_column_identifier=>'D'
,p_column_label=>'Component'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67618640108486628)
,p_db_column_name=>'CURRENT_SIZE'
,p_display_order=>20
,p_column_identifier=>'E'
,p_column_label=>'Current size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67618750623486629)
,p_db_column_name=>'MIN_SIZE'
,p_display_order=>30
,p_column_identifier=>'F'
,p_column_label=>'Min size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67618830429486630)
,p_db_column_name=>'MAX_SIZE'
,p_display_order=>40
,p_column_identifier=>'G'
,p_column_label=>'Max size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67618969572486631)
,p_db_column_name=>'USER_SPECIFIED_SIZE'
,p_display_order=>50
,p_column_identifier=>'H'
,p_column_label=>'User specified size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67619088455486632)
,p_db_column_name=>'OPER_COUNT'
,p_display_order=>60
,p_column_identifier=>'I'
,p_column_label=>'Oper count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67619192454486633)
,p_db_column_name=>'LAST_OPER_TYPE'
,p_display_order=>70
,p_column_identifier=>'J'
,p_column_label=>'Last oper type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67619273844486634)
,p_db_column_name=>'LAST_OPER_MODE'
,p_display_order=>80
,p_column_identifier=>'K'
,p_column_label=>'Last oper mode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67619367999486635)
,p_db_column_name=>'LAST_OPER_TIME'
,p_display_order=>90
,p_column_identifier=>'L'
,p_column_label=>'Last oper time'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67619447548486636)
,p_db_column_name=>'GRANULE_SIZE'
,p_display_order=>100
,p_column_identifier=>'M'
,p_column_label=>'Granule size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(67636681708582871)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'676367'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'COMPONENT:CURRENT_SIZE:MIN_SIZE:MAX_SIZE:USER_SPECIFIED_SIZE:OPER_COUNT:LAST_OPER_TYPE:LAST_OPER_MODE:LAST_OPER_TIME:GRANULE_SIZE'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'PGA'
,p_page_mode=>'NORMAL'
,p_step_title=>'PGA'
,p_step_sub_title=>'PGA'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150720203911'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67646046013612128)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67646691667612133)
,p_plug_name=>'PGA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from V$PGASTAT'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(67646752896612133)
,p_name=>'PGA'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67646752896612133
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67647138269612136)
,p_db_column_name=>'NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67647555696612136)
,p_db_column_name=>'VALUE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67647923892612137)
,p_db_column_name=>'UNIT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Unit'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(67648389019612371)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'676484'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'NAME:VALUE:UNIT'
,p_sort_column_1=>'VALUE'
,p_sort_direction_1=>'DESC'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67876516157730026)
,p_plug_name=>'PGA Chart'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(67587118660476190)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'',
'select name, round( value/1024/1024) as MByte',
' from v$PGASTAT',
'where round( value/1024/1024) <> 0 ',
''))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.FLOT.PIE'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'NAME'
,p_attribute_02=>'MBYTE'
,p_attribute_05=>'DONUT'
,p_attribute_08=>'LEGEND:TOOLTIP'
,p_attribute_09=>'N'
,p_attribute_14=>'80'
,p_attribute_15=>'MODERN2'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'DB Parameter'
,p_page_mode=>'NORMAL'
,p_step_title=>'DB Parameter'
,p_step_sub_title=>'DB Parameter'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715031939'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67651076453639600)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67651648045639600)
,p_plug_name=>'DB Parameter'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from v$parameter'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(67651720272639600)
,p_name=>'DB Parameter'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67651720272639600
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67652143371639601)
,p_db_column_name=>'NUM'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Num'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67652519202639601)
,p_db_column_name=>'NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67652959328639601)
,p_db_column_name=>'TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Type'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67653305703639603)
,p_db_column_name=>'VALUE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Value'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67653788629639604)
,p_db_column_name=>'DISPLAY_VALUE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Display Value'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67654181481639604)
,p_db_column_name=>'ISDEFAULT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Isdefault'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67654541882639604)
,p_db_column_name=>'ISSES_MODIFIABLE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Isses Modifiable'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67654936653639604)
,p_db_column_name=>'ISSYS_MODIFIABLE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Issys Modifiable'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67655376529639604)
,p_db_column_name=>'ISINSTANCE_MODIFIABLE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Isinstance Modifiable'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67655789506639606)
,p_db_column_name=>'ISMODIFIED'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Ismodified'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67656195610639606)
,p_db_column_name=>'ISADJUSTED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Isadjusted'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67656592038639606)
,p_db_column_name=>'ISDEPRECATED'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Isdeprecated'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67656984543639606)
,p_db_column_name=>'ISBASIC'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Isbasic'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67657312454639606)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67657733332639606)
,p_db_column_name=>'UPDATE_COMMENT'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Update Comment'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67658133546639606)
,p_db_column_name=>'HASH'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Hash'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(67658522441640228)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'676586'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'NUM:NAME:TYPE:VALUE:DISPLAY_VALUE:ISDEFAULT:ISSES_MODIFIABLE:ISSYS_MODIFIABLE:ISINSTANCE_MODIFIABLE:ISMODIFIED:ISADJUSTED:ISDEPRECATED:ISBASIC:DESCRIPTION:UPDATE_COMMENT:HASH'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Buffer Pool Keep Candidates'
,p_page_mode=>'NORMAL'
,p_step_title=>'Buffer Pool Keep Candidates'
,p_step_sub_title=>'Buffer Pool Keep Candidates'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715032457'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67660223626653988)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67660823957653991)
,p_plug_name=>'Buffer Pool Keep Candidates'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select t1.owner,t1.subobject_name , sum ( s.bytes) bytes , ',
'   ''alter ''||s.segment_type||'' ''||t1.owner||''.''||s.segment_name||'' storage (buffer_pool keep);'' sql_statement, ',
' (sum(num_blocks)/greatest(sum(blocks), .001))*100 memory_blocks_pct',
'from',
'   ( select',
'   o.owner          owner,',
'   o.object_name    object_name,',
'   o.subobject_name subobject_name,',
'   o.object_type    object_type,',
'   count(distinct file# || block#)         num_blocks',
'from',
'   dba_objects  o,',
'   v$bh         bh',
'where',
'   o.data_object_id  = bh.objd',
'and',
'   o.owner not in (''SYS'',''SYSTEM'') ',
'and',
'   bh.status != ''free''',
'group by',
'   o.owner,',
'   o.object_name,',
'   o.subobject_name,',
'   o.object_type',
' ) t1 ,',
'   dba_segments s',
'where',
'   s.segment_name = t1.object_name',
'and',
'   s.owner = t1.owner',
'and',
'   s.segment_type = t1.object_type',
'and',
'   nvl(s.partition_name,''-'') = nvl(t1.subobject_name,''-'')',
'and',
'   buffer_pool <> ''KEEP''',
'and',
'   object_type in (''TABLE'',''INDEX'') ',
'group by',
'   t1.owner,',
'   s.segment_name,',
'   t1.subobject_name,',
'   s.segment_type'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(67660977791653991)
,p_name=>'Buffer Pool Keep Candidates'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67660977791653991
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67661360792653991)
,p_db_column_name=>'OWNER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67661730662653991)
,p_db_column_name=>'SUBOBJECT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Subobject Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67662134344653994)
,p_db_column_name=>'BYTES'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67662521052653994)
,p_db_column_name=>'SQL_STATEMENT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Sql Statement'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67662934804653995)
,p_db_column_name=>'MEMORY_BLOCKS_PCT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Memory Blocks Pct'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(67663319900654239)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'676634'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'OWNER:SUBOBJECT_NAME:BYTES:SQL_STATEMENT:MEMORY_BLOCKS_PCT'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(67664452744671946)
,p_report_id=>wwv_flow_api.id(67663319900654239)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'MEMORY_BLOCKS_PCT'
,p_operator=>'>'
,p_expr=>'80'
,p_condition_sql=>'"MEMORY_BLOCKS_PCT" > to_number(#APXWS_EXPR#)'
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Version and Patches'
,p_page_mode=>'NORMAL'
,p_step_title=>'Version and Patches'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150719153251'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(67619519506486637)
,p_name=>'Version'
,p_template=>wwv_flow_api.id(67587118660476190)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>'select * from v$version'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(67595940629476198)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67619641579486638)
,p_query_column_id=>1
,p_column_alias=>'BANNER'
,p_column_display_sequence=>1
,p_column_heading=>'Banner'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(67619765462486639)
,p_name=>'Patches'
,p_template=>wwv_flow_api.id(67587118660476190)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source=>'select * from sys.registry$history'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(67595940629476198)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Patches'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67619816230486640)
,p_query_column_id=>1
,p_column_alias=>'ACTION_TIME'
,p_column_display_sequence=>1
,p_column_heading=>'Action time'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67619961678486641)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'Action'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67620008841486642)
,p_query_column_id=>3
,p_column_alias=>'NAMESPACE'
,p_column_display_sequence=>3
,p_column_heading=>'Namespace'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67620173501486643)
,p_query_column_id=>4
,p_column_alias=>'VERSION'
,p_column_display_sequence=>4
,p_column_heading=>'Version'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67620268576486644)
,p_query_column_id=>5
,p_column_alias=>'ID'
,p_column_display_sequence=>5
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67620384183486645)
,p_query_column_id=>6
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>6
,p_column_heading=>'Comments'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(67620465667486646)
,p_name=>'Options'
,p_template=>wwv_flow_api.id(67587118660476190)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select parameter, value,',
'case value',
'when ''TRUE'' then ''#2ECC40''',
'when ''FALSE'' then ''#FF4136''',
'end color',
'from v$option'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(67595940629476198)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67620531682486647)
,p_query_column_id=>1
,p_column_alias=>'PARAMETER'
,p_column_display_sequence=>1
,p_column_heading=>'Parameter'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67620693061486648)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="color:#COLOR#;font-weight: bold;">#VALUE#</span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67877318666730034)
,p_query_column_id=>3
,p_column_alias=>'COLOR'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(67620780401486649)
,p_name=>'Registry'
,p_template=>wwv_flow_api.id(67587118660476190)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>'select * from dba_registry'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(67595940629476198)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67620895264486650)
,p_query_column_id=>1
,p_column_alias=>'COMP_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Comp id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67776846346436001)
,p_query_column_id=>2
,p_column_alias=>'COMP_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Comp name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67776914542436002)
,p_query_column_id=>3
,p_column_alias=>'VERSION'
,p_column_display_sequence=>3
,p_column_heading=>'Version'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67777037344436003)
,p_query_column_id=>4
,p_column_alias=>'STATUS'
,p_column_display_sequence=>4
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67777137276436004)
,p_query_column_id=>5
,p_column_alias=>'MODIFIED'
,p_column_display_sequence=>5
,p_column_heading=>'Modified'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67777239842436005)
,p_query_column_id=>6
,p_column_alias=>'NAMESPACE'
,p_column_display_sequence=>6
,p_column_heading=>'Namespace'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67777370935436006)
,p_query_column_id=>7
,p_column_alias=>'CONTROL'
,p_column_display_sequence=>7
,p_column_heading=>'Control'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67777451115436007)
,p_query_column_id=>8
,p_column_alias=>'SCHEMA'
,p_column_display_sequence=>8
,p_column_heading=>'Schema'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67777543423436008)
,p_query_column_id=>9
,p_column_alias=>'PROCEDURE'
,p_column_display_sequence=>9
,p_column_heading=>'Procedure'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67777668670436009)
,p_query_column_id=>10
,p_column_alias=>'STARTUP'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67777725960436010)
,p_query_column_id=>11
,p_column_alias=>'PARENT_ID'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(67777822235436011)
,p_query_column_id=>12
,p_column_alias=>'OTHER_SCHEMAS'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67771104938419272)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'DDL Locks'
,p_page_mode=>'NORMAL'
,p_step_title=>'DDL Locks'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715231335'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67779452560436027)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select distinct',
'l.owner, l.name, l.type lock_type, l.mode_held , ',
'S.sid , S.serial# , S.username, S.osuser, S.module, s.action, ',
's.sql_id  , s.type session_type, s.machine',
'  from dba_ddl_locks l',
'     , v$session s',
'where l.session_id = s.sId',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(67779524955436028)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67779524955436028
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67779605948436029)
,p_db_column_name=>'OWNER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67779727444436030)
,p_db_column_name=>'NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67779836527436031)
,p_db_column_name=>'LOCK_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Lock type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67779930949436032)
,p_db_column_name=>'MODE_HELD'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Mode held'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67780079199436033)
,p_db_column_name=>'SID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67780111469436034)
,p_db_column_name=>'SERIAL#'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Serial#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67780234626436035)
,p_db_column_name=>'USERNAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Username'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67780328856436036)
,p_db_column_name=>'OSUSER'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Osuser'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67780479238436037)
,p_db_column_name=>'MODULE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Module'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67780592001436038)
,p_db_column_name=>'ACTION'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Action'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67780656848436039)
,p_db_column_name=>'SQL_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Sql id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67780788907436040)
,p_db_column_name=>'SESSION_TYPE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Session type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67780861954436041)
,p_db_column_name=>'MACHINE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Machine'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(67803963671558782)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'678040'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'SID:SERIAL#:OWNER:NAME:LOCK_TYPE:MODE_HELD:USERNAME:OSUSER:MODULE:ACTION:SQL_ID:SESSION_TYPE:MACHINE:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67799068332556768)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'DML Lock'
,p_page_mode=>'NORMAL'
,p_step_title=>'DML Lock'
,p_step_sub_title=>'DML Lock'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715231636'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67806355190679773)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67806959197679781)
,p_plug_name=>'DML Lock'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select distinct',
'l.SESSION_ID    ',
', l.OWNER  ',
', l.NAME   ',
', l.MODE_HELD  ',
', l.MODE_REQUESTED  ',
', l.LAST_CONVERT   ',
', l.BLOCKING_OTHERS   ',
', S.sid , S.serial# serial, S.username, S.osuser, S.module, s.action, ',
's.sql_id , s.sql_child_number , s.type session_type, s.machine',
'  from dba_DML_locks l',
'     , v$session s',
'where l.session_id = s.sId'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(67807056037679781)
,p_name=>'DML Lock'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67807056037679781
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67807475849679809)
,p_db_column_name=>'SESSION_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Session Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67807878378679812)
,p_db_column_name=>'OWNER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67808237426679812)
,p_db_column_name=>'NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67808603583679812)
,p_db_column_name=>'MODE_HELD'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Mode Held'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67809094543679814)
,p_db_column_name=>'MODE_REQUESTED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Mode Requested'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67809419060679815)
,p_db_column_name=>'LAST_CONVERT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Last Convert'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67809804976679815)
,p_db_column_name=>'BLOCKING_OTHERS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Blocking Others'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67810221671679815)
,p_db_column_name=>'SID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Sid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67810617899679815)
,p_db_column_name=>'SERIAL'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Serial'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67811062718679817)
,p_db_column_name=>'USERNAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67811465445679817)
,p_db_column_name=>'OSUSER'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Osuser'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67811861645679817)
,p_db_column_name=>'MODULE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Module'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67812202526679817)
,p_db_column_name=>'ACTION'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Action'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67812668096679820)
,p_db_column_name=>'SQL_ID'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Sql Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67813020330679821)
,p_db_column_name=>'SQL_CHILD_NUMBER'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Sql Child Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67813463400679821)
,p_db_column_name=>'SESSION_TYPE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Session Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67813898719679823)
,p_db_column_name=>'MACHINE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Machine'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(67814290916680083)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'678143'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'SESSION_ID:OWNER:NAME:MODE_HELD:MODE_REQUESTED:LAST_CONVERT:BLOCKING_OTHERS:SID:SERIAL:USERNAME:OSUSER:MODULE:ACTION:SQL_ID:SQL_CHILD_NUMBER:SESSION_TYPE:MACHINE'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Library Cache Lock'
,p_page_mode=>'NORMAL'
,p_step_title=>'Library Cache Lock'
,p_step_sub_title=>'Library Cache Lock'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715231947'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67816048305698883)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67816642212698885)
,p_plug_name=>'Library Cache Lock'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select username, sid || '','' || serial#  sid_serial ,osuser,machine, terminal',
'      , program,event, blocking_session,wait_class ',
'from v$session ',
'where username is not null ',
'and wait_class <> ''Idle'' ',
'and state =''WAITING'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(67816775191698885)
,p_name=>'Library Cache Lock'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67816775191698885
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67817124301698885)
,p_db_column_name=>'USERNAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67817518593698885)
,p_db_column_name=>'SID_SERIAL'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Sid Serial'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67817908835698886)
,p_db_column_name=>'OSUSER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Osuser'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67818319231698888)
,p_db_column_name=>'MACHINE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Machine'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67818773739698888)
,p_db_column_name=>'TERMINAL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Terminal'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67819133535698888)
,p_db_column_name=>'PROGRAM'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Program'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67819546453698888)
,p_db_column_name=>'EVENT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Event'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67819931297698888)
,p_db_column_name=>'BLOCKING_SESSION'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Blocking Session'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67820357559698888)
,p_db_column_name=>'WAIT_CLASS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Wait Class'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(67820741592699211)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'678208'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'USERNAME:SID_SERIAL:OSUSER:MACHINE:TERMINAL:PROGRAM:EVENT:BLOCKING_SESSION:WAIT_CLASS'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Library Cache Pin'
,p_page_mode=>'NORMAL'
,p_step_title=>'Library Cache Pin'
,p_step_sub_title=>'Library Cache Pin'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715232113'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67822735629707605)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67823377405707608)
,p_plug_name=>'Library Cache Pin'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT *',
'  FROM sys.v_$session_wait  ',
' WHERE event = ''library cache pin''',
'   AND state = ''WAITING'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(67823417281707610)
,p_name=>'Library Cache Pin'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67823417281707610
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67823809146707611)
,p_db_column_name=>'SID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Sid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67824232986707611)
,p_db_column_name=>'SEQ#'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Seq#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67824685287707611)
,p_db_column_name=>'EVENT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Event'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67825050673707613)
,p_db_column_name=>'P1TEXT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'P1text'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67825499654707618)
,p_db_column_name=>'P1'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'P1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67825876701707618)
,p_db_column_name=>'P1RAW'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'P1raw'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67826286542707619)
,p_db_column_name=>'P2TEXT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'P2text'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67826659024707619)
,p_db_column_name=>'P2'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'P2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67827037089707621)
,p_db_column_name=>'P2RAW'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'P2raw'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67827419045707621)
,p_db_column_name=>'P3TEXT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'P3text'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67827861109707621)
,p_db_column_name=>'P3'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'P3'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67828221708707622)
,p_db_column_name=>'P3RAW'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'P3raw'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67828672914707622)
,p_db_column_name=>'WAIT_CLASS_ID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Wait Class Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67829094198707622)
,p_db_column_name=>'WAIT_CLASS#'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Wait Class#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67829429612707624)
,p_db_column_name=>'WAIT_CLASS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Wait Class'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67829802144707624)
,p_db_column_name=>'WAIT_TIME'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Wait Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67830234610707624)
,p_db_column_name=>'SECONDS_IN_WAIT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Seconds In Wait'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67830673049707624)
,p_db_column_name=>'STATE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'State'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67831075162707625)
,p_db_column_name=>'WAIT_TIME_MICRO'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Wait Time Micro'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67831492804707625)
,p_db_column_name=>'TIME_REMAINING_MICRO'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Time Remaining Micro'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67831891427707625)
,p_db_column_name=>'TIME_SINCE_LAST_WAIT_MICRO'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Time Since Last Wait Micro'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(67832254544707827)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'678323'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'SID:SEQ#:EVENT:P1TEXT:P1:P1RAW:P2TEXT:P2:P2RAW:P3TEXT:P3:P3RAW:WAIT_CLASS_ID:WAIT_CLASS#:WAIT_CLASS:WAIT_TIME:SECONDS_IN_WAIT:STATE:WAIT_TIME_MICRO:TIME_REMAINING_MICRO:TIME_SINCE_LAST_WAIT_MICRO'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Database Sessions'
,p_page_mode=>'NORMAL'
,p_step_title=>'Database Sessions'
,p_step_sub_title=>'Database Sessions'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715234702'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67834272306720998)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67834889191720999)
,p_plug_name=>'Database Sessions'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select * from v$session',
'where sid = nvl ( :P14_SID, SID) ',
'  and serial#  = nvl ( :P14_SERIAL, serial#)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(67834925718720999)
,p_name=>'Database Sessions'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67834925718720999
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67835739638721003)
,p_db_column_name=>'SID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Sid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67836151160721003)
,p_db_column_name=>'SERIAL#'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Serial#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67836522915721003)
,p_db_column_name=>'AUDSID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Audsid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67837320456721004)
,p_db_column_name=>'USER#'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'User#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67837741494721004)
,p_db_column_name=>'USERNAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67838153879721004)
,p_db_column_name=>'COMMAND'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Command'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67838527282721004)
,p_db_column_name=>'OWNERID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Ownerid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67838919398721006)
,p_db_column_name=>'TADDR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Taddr'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67839397232721006)
,p_db_column_name=>'LOCKWAIT'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Lockwait'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67839794002721006)
,p_db_column_name=>'STATUS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67840152617721006)
,p_db_column_name=>'SERVER'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Server'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67840551664721007)
,p_db_column_name=>'SCHEMA#'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Schema#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67840950909721007)
,p_db_column_name=>'SCHEMANAME'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Schemaname'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67841394194721009)
,p_db_column_name=>'OSUSER'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Osuser'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67841799057721009)
,p_db_column_name=>'PROCESS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Process'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67842130952721009)
,p_db_column_name=>'MACHINE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Machine'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67842592768721009)
,p_db_column_name=>'PORT'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Port'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67842949959721009)
,p_db_column_name=>'TERMINAL'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Terminal'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67843364842721009)
,p_db_column_name=>'PROGRAM'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Program'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67843732905721010)
,p_db_column_name=>'TYPE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67844541802721012)
,p_db_column_name=>'SQL_HASH_VALUE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Sql Hash Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67844984103721012)
,p_db_column_name=>'SQL_ID'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Sql Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67845389114721012)
,p_db_column_name=>'SQL_CHILD_NUMBER'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Sql Child Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67845776961721012)
,p_db_column_name=>'SQL_EXEC_START'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Sql Exec Start'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67846155107721013)
,p_db_column_name=>'SQL_EXEC_ID'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Sql Exec Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67846929006721013)
,p_db_column_name=>'PREV_HASH_VALUE'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Prev Hash Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67847332724721013)
,p_db_column_name=>'PREV_SQL_ID'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Prev Sql Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67847752290721015)
,p_db_column_name=>'PREV_CHILD_NUMBER'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Prev Child Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67848177840721015)
,p_db_column_name=>'PREV_EXEC_START'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Prev Exec Start'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67848542024721015)
,p_db_column_name=>'PREV_EXEC_ID'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Prev Exec Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67848956240721015)
,p_db_column_name=>'PLSQL_ENTRY_OBJECT_ID'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Plsql Entry Object Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67849389973721015)
,p_db_column_name=>'PLSQL_ENTRY_SUBPROGRAM_ID'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Plsql Entry Subprogram Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67849700097721015)
,p_db_column_name=>'PLSQL_OBJECT_ID'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Plsql Object Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67850158465721015)
,p_db_column_name=>'PLSQL_SUBPROGRAM_ID'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Plsql Subprogram Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67850556473721017)
,p_db_column_name=>'MODULE'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Module'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67850964917721017)
,p_db_column_name=>'MODULE_HASH'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Module Hash'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67851344797721017)
,p_db_column_name=>'ACTION'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Action'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67851798572721017)
,p_db_column_name=>'ACTION_HASH'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Action Hash'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67852134160721017)
,p_db_column_name=>'CLIENT_INFO'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Client Info'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67852590623721020)
,p_db_column_name=>'FIXED_TABLE_SEQUENCE'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Fixed Table Sequence'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67852961151721020)
,p_db_column_name=>'ROW_WAIT_OBJ#'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Row Wait Obj#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67853308349721020)
,p_db_column_name=>'ROW_WAIT_FILE#'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Row Wait File#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67853700776721023)
,p_db_column_name=>'ROW_WAIT_BLOCK#'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Row Wait Block#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67854111137721023)
,p_db_column_name=>'ROW_WAIT_ROW#'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Row Wait Row#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67854548482721023)
,p_db_column_name=>'TOP_LEVEL_CALL#'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Top Level Call#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67854926045721026)
,p_db_column_name=>'LOGON_TIME'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Logon Time'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67855344553721026)
,p_db_column_name=>'LAST_CALL_ET'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Last Call Et'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67855743787721026)
,p_db_column_name=>'PDML_ENABLED'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Pdml Enabled'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67856159619721026)
,p_db_column_name=>'FAILOVER_TYPE'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Failover Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67856546612721027)
,p_db_column_name=>'FAILOVER_METHOD'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Failover Method'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67856956890721027)
,p_db_column_name=>'FAILED_OVER'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Failed Over'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67857336307721027)
,p_db_column_name=>'RESOURCE_CONSUMER_GROUP'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Resource Consumer Group'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67857739740721029)
,p_db_column_name=>'PDML_STATUS'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Pdml Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67858182774721029)
,p_db_column_name=>'PDDL_STATUS'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Pddl Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67858501926721031)
,p_db_column_name=>'PQ_STATUS'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Pq Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67858918873721032)
,p_db_column_name=>'CURRENT_QUEUE_DURATION'
,p_display_order=>60
,p_column_identifier=>'BH'
,p_column_label=>'Current Queue Duration'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67859365024721034)
,p_db_column_name=>'CLIENT_IDENTIFIER'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Client Identifier'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67859736989721034)
,p_db_column_name=>'BLOCKING_SESSION_STATUS'
,p_display_order=>62
,p_column_identifier=>'BJ'
,p_column_label=>'Blocking Session Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67860120521721034)
,p_db_column_name=>'BLOCKING_INSTANCE'
,p_display_order=>63
,p_column_identifier=>'BK'
,p_column_label=>'Blocking Instance'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67860565216721034)
,p_db_column_name=>'BLOCKING_SESSION'
,p_display_order=>64
,p_column_identifier=>'BL'
,p_column_label=>'Blocking Session'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67860910336721034)
,p_db_column_name=>'FINAL_BLOCKING_SESSION_STATUS'
,p_display_order=>65
,p_column_identifier=>'BM'
,p_column_label=>'Final Blocking Session Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67861342858721034)
,p_db_column_name=>'FINAL_BLOCKING_INSTANCE'
,p_display_order=>66
,p_column_identifier=>'BN'
,p_column_label=>'Final Blocking Instance'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67861727548721035)
,p_db_column_name=>'FINAL_BLOCKING_SESSION'
,p_display_order=>67
,p_column_identifier=>'BO'
,p_column_label=>'Final Blocking Session'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67862151774721035)
,p_db_column_name=>'SEQ#'
,p_display_order=>68
,p_column_identifier=>'BP'
,p_column_label=>'Seq#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67862599796721035)
,p_db_column_name=>'EVENT#'
,p_display_order=>69
,p_column_identifier=>'BQ'
,p_column_label=>'Event#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67862995073721035)
,p_db_column_name=>'EVENT'
,p_display_order=>70
,p_column_identifier=>'BR'
,p_column_label=>'Event'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67863318150721037)
,p_db_column_name=>'P1TEXT'
,p_display_order=>71
,p_column_identifier=>'BS'
,p_column_label=>'P1text'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67863767585721037)
,p_db_column_name=>'P1'
,p_display_order=>72
,p_column_identifier=>'BT'
,p_column_label=>'P1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67864520727721037)
,p_db_column_name=>'P2TEXT'
,p_display_order=>74
,p_column_identifier=>'BV'
,p_column_label=>'P2text'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67864975505721037)
,p_db_column_name=>'P2'
,p_display_order=>75
,p_column_identifier=>'BW'
,p_column_label=>'P2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67865799011721038)
,p_db_column_name=>'P3TEXT'
,p_display_order=>77
,p_column_identifier=>'BY'
,p_column_label=>'P3text'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67866136926721038)
,p_db_column_name=>'P3'
,p_display_order=>78
,p_column_identifier=>'BZ'
,p_column_label=>'P3'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67866950019721038)
,p_db_column_name=>'WAIT_CLASS_ID'
,p_display_order=>80
,p_column_identifier=>'CB'
,p_column_label=>'Wait Class Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67867317512721040)
,p_db_column_name=>'WAIT_CLASS#'
,p_display_order=>81
,p_column_identifier=>'CC'
,p_column_label=>'Wait Class#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67867765685721040)
,p_db_column_name=>'WAIT_CLASS'
,p_display_order=>82
,p_column_identifier=>'CD'
,p_column_label=>'Wait Class'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67868135982721040)
,p_db_column_name=>'WAIT_TIME'
,p_display_order=>83
,p_column_identifier=>'CE'
,p_column_label=>'Wait Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67868570256721040)
,p_db_column_name=>'SECONDS_IN_WAIT'
,p_display_order=>84
,p_column_identifier=>'CF'
,p_column_label=>'Seconds In Wait'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67868928523721040)
,p_db_column_name=>'STATE'
,p_display_order=>85
,p_column_identifier=>'CG'
,p_column_label=>'State'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67869324237721040)
,p_db_column_name=>'WAIT_TIME_MICRO'
,p_display_order=>86
,p_column_identifier=>'CH'
,p_column_label=>'Wait Time Micro'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67869797785721040)
,p_db_column_name=>'TIME_REMAINING_MICRO'
,p_display_order=>87
,p_column_identifier=>'CI'
,p_column_label=>'Time Remaining Micro'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67870180932721042)
,p_db_column_name=>'TIME_SINCE_LAST_WAIT_MICRO'
,p_display_order=>88
,p_column_identifier=>'CJ'
,p_column_label=>'Time Since Last Wait Micro'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67870567056721042)
,p_db_column_name=>'SERVICE_NAME'
,p_display_order=>89
,p_column_identifier=>'CK'
,p_column_label=>'Service Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67870947698721042)
,p_db_column_name=>'SQL_TRACE'
,p_display_order=>90
,p_column_identifier=>'CL'
,p_column_label=>'Sql Trace'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67871318936721042)
,p_db_column_name=>'SQL_TRACE_WAITS'
,p_display_order=>91
,p_column_identifier=>'CM'
,p_column_label=>'Sql Trace Waits'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67871741794721042)
,p_db_column_name=>'SQL_TRACE_BINDS'
,p_display_order=>92
,p_column_identifier=>'CN'
,p_column_label=>'Sql Trace Binds'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67872100028721042)
,p_db_column_name=>'SQL_TRACE_PLAN_STATS'
,p_display_order=>93
,p_column_identifier=>'CO'
,p_column_label=>'Sql Trace Plan Stats'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67872568833721042)
,p_db_column_name=>'SESSION_EDITION_ID'
,p_display_order=>94
,p_column_identifier=>'CP'
,p_column_label=>'Session Edition Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67873216905721043)
,p_db_column_name=>'CREATOR_SERIAL#'
,p_display_order=>96
,p_column_identifier=>'CR'
,p_column_label=>'Creator Serial#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67873619004721043)
,p_db_column_name=>'ECID'
,p_display_order=>97
,p_column_identifier=>'CS'
,p_column_label=>'Ecid'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67780934559436042)
,p_db_column_name=>'SADDR'
,p_display_order=>107
,p_column_identifier=>'CT'
,p_column_label=>'Saddr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67781003838436043)
,p_db_column_name=>'PADDR'
,p_display_order=>117
,p_column_identifier=>'CU'
,p_column_label=>'Paddr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67781143538436044)
,p_db_column_name=>'SQL_ADDRESS'
,p_display_order=>127
,p_column_identifier=>'CV'
,p_column_label=>'Sql address'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67781225536436045)
,p_db_column_name=>'PREV_SQL_ADDR'
,p_display_order=>137
,p_column_identifier=>'CW'
,p_column_label=>'Prev sql addr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67781343046436046)
,p_db_column_name=>'P1RAW'
,p_display_order=>147
,p_column_identifier=>'CX'
,p_column_label=>'P1raw'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67781425586436047)
,p_db_column_name=>'P2RAW'
,p_display_order=>157
,p_column_identifier=>'CY'
,p_column_label=>'P2raw'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67781594865436048)
,p_db_column_name=>'P3RAW'
,p_display_order=>167
,p_column_identifier=>'CZ'
,p_column_label=>'P3raw'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67781647128436049)
,p_db_column_name=>'CREATOR_ADDR'
,p_display_order=>177
,p_column_identifier=>'DA'
,p_column_label=>'Creator addr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(67884616687731813)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'678847'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'SID:SERIAL#:AUDSID:USER#:USERNAME:COMMAND:OWNERID:TADDR:LOCKWAIT:STATUS:SERVER:SCHEMA#:SCHEMANAME:OSUSER:PROCESS:MACHINE:PORT:TERMINAL:PROGRAM:TYPE:SQL_HASH_VALUE:SQL_ID:SQL_CHILD_NUMBER:SQL_EXEC_START:SQL_EXEC_ID:PREV_HASH_VALUE:PREV_SQL_ID:PREV_CHI'
||'LD_NUMBER:PREV_EXEC_START:PREV_EXEC_ID:PLSQL_ENTRY_OBJECT_ID:PLSQL_ENTRY_SUBPROGRAM_ID:PLSQL_OBJECT_ID:PLSQL_SUBPROGRAM_ID:MODULE:MODULE_HASH:ACTION:ACTION_HASH:CLIENT_INFO:FIXED_TABLE_SEQUENCE:ROW_WAIT_OBJ#:ROW_WAIT_FILE#:ROW_WAIT_BLOCK#:ROW_WAIT_RO'
||'W#:TOP_LEVEL_CALL#:LOGON_TIME:LAST_CALL_ET:PDML_ENABLED:FAILOVER_TYPE:FAILOVER_METHOD:FAILED_OVER:RESOURCE_CONSUMER_GROUP:PDML_STATUS:PDDL_STATUS:PQ_STATUS:CURRENT_QUEUE_DURATION:CLIENT_IDENTIFIER:BLOCKING_SESSION_STATUS:BLOCKING_INSTANCE:BLOCKING_SE'
||'SSION:FINAL_BLOCKING_SESSION_STATUS:FINAL_BLOCKING_INSTANCE:FINAL_BLOCKING_SESSION:SEQ#:EVENT#:EVENT:P1TEXT:P1:P2TEXT:P2:P3TEXT:P3:WAIT_CLASS_ID:WAIT_CLASS#:WAIT_CLASS:WAIT_TIME:SECONDS_IN_WAIT:STATE:WAIT_TIME_MICRO:TIME_REMAINING_MICRO:TIME_SINCE_LA'
||'ST_WAIT_MICRO:SERVICE_NAME:SQL_TRACE:SQL_TRACE_WAITS:SQL_TRACE_BINDS:SQL_TRACE_PLAN_STATS:SESSION_EDITION_ID:CREATOR_SERIAL#:ECID:SADDR:PADDR:SQL_ADDRESS:PREV_SQL_ADDR:P1RAW:P2RAW:P3RAW:CREATOR_ADDR'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(67975247423862667)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Active Sessions'
,p_report_seq=>10
,p_report_alias=>'679753'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'SID:SERIAL#:AUDSID:USER#:USERNAME:COMMAND:OWNERID:TADDR:LOCKWAIT:STATUS:SERVER:SCHEMA#:SCHEMANAME:OSUSER:PROCESS:MACHINE:PORT:TERMINAL:PROGRAM:TYPE:SQL_HASH_VALUE:SQL_ID:SQL_CHILD_NUMBER:SQL_EXEC_START:SQL_EXEC_ID:PREV_HASH_VALUE:PREV_SQL_ID:PREV_CHI'
||'LD_NUMBER:PREV_EXEC_START:PREV_EXEC_ID:PLSQL_ENTRY_OBJECT_ID:PLSQL_ENTRY_SUBPROGRAM_ID:PLSQL_OBJECT_ID:PLSQL_SUBPROGRAM_ID:MODULE:MODULE_HASH:ACTION:ACTION_HASH:CLIENT_INFO:FIXED_TABLE_SEQUENCE:ROW_WAIT_OBJ#:ROW_WAIT_FILE#:ROW_WAIT_BLOCK#:ROW_WAIT_RO'
||'W#:TOP_LEVEL_CALL#:LOGON_TIME:LAST_CALL_ET:PDML_ENABLED:FAILOVER_TYPE:FAILOVER_METHOD:FAILED_OVER:RESOURCE_CONSUMER_GROUP:PDML_STATUS:PDDL_STATUS:PQ_STATUS:CURRENT_QUEUE_DURATION:CLIENT_IDENTIFIER:BLOCKING_SESSION_STATUS:BLOCKING_INSTANCE:BLOCKING_SE'
||'SSION:FINAL_BLOCKING_SESSION_STATUS:FINAL_BLOCKING_INSTANCE:FINAL_BLOCKING_SESSION:SEQ#:EVENT#:EVENT:P1TEXT:P1:P2TEXT:P2:P3TEXT:P3:WAIT_CLASS_ID:WAIT_CLASS#:WAIT_CLASS:WAIT_TIME:SECONDS_IN_WAIT:STATE:WAIT_TIME_MICRO:TIME_REMAINING_MICRO:TIME_SINCE_LA'
||'ST_WAIT_MICRO:SERVICE_NAME:SQL_TRACE:SQL_TRACE_WAITS:SQL_TRACE_BINDS:SQL_TRACE_PLAN_STATS:SESSION_EDITION_ID:CREATOR_SERIAL#:ECID:SADDR:PADDR:SQL_ADDRESS:PREV_SQL_ADDR:P1RAW:P2RAW:P3RAW:CREATOR_ADDR'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(67975693516862669)
,p_report_id=>wwv_flow_api.id(67975247423862667)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'STATUS'
,p_operator=>'='
,p_expr=>'ACTIVE'
,p_condition_sql=>'"STATUS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''ACTIVE''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67874183062730002)
,p_plug_name=>'Edit'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(67587118660476190)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P14_SID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67874343541730004)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(67874183062730002)
,p_button_name=>'P14_RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(67607950040476224)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67874294020730003)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(67874183062730002)
,p_button_name=>'P14_OK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(67607950040476224)
,p_button_image_alt=>'OK'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67781721408436050)
,p_name=>'P14_SID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(67874183062730002)
,p_prompt=>'Sid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(67607408339476223)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67874081283730001)
,p_name=>'P14_SERIAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(67874183062730002)
,p_prompt=>'Serial'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(67607408339476223)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
null;
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'SQL Statements'
,p_page_mode=>'NORMAL'
,p_step_title=>'SQL Statements'
,p_step_sub_title=>'SQL Statements'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715233645'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67874490949730005)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(67587118660476190)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P15_SQL_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67888904893777447)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67889550430777447)
,p_plug_name=>'SQL Statements'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select * from v$sql',
'where sql_id       = nvl ( :P15_SQL_ID           , SQL_ID )',
'  and child_number = nvl ( :P15_SQL_CHILD_NUMBER , CHILD_NUMBER )'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(67889620049777447)
,p_name=>'SQL Statements'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67889620049777447
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67890008259777448)
,p_db_column_name=>'SQL_TEXT'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Sql Text'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67890472752777448)
,p_db_column_name=>'SQL_FULLTEXT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Sql Fulltext'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67890834902777448)
,p_db_column_name=>'SQL_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Sql Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67891296535777450)
,p_db_column_name=>'SHARABLE_MEM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Sharable Mem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67891643159777450)
,p_db_column_name=>'PERSISTENT_MEM'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Persistent Mem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67892074780777451)
,p_db_column_name=>'RUNTIME_MEM'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Runtime Mem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67892474726777451)
,p_db_column_name=>'SORTS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Sorts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67892843128777451)
,p_db_column_name=>'LOADED_VERSIONS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Loaded Versions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67893215291777451)
,p_db_column_name=>'OPEN_VERSIONS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Open Versions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67893605326777453)
,p_db_column_name=>'USERS_OPENING'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Users Opening'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67894041548777453)
,p_db_column_name=>'FETCHES'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Fetches'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67894492192777455)
,p_db_column_name=>'EXECUTIONS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Executions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67894840351777455)
,p_db_column_name=>'PX_SERVERS_EXECUTIONS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Px Servers Executions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67895249229777455)
,p_db_column_name=>'END_OF_FETCH_COUNT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'End Of Fetch Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67895668186777455)
,p_db_column_name=>'USERS_EXECUTING'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Users Executing'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67896029861777455)
,p_db_column_name=>'LOADS'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Loads'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67896413944777455)
,p_db_column_name=>'FIRST_LOAD_TIME'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'First Load Time'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67896834487777455)
,p_db_column_name=>'INVALIDATIONS'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Invalidations'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67897259439777455)
,p_db_column_name=>'PARSE_CALLS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Parse Calls'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67897606090777456)
,p_db_column_name=>'DISK_READS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Disk Reads'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67898049312777456)
,p_db_column_name=>'DIRECT_WRITES'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Direct Writes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67898496676777456)
,p_db_column_name=>'BUFFER_GETS'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Buffer Gets'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67898856817777456)
,p_db_column_name=>'APPLICATION_WAIT_TIME'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Application Wait Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67899239296777456)
,p_db_column_name=>'CONCURRENCY_WAIT_TIME'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Concurrency Wait Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67899655024777456)
,p_db_column_name=>'CLUSTER_WAIT_TIME'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Cluster Wait Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67900059601777456)
,p_db_column_name=>'USER_IO_WAIT_TIME'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'User Io Wait Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67900463853777461)
,p_db_column_name=>'PLSQL_EXEC_TIME'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Plsql Exec Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67900871485777464)
,p_db_column_name=>'JAVA_EXEC_TIME'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Java Exec Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67901240508777464)
,p_db_column_name=>'ROWS_PROCESSED'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Rows Processed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67901673688777464)
,p_db_column_name=>'COMMAND_TYPE'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Command Type'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67902015940777464)
,p_db_column_name=>'OPTIMIZER_MODE'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Optimizer Mode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67902460151777466)
,p_db_column_name=>'OPTIMIZER_COST'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Optimizer Cost'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67902800448777466)
,p_db_column_name=>'OPTIMIZER_ENV'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Optimizer Env'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67903289536777466)
,p_db_column_name=>'OPTIMIZER_ENV_HASH_VALUE'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Optimizer Env Hash Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67903678551777466)
,p_db_column_name=>'PARSING_USER_ID'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Parsing User Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67904047641777466)
,p_db_column_name=>'PARSING_SCHEMA_ID'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Parsing Schema Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67904484133777466)
,p_db_column_name=>'PARSING_SCHEMA_NAME'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Parsing Schema Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67904885680777467)
,p_db_column_name=>'KEPT_VERSIONS'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Kept Versions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67905238050777467)
,p_db_column_name=>'ADDRESS'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Address'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67905637168777469)
,p_db_column_name=>'TYPE_CHK_HEAP'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Type Chk Heap'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67906042028777469)
,p_db_column_name=>'HASH_VALUE'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Hash Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67906471117777470)
,p_db_column_name=>'OLD_HASH_VALUE'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Old Hash Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67906876763777472)
,p_db_column_name=>'PLAN_HASH_VALUE'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Plan Hash Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67907217744777472)
,p_db_column_name=>'CHILD_NUMBER'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Child Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67907680028777472)
,p_db_column_name=>'SERVICE'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Service'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67908038769777472)
,p_db_column_name=>'SERVICE_HASH'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Service Hash'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67908491876777473)
,p_db_column_name=>'MODULE'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Module'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67908871805777473)
,p_db_column_name=>'MODULE_HASH'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Module Hash'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67909254025777473)
,p_db_column_name=>'ACTION'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Action'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67909624096777473)
,p_db_column_name=>'ACTION_HASH'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Action Hash'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67910015704777473)
,p_db_column_name=>'SERIALIZABLE_ABORTS'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Serializable Aborts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67910449125777473)
,p_db_column_name=>'OUTLINE_CATEGORY'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Outline Category'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67910856126777475)
,p_db_column_name=>'CPU_TIME'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Cpu Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67911255408777483)
,p_db_column_name=>'ELAPSED_TIME'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Elapsed Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67911632590777483)
,p_db_column_name=>'OUTLINE_SID'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Outline Sid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67912003192777492)
,p_db_column_name=>'CHILD_ADDRESS'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Child Address'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67912402048777494)
,p_db_column_name=>'SQLTYPE'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Sqltype'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67912860388777494)
,p_db_column_name=>'REMOTE'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Remote'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67913296950777494)
,p_db_column_name=>'OBJECT_STATUS'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Object Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67913638597777494)
,p_db_column_name=>'LITERAL_HASH_VALUE'
,p_display_order=>60
,p_column_identifier=>'BH'
,p_column_label=>'Literal Hash Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67914080408777495)
,p_db_column_name=>'LAST_LOAD_TIME'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Last Load Time'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67914418974777495)
,p_db_column_name=>'IS_OBSOLETE'
,p_display_order=>62
,p_column_identifier=>'BJ'
,p_column_label=>'Is Obsolete'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67914895296777498)
,p_db_column_name=>'IS_BIND_SENSITIVE'
,p_display_order=>63
,p_column_identifier=>'BK'
,p_column_label=>'Is Bind Sensitive'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67915286361777500)
,p_db_column_name=>'IS_BIND_AWARE'
,p_display_order=>64
,p_column_identifier=>'BL'
,p_column_label=>'Is Bind Aware'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67915681440777500)
,p_db_column_name=>'IS_SHAREABLE'
,p_display_order=>65
,p_column_identifier=>'BM'
,p_column_label=>'Is Shareable'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67916003226777500)
,p_db_column_name=>'CHILD_LATCH'
,p_display_order=>66
,p_column_identifier=>'BN'
,p_column_label=>'Child Latch'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67916482401777500)
,p_db_column_name=>'SQL_PROFILE'
,p_display_order=>67
,p_column_identifier=>'BO'
,p_column_label=>'Sql Profile'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67916891296777500)
,p_db_column_name=>'SQL_PATCH'
,p_display_order=>68
,p_column_identifier=>'BP'
,p_column_label=>'Sql Patch'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67917292882777500)
,p_db_column_name=>'SQL_PLAN_BASELINE'
,p_display_order=>69
,p_column_identifier=>'BQ'
,p_column_label=>'Sql Plan Baseline'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67917603541777501)
,p_db_column_name=>'PROGRAM_ID'
,p_display_order=>70
,p_column_identifier=>'BR'
,p_column_label=>'Program Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67918042150777503)
,p_db_column_name=>'PROGRAM_LINE#'
,p_display_order=>71
,p_column_identifier=>'BS'
,p_column_label=>'Program Line#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67918402739777503)
,p_db_column_name=>'EXACT_MATCHING_SIGNATURE'
,p_display_order=>72
,p_column_identifier=>'BT'
,p_column_label=>'Exact Matching Signature'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67918842246777503)
,p_db_column_name=>'FORCE_MATCHING_SIGNATURE'
,p_display_order=>73
,p_column_identifier=>'BU'
,p_column_label=>'Force Matching Signature'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67919262090777503)
,p_db_column_name=>'LAST_ACTIVE_TIME'
,p_display_order=>74
,p_column_identifier=>'BV'
,p_column_label=>'Last Active Time'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67919612378777503)
,p_db_column_name=>'BIND_DATA'
,p_display_order=>75
,p_column_identifier=>'BW'
,p_column_label=>'Bind Data'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67920063311777508)
,p_db_column_name=>'TYPECHECK_MEM'
,p_display_order=>76
,p_column_identifier=>'BX'
,p_column_label=>'Typecheck Mem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67920430338777508)
,p_db_column_name=>'IO_CELL_OFFLOAD_ELIGIBLE_BYTES'
,p_display_order=>77
,p_column_identifier=>'BY'
,p_column_label=>'Io Cell Offload Eligible Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67920898391777508)
,p_db_column_name=>'IO_INTERCONNECT_BYTES'
,p_display_order=>78
,p_column_identifier=>'BZ'
,p_column_label=>'Io Interconnect Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67921222869777508)
,p_db_column_name=>'PHYSICAL_READ_REQUESTS'
,p_display_order=>79
,p_column_identifier=>'CA'
,p_column_label=>'Physical Read Requests'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67921651661777508)
,p_db_column_name=>'PHYSICAL_READ_BYTES'
,p_display_order=>80
,p_column_identifier=>'CB'
,p_column_label=>'Physical Read Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67922054829777508)
,p_db_column_name=>'PHYSICAL_WRITE_REQUESTS'
,p_display_order=>81
,p_column_identifier=>'CC'
,p_column_label=>'Physical Write Requests'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67922473255777509)
,p_db_column_name=>'PHYSICAL_WRITE_BYTES'
,p_display_order=>82
,p_column_identifier=>'CD'
,p_column_label=>'Physical Write Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67922804107777509)
,p_db_column_name=>'OPTIMIZED_PHY_READ_REQUESTS'
,p_display_order=>83
,p_column_identifier=>'CE'
,p_column_label=>'Optimized Phy Read Requests'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67923263231777509)
,p_db_column_name=>'LOCKED_TOTAL'
,p_display_order=>84
,p_column_identifier=>'CF'
,p_column_label=>'Locked Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67923673374777509)
,p_db_column_name=>'PINNED_TOTAL'
,p_display_order=>85
,p_column_identifier=>'CG'
,p_column_label=>'Pinned Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67924082275777511)
,p_db_column_name=>'IO_CELL_UNCOMPRESSED_BYTES'
,p_display_order=>86
,p_column_identifier=>'CH'
,p_column_label=>'Io Cell Uncompressed Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67924425675777511)
,p_db_column_name=>'IO_CELL_OFFLOAD_RETURNED_BYTES'
,p_display_order=>87
,p_column_identifier=>'CI'
,p_column_label=>'Io Cell Offload Returned Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(67924862931777715)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'679249'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'SQL_TEXT:SQL_FULLTEXT:SQL_ID:SHARABLE_MEM:PERSISTENT_MEM:RUNTIME_MEM:SORTS:LOADED_VERSIONS:OPEN_VERSIONS:USERS_OPENING:FETCHES:EXECUTIONS:PX_SERVERS_EXECUTIONS:END_OF_FETCH_COUNT:USERS_EXECUTING:LOADS:FIRST_LOAD_TIME:INVALIDATIONS:PARSE_CALLS:DISK_RE'
||'ADS:DIRECT_WRITES:BUFFER_GETS:APPLICATION_WAIT_TIME:CONCURRENCY_WAIT_TIME:CLUSTER_WAIT_TIME:USER_IO_WAIT_TIME:PLSQL_EXEC_TIME:JAVA_EXEC_TIME:ROWS_PROCESSED:COMMAND_TYPE:OPTIMIZER_MODE:OPTIMIZER_COST:OPTIMIZER_ENV:OPTIMIZER_ENV_HASH_VALUE:PARSING_USER'
||'_ID:PARSING_SCHEMA_ID:PARSING_SCHEMA_NAME:KEPT_VERSIONS:ADDRESS:TYPE_CHK_HEAP:HASH_VALUE:OLD_HASH_VALUE:PLAN_HASH_VALUE:CHILD_NUMBER:SERVICE:SERVICE_HASH:MODULE:MODULE_HASH:ACTION:ACTION_HASH:SERIALIZABLE_ABORTS:OUTLINE_CATEGORY:CPU_TIME:ELAPSED_TIME'
||':OUTLINE_SID:CHILD_ADDRESS:SQLTYPE:REMOTE:OBJECT_STATUS:LITERAL_HASH_VALUE:LAST_LOAD_TIME:IS_OBSOLETE:IS_BIND_SENSITIVE:IS_BIND_AWARE:IS_SHAREABLE:CHILD_LATCH:SQL_PROFILE:SQL_PATCH:SQL_PLAN_BASELINE:PROGRAM_ID:PROGRAM_LINE#:EXACT_MATCHING_SIGNATURE:F'
||'ORCE_MATCHING_SIGNATURE:LAST_ACTIVE_TIME:BIND_DATA:TYPECHECK_MEM:IO_CELL_OFFLOAD_ELIGIBLE_BYTES:IO_INTERCONNECT_BYTES:PHYSICAL_READ_REQUESTS:PHYSICAL_READ_BYTES:PHYSICAL_WRITE_REQUESTS:PHYSICAL_WRITE_BYTES:OPTIMIZED_PHY_READ_REQUESTS:LOCKED_TOTAL:PIN'
||'NED_TOTAL:IO_CELL_UNCOMPRESSED_BYTES:IO_CELL_OFFLOAD_RETURNED_BYTES'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67874884034730009)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(67874490949730005)
,p_button_name=>'RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(67607950040476224)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67874740219730008)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(67874490949730005)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(67607950040476224)
,p_button_image_alt=>'OK'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67874514464730006)
,p_name=>'P15_SQL_CHILD_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(67874490949730005)
,p_prompt=>'Sql child number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(67607408339476223)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67874667396730007)
,p_name=>'P15_SQL_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(67874490949730005)
,p_prompt=>'SQL ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(67607408339476223)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Temp Usage'
,p_page_mode=>'NORMAL'
,p_step_title=>'Temp Usage'
,p_step_sub_title=>'Temp Usage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715233822'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67928653296810405)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67929207464810405)
,p_plug_name=>'Temp Usage'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT S.sid || '','' || S.serial# sid_serial, S.username, S.osuser, P.spid, S.module,',
'       P.program, SUM (T.blocks) * TBS.block_size / 1024 / 1024 mb_used, T.tablespace,',
'COUNT(*) statements',
'FROM v$sort_usage T, v$session S, dba_tablespaces TBS, v$process P',
'WHERE T.session_addr = S.saddr',
'AND S.paddr = P.addr',
'AND T.tablespace = TBS.tablespace_name',
'GROUP BY S.sid, S.serial#, S.username, S.osuser, P.spid, S.module,',
'P.program, TBS.block_size, T.tablespace'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(67929314609810405)
,p_name=>'Temp Usage'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67929314609810405
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67929748381810405)
,p_db_column_name=>'SID_SERIAL'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Sid Serial'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67930127711810405)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67930569063810407)
,p_db_column_name=>'OSUSER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Osuser'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67930901990810408)
,p_db_column_name=>'SPID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Spid'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67931341432810408)
,p_db_column_name=>'MODULE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Module'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67931747170810408)
,p_db_column_name=>'PROGRAM'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Program'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67932185009810408)
,p_db_column_name=>'MB_USED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Mb Used'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67932589358810408)
,p_db_column_name=>'TABLESPACE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Tablespace'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67932947483810408)
,p_db_column_name=>'STATEMENTS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Statements'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(67933309579810642)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'679334'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'SID_SERIAL:USERNAME:OSUSER:SPID:MODULE:PROGRAM:MB_USED:TABLESPACE:STATEMENTS'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Bind Variables'
,p_page_mode=>'NORMAL'
,p_step_title=>'Bind Variables'
,p_step_sub_title=>'Bind Variables'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715234134'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67934962014820606)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67935553585820608)
,p_plug_name=>'Bind Variables'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select *',
'from v$sql_bind_capture',
'--where sql_id=&SQL_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(67935613487820608)
,p_name=>'Bind Variables'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67935613487820608
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67936055451820608)
,p_db_column_name=>'ADDRESS'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Address'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67936492116820611)
,p_db_column_name=>'HASH_VALUE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Hash Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67936853167820611)
,p_db_column_name=>'SQL_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Sql Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67937296628820611)
,p_db_column_name=>'CHILD_ADDRESS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Child Address'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67937699369820611)
,p_db_column_name=>'CHILD_NUMBER'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Child Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67938024026820614)
,p_db_column_name=>'NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67938492447820614)
,p_db_column_name=>'POSITION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67938836663820614)
,p_db_column_name=>'DUP_POSITION'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Dup Position'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67939281997820614)
,p_db_column_name=>'DATATYPE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Datatype'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67939634710820614)
,p_db_column_name=>'DATATYPE_STRING'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Datatype String'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67940067545820614)
,p_db_column_name=>'CHARACTER_SID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Character Sid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67940493408820614)
,p_db_column_name=>'PRECISION'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Precision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67940851294820615)
,p_db_column_name=>'SCALE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Scale'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67941210975820615)
,p_db_column_name=>'MAX_LENGTH'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Max Length'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67941684931820615)
,p_db_column_name=>'WAS_CAPTURED'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Was Captured'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67942065140820615)
,p_db_column_name=>'LAST_CAPTURED'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Last Captured'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67942416181820615)
,p_db_column_name=>'VALUE_STRING'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Value String'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67942862958820615)
,p_db_column_name=>'VALUE_ANYDATA'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Value Anydata'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(67943279581820867)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'679433'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ADDRESS:SQL_ID:NAME:POSITION:DATATYPE_STRING:CHARACTER_SID:WAS_CAPTURED:LAST_CAPTURED:VALUE_STRING:VALUE_ANYDATA'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'SQL Statistics'
,p_page_mode=>'NORMAL'
,p_step_title=>'SQL Statistics'
,p_step_sub_title=>'SQL Statistics'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715234405'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67945045878836211)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67945606173836211)
,p_plug_name=>'SQL Statistics'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Select *',
'from v$sqlstats'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(67945727266836211)
,p_name=>'SQL Statistics'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67945727266836211
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67946107782836212)
,p_db_column_name=>'SQL_TEXT'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Sql Text'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67946501617836212)
,p_db_column_name=>'SQL_FULLTEXT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Sql Fulltext'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67946959959836212)
,p_db_column_name=>'SQL_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Sql Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67947374291836212)
,p_db_column_name=>'LAST_ACTIVE_TIME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Last Active Time'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67947748088836214)
,p_db_column_name=>'LAST_ACTIVE_CHILD_ADDRESS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Last Active Child Address'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67948187763836214)
,p_db_column_name=>'PLAN_HASH_VALUE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Plan Hash Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67948506815836214)
,p_db_column_name=>'PARSE_CALLS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Parse Calls'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67948961176836214)
,p_db_column_name=>'DISK_READS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Disk Reads'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67949340700836214)
,p_db_column_name=>'DIRECT_WRITES'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Direct Writes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67949750870836214)
,p_db_column_name=>'BUFFER_GETS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Buffer Gets'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67950123391836214)
,p_db_column_name=>'ROWS_PROCESSED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Rows Processed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67950582520836216)
,p_db_column_name=>'SERIALIZABLE_ABORTS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Serializable Aborts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67950928204836216)
,p_db_column_name=>'FETCHES'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Fetches'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67951352562836216)
,p_db_column_name=>'EXECUTIONS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Executions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67951745173836219)
,p_db_column_name=>'END_OF_FETCH_COUNT'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'End Of Fetch Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67952127540836220)
,p_db_column_name=>'LOADS'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Loads'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67952505811836220)
,p_db_column_name=>'VERSION_COUNT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Version Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67952918834836220)
,p_db_column_name=>'INVALIDATIONS'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Invalidations'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67953372144836222)
,p_db_column_name=>'PX_SERVERS_EXECUTIONS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Px Servers Executions'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67953723186836222)
,p_db_column_name=>'CPU_TIME'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Cpu Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67954110692836222)
,p_db_column_name=>'ELAPSED_TIME'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Elapsed Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67954536516836222)
,p_db_column_name=>'AVG_HARD_PARSE_TIME'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Avg Hard Parse Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67954900379836223)
,p_db_column_name=>'APPLICATION_WAIT_TIME'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Application Wait Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67955321980836223)
,p_db_column_name=>'CONCURRENCY_WAIT_TIME'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Concurrency Wait Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67955709938836223)
,p_db_column_name=>'CLUSTER_WAIT_TIME'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Cluster Wait Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67956176794836223)
,p_db_column_name=>'USER_IO_WAIT_TIME'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'User Io Wait Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67956515166836223)
,p_db_column_name=>'PLSQL_EXEC_TIME'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Plsql Exec Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67956975965836223)
,p_db_column_name=>'JAVA_EXEC_TIME'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Java Exec Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67957380851836225)
,p_db_column_name=>'SORTS'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Sorts'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67957782609836225)
,p_db_column_name=>'SHARABLE_MEM'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Sharable Mem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67958194593836225)
,p_db_column_name=>'TOTAL_SHARABLE_MEM'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Total Sharable Mem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67958500645836225)
,p_db_column_name=>'TYPECHECK_MEM'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Typecheck Mem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67958946499836225)
,p_db_column_name=>'IO_CELL_OFFLOAD_ELIGIBLE_BYTES'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Io Cell Offload Eligible Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67959365038836225)
,p_db_column_name=>'IO_INTERCONNECT_BYTES'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Io Interconnect Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67959775277836225)
,p_db_column_name=>'PHYSICAL_READ_REQUESTS'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Physical Read Requests'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67960109754836226)
,p_db_column_name=>'PHYSICAL_READ_BYTES'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Physical Read Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67960534056836226)
,p_db_column_name=>'PHYSICAL_WRITE_REQUESTS'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Physical Write Requests'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67960912800836226)
,p_db_column_name=>'PHYSICAL_WRITE_BYTES'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Physical Write Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67961397422836226)
,p_db_column_name=>'EXACT_MATCHING_SIGNATURE'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Exact Matching Signature'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67961720276836226)
,p_db_column_name=>'FORCE_MATCHING_SIGNATURE'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Force Matching Signature'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67962193205836226)
,p_db_column_name=>'IO_CELL_UNCOMPRESSED_BYTES'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Io Cell Uncompressed Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67962523396836226)
,p_db_column_name=>'IO_CELL_OFFLOAD_RETURNED_BYTES'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Io Cell Offload Returned Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(67962983250836474)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'679630'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'SQL_ID:LAST_ACTIVE_TIME:LAST_ACTIVE_CHILD_ADDRESS:PLAN_HASH_VALUE:PARSE_CALLS:DISK_READS:DIRECT_WRITES:BUFFER_GETS:ROWS_PROCESSED:SERIALIZABLE_ABORTS:FETCHES:EXECUTIONS:END_OF_FETCH_COUNT:LOADS:VERSION_COUNT:INVALIDATIONS:PX_SERVERS_EXECUTIONS:CPU_TI'
||'ME:ELAPSED_TIME:AVG_HARD_PARSE_TIME:APPLICATION_WAIT_TIME:CONCURRENCY_WAIT_TIME:CLUSTER_WAIT_TIME:USER_IO_WAIT_TIME:PLSQL_EXEC_TIME:JAVA_EXEC_TIME:SORTS:SHARABLE_MEM:TOTAL_SHARABLE_MEM:TYPECHECK_MEM:IO_CELL_OFFLOAD_ELIGIBLE_BYTES:IO_INTERCONNECT_BYTE'
||'S:PHYSICAL_READ_REQUESTS:PHYSICAL_READ_BYTES:PHYSICAL_WRITE_REQUESTS:PHYSICAL_WRITE_BYTES:EXACT_MATCHING_SIGNATURE:FORCE_MATCHING_SIGNATURE:IO_CELL_UNCOMPRESSED_BYTES:IO_CELL_OFFLOAD_RETURNED_BYTES'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Segment Statistics'
,p_page_mode=>'NORMAL'
,p_step_title=>'Segment Statistics'
,p_step_sub_title=>'Segment Statistics'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715234618'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67964885604851335)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67965418808851337)
,p_plug_name=>'Segment Statistics'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with pivot_stats as (',
'select owner,object_name,statistic_name,value',
'from v$segment_statistics',
')',
'select * from pivot_stats',
'PIVOT',
'(sum(value) for statistic_name in ',
'  (''gc buffer busy''',
',''db block changes''',
',''optimized physical reads''',
',''space used''',
',''segment scans''',
',''gc cr blocks received''',
',''gc current blocks received''',
',''row lock waits''',
',''buffer busy waits''',
',''physical reads''',
',''physical reads direct''',
',''physical writes''',
',''physical write requests''',
',''space allocated''',
',''logical reads''',
',''physical read requests''',
',''physical writes direct''',
',''ITL waits''',
'))'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(67965587268851337)
,p_name=>'Segment Statistics'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67965587268851337
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67965986479851338)
,p_db_column_name=>'OWNER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67966332397851338)
,p_db_column_name=>'OBJECT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Object Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67966791798851338)
,p_db_column_name=>'''gc buffer busy'''
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'''Gc Buffer Busy'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67967159261851338)
,p_db_column_name=>'''db block changes'''
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'''Db Block Changes'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67967507169851340)
,p_db_column_name=>'''optimized physical reads'''
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'''Optimized Physical Reads'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67967996809851340)
,p_db_column_name=>'''space used'''
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'''Space Used'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67968394487851340)
,p_db_column_name=>'''segment scans'''
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'''Segment Scans'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67968798805851340)
,p_db_column_name=>'''gc cr blocks received'''
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'''Gc Cr Blocks Received'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67969120539851340)
,p_db_column_name=>'''gc current blocks received'''
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'''Gc Current Blocks Received'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67969537814851340)
,p_db_column_name=>'''row lock waits'''
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'''Row Lock Waits'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67969923316851341)
,p_db_column_name=>'''buffer busy waits'''
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'''Buffer Busy Waits'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67970334566851343)
,p_db_column_name=>'''physical reads'''
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'''Physical Reads'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67970696465851343)
,p_db_column_name=>'''physical reads direct'''
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'''Physical Reads Direct'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67971030011851343)
,p_db_column_name=>'''physical writes'''
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'''Physical Writes'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67971403469851343)
,p_db_column_name=>'''physical write requests'''
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'''Physical Write Requests'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67971811007851343)
,p_db_column_name=>'''space allocated'''
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'''Space Allocated'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67972252396851343)
,p_db_column_name=>'''logical reads'''
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'''Logical Reads'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67972654250851343)
,p_db_column_name=>'''physical read requests'''
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'''Physical Read Requests'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67973091133851344)
,p_db_column_name=>'''physical writes direct'''
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'''Physical Writes Direct'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67973427254851344)
,p_db_column_name=>'''ITL waits'''
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'''Itl Waits'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(67973895155851569)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'679739'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'OWNER:OBJECT_NAME:''gc buffer busy'':''db block changes'':''optimized physical reads'':''space used'':''segment scans'':''gc cr blocks received'':''gc current blocks received'':''row lock waits'':''buffer busy waits'':''physical reads'':''physical reads direct'':''physical'
||' writes'':''physical write requests'':''space allocated'':''logical reads'':''physical read requests'':''physical writes direct'':''ITL waits'''
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(67974763258858271)
,p_report_id=>wwv_flow_api.id(67973895155851569)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'OWNER'
,p_operator=>'='
,p_expr=>'HR'
,p_condition_sql=>'"OWNER" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''HR''  '
,p_enabled=>'Y'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Index Segment Statistic'
,p_page_mode=>'NORMAL'
,p_step_title=>'Index Segment Statistic'
,p_step_sub_title=>'Index Segment Statistic'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715235133'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67977416962875046)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67978085700875047)
,p_plug_name=>'Index Segment Statistic'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select  ',
'i.*',
', ( select listagg ( column_name , '' '') WITHIN GROUP ( order by column_position)  from DBA_IND_COLUMNS ic where ic.index_owner = i.owner   and ic.index_name =  i.index_name ) index_columns',
', o.bytes ',
', o.blocks',
',s.*',
'    from DBA_INDEXES i',
'    , (with pivot_stats as (',
'select owner as seg_owner ,object_name as seg_object_name ,statistic_name,value',
'from v$segment_statistics',
')',
'select * from pivot_stats',
'PIVOT',
'(sum(value) for statistic_name in ',
'  (''gc buffer busy''',
',''db block changes''',
',''optimized physical reads''',
',''space used''',
',''segment scans''',
',''gc cr blocks received''',
',''gc current blocks received''',
',''row lock waits''',
',''buffer busy waits''',
',''physical reads''',
',''physical reads direct''',
',''physical writes''',
',''physical write requests''',
',''space allocated''',
',''logical reads''',
',''physical read requests''',
',''physical writes direct''',
',''ITL waits''',
'))) s',
', dba_segments o',
'    where 1=1 --i.owner = ''CLIC''',
'    and i.owner = s.seg_owner(+)',
'    and i.index_name = s.seg_object_name(+)',
'    and i.owner = o.owner',
'    and i.index_name = o.segment_name'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(67978115882875047)
,p_name=>'Index Segment Statistic'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>67978115882875047
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67978527038875050)
,p_db_column_name=>'OWNER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67978973332875050)
,p_db_column_name=>'INDEX_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Index Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67979379712875050)
,p_db_column_name=>'INDEX_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Index Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67979790256875050)
,p_db_column_name=>'TABLE_OWNER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Table Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67980168867875052)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67980582066875052)
,p_db_column_name=>'TABLE_TYPE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Table Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67980928920875052)
,p_db_column_name=>'UNIQUENESS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Uniqueness'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67981395205875052)
,p_db_column_name=>'COMPRESSION'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Compression'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67981751366875054)
,p_db_column_name=>'PREFIX_LENGTH'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Prefix Length'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67982101539875054)
,p_db_column_name=>'TABLESPACE_NAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Tablespace Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67982538559875055)
,p_db_column_name=>'INI_TRANS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Ini Trans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67982904176875057)
,p_db_column_name=>'MAX_TRANS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Max Trans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67983353665875057)
,p_db_column_name=>'INITIAL_EXTENT'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Initial Extent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67983763317875058)
,p_db_column_name=>'NEXT_EXTENT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Next Extent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67984148361875058)
,p_db_column_name=>'MIN_EXTENTS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Min Extents'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67984553108875058)
,p_db_column_name=>'MAX_EXTENTS'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Max Extents'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67984949550875058)
,p_db_column_name=>'PCT_INCREASE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Pct Increase'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67985303865875058)
,p_db_column_name=>'PCT_THRESHOLD'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Pct Threshold'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67985742841875058)
,p_db_column_name=>'INCLUDE_COLUMN'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Include Column'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67986172822875058)
,p_db_column_name=>'FREELISTS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Freelists'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67986536393875060)
,p_db_column_name=>'FREELIST_GROUPS'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Freelist Groups'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67986901840875060)
,p_db_column_name=>'PCT_FREE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Pct Free'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67987306422875061)
,p_db_column_name=>'LOGGING'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Logging'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67987713773875061)
,p_db_column_name=>'BLEVEL'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Blevel'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67988193781875061)
,p_db_column_name=>'LEAF_BLOCKS'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Leaf Blocks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67988558554875061)
,p_db_column_name=>'DISTINCT_KEYS'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Distinct Keys'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67988980328875061)
,p_db_column_name=>'AVG_LEAF_BLOCKS_PER_KEY'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Avg Leaf Blocks Per Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67989376932875061)
,p_db_column_name=>'AVG_DATA_BLOCKS_PER_KEY'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Avg Data Blocks Per Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67989744964875063)
,p_db_column_name=>'CLUSTERING_FACTOR'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Clustering Factor'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67990153636875063)
,p_db_column_name=>'STATUS'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67990594785875063)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67990954243875063)
,p_db_column_name=>'SAMPLE_SIZE'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Sample Size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67991337932875063)
,p_db_column_name=>'LAST_ANALYZED'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Last Analyzed'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67991794016875063)
,p_db_column_name=>'DEGREE'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Degree'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67992127003875063)
,p_db_column_name=>'INSTANCES'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Instances'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67992513963875064)
,p_db_column_name=>'PARTITIONED'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Partitioned'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67992980227875064)
,p_db_column_name=>'TEMPORARY'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Temporary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67993373977875064)
,p_db_column_name=>'GENERATED'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Generated'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67993720642875064)
,p_db_column_name=>'SECONDARY'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Secondary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67994179157875066)
,p_db_column_name=>'BUFFER_POOL'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Buffer Pool'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67994525545875072)
,p_db_column_name=>'FLASH_CACHE'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Flash Cache'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67994982315875074)
,p_db_column_name=>'CELL_FLASH_CACHE'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Cell Flash Cache'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67995302400875074)
,p_db_column_name=>'USER_STATS'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'User Stats'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67995754939875074)
,p_db_column_name=>'DURATION'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Duration'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67996141631875074)
,p_db_column_name=>'PCT_DIRECT_ACCESS'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Pct Direct Access'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67996513352875075)
,p_db_column_name=>'ITYP_OWNER'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Ityp Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67996922079875075)
,p_db_column_name=>'ITYP_NAME'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Ityp Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67997338685875075)
,p_db_column_name=>'PARAMETERS'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Parameters'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67997734981875075)
,p_db_column_name=>'GLOBAL_STATS'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Global Stats'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67998134993875075)
,p_db_column_name=>'DOMIDX_STATUS'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Domidx Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67998531451875075)
,p_db_column_name=>'DOMIDX_OPSTATUS'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Domidx Opstatus'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67998962676875075)
,p_db_column_name=>'FUNCIDX_STATUS'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Funcidx Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67999377438875077)
,p_db_column_name=>'JOIN_INDEX'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Join Index'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67999755925875077)
,p_db_column_name=>'IOT_REDUNDANT_PKEY_ELIM'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Iot Redundant Pkey Elim'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68000195248875077)
,p_db_column_name=>'DROPPED'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Dropped'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68000593623875077)
,p_db_column_name=>'VISIBILITY'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Visibility'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68000977690875077)
,p_db_column_name=>'DOMIDX_MANAGEMENT'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Domidx Management'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68001311727875077)
,p_db_column_name=>'SEGMENT_CREATED'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Segment Created'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68001799908875078)
,p_db_column_name=>'INDEX_COLUMNS'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Index Columns'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68002190758875078)
,p_db_column_name=>'BYTES'
,p_display_order=>60
,p_column_identifier=>'BH'
,p_column_label=>'Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68002516298875078)
,p_db_column_name=>'BLOCKS'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Blocks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68002954827875078)
,p_db_column_name=>'SEG_OWNER'
,p_display_order=>62
,p_column_identifier=>'BJ'
,p_column_label=>'Seg Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68003374810875078)
,p_db_column_name=>'SEG_OBJECT_NAME'
,p_display_order=>63
,p_column_identifier=>'BK'
,p_column_label=>'Seg Object Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68003728998875078)
,p_db_column_name=>'''gc buffer busy'''
,p_display_order=>64
,p_column_identifier=>'BL'
,p_column_label=>'''Gc Buffer Busy'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68004166025875078)
,p_db_column_name=>'''db block changes'''
,p_display_order=>65
,p_column_identifier=>'BM'
,p_column_label=>'''Db Block Changes'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68004503218875080)
,p_db_column_name=>'''optimized physical reads'''
,p_display_order=>66
,p_column_identifier=>'BN'
,p_column_label=>'''Optimized Physical Reads'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68004974491875080)
,p_db_column_name=>'''space used'''
,p_display_order=>67
,p_column_identifier=>'BO'
,p_column_label=>'''Space Used'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68005376396875080)
,p_db_column_name=>'''segment scans'''
,p_display_order=>68
,p_column_identifier=>'BP'
,p_column_label=>'''Segment Scans'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68005744607875080)
,p_db_column_name=>'''gc cr blocks received'''
,p_display_order=>69
,p_column_identifier=>'BQ'
,p_column_label=>'''Gc Cr Blocks Received'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68006155445875080)
,p_db_column_name=>'''gc current blocks received'''
,p_display_order=>70
,p_column_identifier=>'BR'
,p_column_label=>'''Gc Current Blocks Received'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68006557364875080)
,p_db_column_name=>'''row lock waits'''
,p_display_order=>71
,p_column_identifier=>'BS'
,p_column_label=>'''Row Lock Waits'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68006943040875082)
,p_db_column_name=>'''buffer busy waits'''
,p_display_order=>72
,p_column_identifier=>'BT'
,p_column_label=>'''Buffer Busy Waits'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68007369925875082)
,p_db_column_name=>'''physical reads'''
,p_display_order=>73
,p_column_identifier=>'BU'
,p_column_label=>'''Physical Reads'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68007752320875082)
,p_db_column_name=>'''physical reads direct'''
,p_display_order=>74
,p_column_identifier=>'BV'
,p_column_label=>'''Physical Reads Direct'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68008137314875082)
,p_db_column_name=>'''physical writes'''
,p_display_order=>75
,p_column_identifier=>'BW'
,p_column_label=>'''Physical Writes'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68008549130875082)
,p_db_column_name=>'''physical write requests'''
,p_display_order=>76
,p_column_identifier=>'BX'
,p_column_label=>'''Physical Write Requests'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68008953804875082)
,p_db_column_name=>'''space allocated'''
,p_display_order=>77
,p_column_identifier=>'BY'
,p_column_label=>'''Space Allocated'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68009333894875083)
,p_db_column_name=>'''logical reads'''
,p_display_order=>78
,p_column_identifier=>'BZ'
,p_column_label=>'''Logical Reads'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68009720347875083)
,p_db_column_name=>'''physical read requests'''
,p_display_order=>79
,p_column_identifier=>'CA'
,p_column_label=>'''Physical Read Requests'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68010112945875083)
,p_db_column_name=>'''physical writes direct'''
,p_display_order=>80
,p_column_identifier=>'CB'
,p_column_label=>'''Physical Writes Direct'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68010598943875083)
,p_db_column_name=>'''ITL waits'''
,p_display_order=>81
,p_column_identifier=>'CC'
,p_column_label=>'''Itl Waits'''
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(68010922023875308)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'680110'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'OWNER:INDEX_NAME:INDEX_TYPE:TABLE_OWNER:TABLE_NAME:TABLE_TYPE:UNIQUENESS:COMPRESSION:PREFIX_LENGTH:TABLESPACE_NAME:INI_TRANS:MAX_TRANS:INITIAL_EXTENT:NEXT_EXTENT:MIN_EXTENTS:MAX_EXTENTS:PCT_INCREASE:PCT_THRESHOLD:INCLUDE_COLUMN:FREELISTS:FREELIST_GRO'
||'UPS:PCT_FREE:LOGGING:BLEVEL:LEAF_BLOCKS:DISTINCT_KEYS:AVG_LEAF_BLOCKS_PER_KEY:AVG_DATA_BLOCKS_PER_KEY:CLUSTERING_FACTOR:STATUS:NUM_ROWS:SAMPLE_SIZE:LAST_ANALYZED:DEGREE:INSTANCES:PARTITIONED:TEMPORARY:GENERATED:SECONDARY:BUFFER_POOL:FLASH_CACHE:CELL_'
||'FLASH_CACHE:USER_STATS:DURATION:PCT_DIRECT_ACCESS:ITYP_OWNER:ITYP_NAME:PARAMETERS:GLOBAL_STATS:DOMIDX_STATUS:DOMIDX_OPSTATUS:FUNCIDX_STATUS:JOIN_INDEX:IOT_REDUNDANT_PKEY_ELIM:DROPPED:VISIBILITY:DOMIDX_MANAGEMENT:SEGMENT_CREATED:INDEX_COLUMNS:BYTES:BL'
||'OCKS:SEG_OWNER:SEG_OBJECT_NAME:''gc buffer busy'':''db block changes'':''optimized physical reads'':''space used'':''segment scans'':''gc cr blocks received'':''gc current blocks received'':''row lock waits'':''buffer busy waits'':''physical reads'':''physical reads dire'
||'ct'':''physical writes'':''physical write requests'':''space allocated'':''logical reads'':''physical read requests'':''physical writes direct'':''ITL waits'''
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(68011993580889797)
,p_report_id=>wwv_flow_api.id(68010922023875308)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'STATUS'
,p_operator=>'='
,p_expr=>'N/A'
,p_condition_sql=>' (case when ("STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''N/A''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#FF7755'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(68012314574889797)
,p_report_id=>wwv_flow_api.id(68010922023875308)
,p_name=>'Valid Status'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'STATUS'
,p_operator=>'='
,p_expr=>'VALID'
,p_condition_sql=>' (case when ("STATUS" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''VALID''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#99FF99'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Session Long Operations'
,p_page_mode=>'NORMAL'
,p_step_title=>'Session Long Operations'
,p_step_sub_title=>'Session Long Operations'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715235303'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68013780000898530)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68014348861898530)
,p_plug_name=>'Session Long Operations'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select * ',
'  from v$session_longops'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(68014400587898530)
,p_name=>'Session Long Operations'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68014400587898530
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68014801039898530)
,p_db_column_name=>'SID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Sid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68015277354898533)
,p_db_column_name=>'SERIAL#'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Serial#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68015625635898533)
,p_db_column_name=>'OPNAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Opname'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68016055424898533)
,p_db_column_name=>'TARGET'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Target'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68016465480898533)
,p_db_column_name=>'TARGET_DESC'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Target Desc'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68016845253898533)
,p_db_column_name=>'SOFAR'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Sofar'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68017249270898533)
,p_db_column_name=>'TOTALWORK'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Totalwork'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68017694203898533)
,p_db_column_name=>'UNITS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Units'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68018040064898535)
,p_db_column_name=>'START_TIME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Start Time'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68018433064898535)
,p_db_column_name=>'LAST_UPDATE_TIME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Last Update Time'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68018869305898535)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Timestamp'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68019213557898536)
,p_db_column_name=>'TIME_REMAINING'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Time Remaining'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68019693966898536)
,p_db_column_name=>'ELAPSED_SECONDS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Elapsed Seconds'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68020012901898536)
,p_db_column_name=>'CONTEXT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Context'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68020466994898536)
,p_db_column_name=>'MESSAGE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Message'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68020846856898536)
,p_db_column_name=>'USERNAME'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68021238359898536)
,p_db_column_name=>'SQL_ADDRESS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Sql Address'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68021684706898538)
,p_db_column_name=>'SQL_HASH_VALUE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Sql Hash Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68022072330898538)
,p_db_column_name=>'SQL_ID'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Sql Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68022472399898538)
,p_db_column_name=>'SQL_PLAN_HASH_VALUE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Sql Plan Hash Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68022866484898539)
,p_db_column_name=>'SQL_EXEC_START'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Sql Exec Start'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68023252029898541)
,p_db_column_name=>'SQL_EXEC_ID'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Sql Exec Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68023678039898541)
,p_db_column_name=>'SQL_PLAN_LINE_ID'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Sql Plan Line Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68024054007898541)
,p_db_column_name=>'SQL_PLAN_OPERATION'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Sql Plan Operation'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68024499447898541)
,p_db_column_name=>'SQL_PLAN_OPTIONS'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Sql Plan Options'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68024830228898541)
,p_db_column_name=>'QCSID'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Qcsid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(68025267687898803)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'680253'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'SID:SERIAL#:OPNAME:TARGET:TARGET_DESC:SOFAR:TOTALWORK:UNITS:START_TIME:LAST_UPDATE_TIME:TIMESTAMP:TIME_REMAINING:ELAPSED_SECONDS:CONTEXT:MESSAGE:USERNAME:SQL_ADDRESS:SQL_HASH_VALUE:SQL_ID:SQL_PLAN_HASH_VALUE:SQL_EXEC_START:SQL_EXEC_ID:SQL_PLAN_LINE_I'
||'D:SQL_PLAN_OPERATION:SQL_PLAN_OPTIONS:QCSID'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'PGA Memory Usage'
,p_page_mode=>'NORMAL'
,p_step_title=>'PGA Memory Usage'
,p_step_sub_title=>'PGA Memory Usage'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150715235405'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68026779919904742)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68027214921904742)
,p_plug_name=>'PGA Memory Usage'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select s.sid',
'    ,  s.serial# ',
'    ,  p.pga_alloc_mem',
'    ,  p.pga_used_mem',
'    ,  p.pga_freeable_mem',
'    ,  p.pga_Max_mem',
'    ,  p.addr',
'    ,  p.username',
'    ,  p.program',
'    ,  s.osuser',
'    ,  s.type ',
'from v$session  s, v$process  p',
'where paddr = addr'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(68027345549904742)
,p_name=>'PGA Memory Usage'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68027345549904742
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68027703323904744)
,p_db_column_name=>'SID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Sid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68028160380904745)
,p_db_column_name=>'SERIAL#'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Serial#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68028540382904745)
,p_db_column_name=>'PGA_ALLOC_MEM'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Pga Alloc Mem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68028989385904745)
,p_db_column_name=>'PGA_USED_MEM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Pga Used Mem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68029384798904747)
,p_db_column_name=>'PGA_FREEABLE_MEM'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Pga Freeable Mem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68029778725904747)
,p_db_column_name=>'PGA_MAX_MEM'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Pga Max Mem'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68030112468904747)
,p_db_column_name=>'ADDR'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Addr'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68030584355904747)
,p_db_column_name=>'USERNAME'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68030953839904747)
,p_db_column_name=>'PROGRAM'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Program'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68031382137904747)
,p_db_column_name=>'OSUSER'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Osuser'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68031737123904747)
,p_db_column_name=>'TYPE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(68032171787904965)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'680322'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'SID:SERIAL#:PGA_ALLOC_MEM:PGA_USED_MEM:PGA_FREEABLE_MEM:PGA_MAX_MEM:ADDR:USERNAME:PROGRAM:OSUSER:TYPE'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_api.create_page(
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Tablespaces'
,p_page_mode=>'NORMAL'
,p_step_title=>'Tablespaces'
,p_step_sub_title=>'Tablespaces'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150719154013'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68033965255917139)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68034568354917141)
,p_plug_name=>'Tablespaces'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select  a.tablespace_name,',
'       round(a.bytes_alloc / 1024 / 1024) megs_alloc,',
'       round(nvl(b.bytes_free, 0) / 1024 / 1024) megs_free,',
'       round((a.bytes_alloc - nvl(b.bytes_free, 0)) / 1024 / 1024) megs_used,',
'       round((nvl(b.bytes_free, 0) / a.bytes_alloc) * 100) Pct_Free,',
'       100 - round((nvl(b.bytes_free, 0) / a.bytes_alloc) * 100) Pct_used,',
'       round(maxbytes/1048576) Max',
'from  ( select  f.tablespace_name,',
'               sum(f.bytes) bytes_alloc,',
'               sum(decode(f.autoextensible, ''YES'',f.maxbytes,''NO'', f.bytes)) maxbytes',
'        from dba_data_files f',
'        group by tablespace_name) a,',
'      ( select  f.tablespace_name,',
'               sum(f.bytes)  bytes_free',
'        from dba_free_space f',
'        group by tablespace_name) b',
'where a.tablespace_name = b.tablespace_name (+)',
'union all',
'select h.tablespace_name,',
'       round(sum(h.bytes_free + h.bytes_used) / 1048576) megs_alloc,',
'       round(sum((h.bytes_free + h.bytes_used) - nvl(p.bytes_used, 0)) / 1048576) megs_free,',
'       round(sum(nvl(p.bytes_used, 0))/ 1048576) megs_used,',
'       round((sum((h.bytes_free + h.bytes_used) - nvl(p.bytes_used, 0)) / sum(h.bytes_used + h.bytes_free)) * 100) Pct_Free,',
'       100 - round((sum((h.bytes_free + h.bytes_used) - nvl(p.bytes_used, 0)) / sum(h.bytes_used + h.bytes_free)) * 100) pct_used,',
'       round(sum(f.maxbytes) / 1048576) max',
'from   sys.v_$TEMP_SPACE_HEADER h, sys.v_$Temp_extent_pool p, dba_temp_files f',
'where  p.file_id(+) = h.file_id',
'and    p.tablespace_name(+) = h.tablespace_name',
'and    f.file_id = h.file_id',
'and    f.tablespace_name = h.tablespace_name',
'group by h.tablespace_name'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(68034638038917141)
,p_name=>'Tablespaces'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68034638038917141
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68035016455917143)
,p_db_column_name=>'TABLESPACE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Tablespace Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68035377164917144)
,p_db_column_name=>'MEGS_ALLOC'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Megs Alloc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68035728168917144)
,p_db_column_name=>'MEGS_FREE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Megs Free'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68036161669917146)
,p_db_column_name=>'MEGS_USED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Megs Used'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68036502350917146)
,p_db_column_name=>'PCT_FREE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Pct Free'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68036909269917147)
,p_db_column_name=>'PCT_USED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Pct Used'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68037304345917147)
,p_db_column_name=>'MAX'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Max'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(68037719672917358)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'680378'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'TABLESPACE_NAME:MEGS_ALLOC:MEGS_FREE:MEGS_USED:PCT_FREE:PCT_USED:MAX'
,p_sort_column_1=>'MEGS_ALLOC'
,p_sort_direction_1=>'DESC'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Segments'
,p_page_mode=>'NORMAL'
,p_step_title=>'Segments'
,p_step_sub_title=>'Segments'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150719154521'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68039746580931921)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68040373461931921)
,p_plug_name=>'Segments'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from dba_segments'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(68040488960931921)
,p_name=>'Segments'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68040488960931921
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68040837619931924)
,p_db_column_name=>'OWNER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68041248152931924)
,p_db_column_name=>'SEGMENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Segment Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68041627890931927)
,p_db_column_name=>'PARTITION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Partition Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68042076800931927)
,p_db_column_name=>'SEGMENT_TYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Segment Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68042421185931927)
,p_db_column_name=>'SEGMENT_SUBTYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Segment Subtype'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68042810694931928)
,p_db_column_name=>'TABLESPACE_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Tablespace Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68043208475931928)
,p_db_column_name=>'HEADER_FILE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Header File'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68043668352931928)
,p_db_column_name=>'HEADER_BLOCK'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Header Block'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68044089181931930)
,p_db_column_name=>'BYTES'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68044491147931930)
,p_db_column_name=>'BLOCKS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Blocks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68044829707931930)
,p_db_column_name=>'EXTENTS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Extents'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68045246079931930)
,p_db_column_name=>'INITIAL_EXTENT'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Initial Extent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68045612164931930)
,p_db_column_name=>'NEXT_EXTENT'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Next Extent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68046082287931930)
,p_db_column_name=>'MIN_EXTENTS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Min Extents'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68046445235931930)
,p_db_column_name=>'MAX_EXTENTS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Max Extents'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68046828579931931)
,p_db_column_name=>'MAX_SIZE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Max Size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68047223850931931)
,p_db_column_name=>'RETENTION'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Retention'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68047677254931931)
,p_db_column_name=>'MINRETENTION'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Minretention'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68048009690931933)
,p_db_column_name=>'PCT_INCREASE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Pct Increase'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68048491835931933)
,p_db_column_name=>'FREELISTS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Freelists'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68048888565931933)
,p_db_column_name=>'FREELIST_GROUPS'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Freelist Groups'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68049272081931933)
,p_db_column_name=>'RELATIVE_FNO'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Relative Fno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68049674369931933)
,p_db_column_name=>'BUFFER_POOL'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Buffer Pool'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68050000758931933)
,p_db_column_name=>'FLASH_CACHE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Flash Cache'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68050496392931935)
,p_db_column_name=>'CELL_FLASH_CACHE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Cell Flash Cache'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(68050874022932217)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'680509'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'OWNER:SEGMENT_TYPE:SEGMENT_NAME:TABLESPACE_NAME:BYTES:'
,p_sort_column_1=>'BYTES'
,p_sort_direction_1=>'DESC'
,p_break_on=>'OWNER'
,p_break_enabled_on=>'OWNER'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(68272398198849112)
,p_report_id=>wwv_flow_api.id(68050874022932217)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'OWNER'
,p_operator=>'!='
,p_expr=>'APEX_030200'
,p_condition_sql=>'"OWNER" != #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# != ''APEX_030200''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(68272727988849114)
,p_report_id=>wwv_flow_api.id(68050874022932217)
,p_group_by_columns=>'OWNER:SEGMENT_TYPE'
,p_function_01=>'SUM'
,p_function_column_01=>'BYTES'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
,p_sort_column_01=>'APXWS_GBFC_01'
,p_sort_direction_01=>'DESC'
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_api.create_page(
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Objects'
,p_page_mode=>'NORMAL'
,p_step_title=>'Objects'
,p_step_sub_title=>'Objects'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150716000818'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68053250276967423)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68053893677967423)
,p_plug_name=>'Objects'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from dba_objects'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(68053907681967423)
,p_name=>'Objects'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68053907681967423
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68054396700967426)
,p_db_column_name=>'OWNER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68054724811967426)
,p_db_column_name=>'OBJECT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Object Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68055181122967428)
,p_db_column_name=>'SUBOBJECT_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Subobject Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68055512491967428)
,p_db_column_name=>'OBJECT_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Object Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68055912249967428)
,p_db_column_name=>'DATA_OBJECT_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Data Object Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68056361363967428)
,p_db_column_name=>'OBJECT_TYPE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Object Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68056706079967428)
,p_db_column_name=>'CREATED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68057173487967430)
,p_db_column_name=>'LAST_DDL_TIME'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Last Ddl Time'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68057535182967430)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Timestamp'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68057995849967430)
,p_db_column_name=>'STATUS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68058307471967431)
,p_db_column_name=>'TEMPORARY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Temporary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68058752876967431)
,p_db_column_name=>'GENERATED'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Generated'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68059138570967431)
,p_db_column_name=>'SECONDARY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Secondary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68059588885967433)
,p_db_column_name=>'NAMESPACE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Namespace'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68059955533967433)
,p_db_column_name=>'EDITION_NAME'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Edition Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(68060343242967637)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'680604'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'OWNER:OBJECT_NAME:OBJECT_ID:DATA_OBJECT_ID:OBJECT_TYPE:CREATED:LAST_DDL_TIME:TIMESTAMP:STATUS:TEMPORARY:GENERATED:SECONDARY'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_api.create_page(
 p_id=>27
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Indexes'
,p_page_mode=>'NORMAL'
,p_step_title=>'Indexes'
,p_step_sub_title=>'Indexes'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150716001046'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68062642212995493)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68063292492995493)
,p_plug_name=>'Indexes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from dba_indexes'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(68063375933995493)
,p_name=>'Indexes'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68063375933995493
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68063720107995493)
,p_db_column_name=>'OWNER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68064174617995493)
,p_db_column_name=>'INDEX_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Index Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68064536115995494)
,p_db_column_name=>'INDEX_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Index Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68064912762995494)
,p_db_column_name=>'TABLE_OWNER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Table Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68065388016995494)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68065770679995494)
,p_db_column_name=>'TABLE_TYPE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Table Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68066170869995494)
,p_db_column_name=>'UNIQUENESS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Uniqueness'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68066557717995494)
,p_db_column_name=>'COMPRESSION'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Compression'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68066961431995494)
,p_db_column_name=>'PREFIX_LENGTH'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Prefix Length'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68067357686995496)
,p_db_column_name=>'TABLESPACE_NAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Tablespace Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68067795593995496)
,p_db_column_name=>'INI_TRANS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Ini Trans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68068164110995497)
,p_db_column_name=>'MAX_TRANS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Max Trans'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68068532529995497)
,p_db_column_name=>'INITIAL_EXTENT'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Initial Extent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68068961104995499)
,p_db_column_name=>'NEXT_EXTENT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Next Extent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68069313896995499)
,p_db_column_name=>'MIN_EXTENTS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Min Extents'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68069778765995500)
,p_db_column_name=>'MAX_EXTENTS'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Max Extents'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68070129091995500)
,p_db_column_name=>'PCT_INCREASE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Pct Increase'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68070568261995500)
,p_db_column_name=>'PCT_THRESHOLD'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Pct Threshold'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68070972198995500)
,p_db_column_name=>'INCLUDE_COLUMN'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Include Column'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68071356318995502)
,p_db_column_name=>'FREELISTS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Freelists'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68071762302995502)
,p_db_column_name=>'FREELIST_GROUPS'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Freelist Groups'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68072187830995502)
,p_db_column_name=>'PCT_FREE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Pct Free'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68072554891995502)
,p_db_column_name=>'LOGGING'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Logging'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68072929751995502)
,p_db_column_name=>'BLEVEL'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Blevel'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68073358284995502)
,p_db_column_name=>'LEAF_BLOCKS'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Leaf Blocks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68073702462995503)
,p_db_column_name=>'DISTINCT_KEYS'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Distinct Keys'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68074102699995505)
,p_db_column_name=>'AVG_LEAF_BLOCKS_PER_KEY'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Avg Leaf Blocks Per Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68074529040995505)
,p_db_column_name=>'AVG_DATA_BLOCKS_PER_KEY'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Avg Data Blocks Per Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68074967624995507)
,p_db_column_name=>'CLUSTERING_FACTOR'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Clustering Factor'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68075366919995507)
,p_db_column_name=>'STATUS'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68075716489995507)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68076130913995507)
,p_db_column_name=>'SAMPLE_SIZE'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Sample Size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68076562793995508)
,p_db_column_name=>'LAST_ANALYZED'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Last Analyzed'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68076943381995508)
,p_db_column_name=>'DEGREE'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Degree'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68077361696995508)
,p_db_column_name=>'INSTANCES'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Instances'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68077720909995508)
,p_db_column_name=>'PARTITIONED'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Partitioned'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68078138214995508)
,p_db_column_name=>'TEMPORARY'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Temporary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68078541568995510)
,p_db_column_name=>'GENERATED'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Generated'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68078979365995510)
,p_db_column_name=>'SECONDARY'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Secondary'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68079301253995510)
,p_db_column_name=>'BUFFER_POOL'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Buffer Pool'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68079753753995510)
,p_db_column_name=>'FLASH_CACHE'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Flash Cache'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68080128364995510)
,p_db_column_name=>'CELL_FLASH_CACHE'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Cell Flash Cache'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68080516857995510)
,p_db_column_name=>'USER_STATS'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'User Stats'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68080931986995510)
,p_db_column_name=>'DURATION'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Duration'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68081366780995511)
,p_db_column_name=>'PCT_DIRECT_ACCESS'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Pct Direct Access'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68081797008995511)
,p_db_column_name=>'ITYP_OWNER'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Ityp Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68082168300995514)
,p_db_column_name=>'ITYP_NAME'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Ityp Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68082574040995514)
,p_db_column_name=>'PARAMETERS'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Parameters'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68082995215995517)
,p_db_column_name=>'GLOBAL_STATS'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Global Stats'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68083317545995517)
,p_db_column_name=>'DOMIDX_STATUS'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Domidx Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68083783282995517)
,p_db_column_name=>'DOMIDX_OPSTATUS'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Domidx Opstatus'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68084153970995517)
,p_db_column_name=>'FUNCIDX_STATUS'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Funcidx Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68084555561995517)
,p_db_column_name=>'JOIN_INDEX'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Join Index'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68084959574995517)
,p_db_column_name=>'IOT_REDUNDANT_PKEY_ELIM'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Iot Redundant Pkey Elim'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68085342433995519)
,p_db_column_name=>'DROPPED'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Dropped'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68085775813995519)
,p_db_column_name=>'VISIBILITY'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Visibility'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68086157700995519)
,p_db_column_name=>'DOMIDX_MANAGEMENT'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Domidx Management'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68086553153995519)
,p_db_column_name=>'SEGMENT_CREATED'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Segment Created'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(68086925852995766)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'680870'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'OWNER:INDEX_NAME:INDEX_TYPE:TABLE_OWNER:TABLE_NAME:TABLE_TYPE:UNIQUENESS:COMPRESSION:PREFIX_LENGTH:TABLESPACE_NAME:INI_TRANS:MAX_TRANS:INITIAL_EXTENT:NEXT_EXTENT:MIN_EXTENTS:MAX_EXTENTS:PCT_INCREASE:PCT_THRESHOLD:INCLUDE_COLUMN:FREELISTS:FREELIST_GRO'
||'UPS:PCT_FREE:LOGGING:BLEVEL:LEAF_BLOCKS:DISTINCT_KEYS:AVG_LEAF_BLOCKS_PER_KEY:AVG_DATA_BLOCKS_PER_KEY:CLUSTERING_FACTOR:STATUS:NUM_ROWS:SAMPLE_SIZE:LAST_ANALYZED:DEGREE:INSTANCES:PARTITIONED:TEMPORARY:GENERATED:SECONDARY:BUFFER_POOL:FLASH_CACHE:CELL_'
||'FLASH_CACHE:USER_STATS:DURATION:PCT_DIRECT_ACCESS:ITYP_OWNER:ITYP_NAME:PARAMETERS:GLOBAL_STATS:DOMIDX_STATUS:DOMIDX_OPSTATUS:FUNCIDX_STATUS:JOIN_INDEX:IOT_REDUNDANT_PKEY_ELIM:DROPPED:VISIBILITY:DOMIDX_MANAGEMENT:SEGMENT_CREATED'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(68087808571005126)
,p_report_id=>wwv_flow_api.id(68086925852995766)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'INDEX_TYPE'
,p_operator=>'='
,p_expr=>'NORMAL'
,p_condition_sql=>'"INDEX_TYPE" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''NORMAL''  '
,p_enabled=>'Y'
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_api.create_page(
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Extents'
,p_page_mode=>'NORMAL'
,p_step_title=>'Extents'
,p_step_sub_title=>'Extents'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150716002726'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68089172497087822)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68089735975087822)
,p_plug_name=>'Extents'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from dba_extents'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(68089821829087822)
,p_name=>'Extents'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68089821829087822
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68090256171087823)
,p_db_column_name=>'OWNER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68090643493087825)
,p_db_column_name=>'SEGMENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Segment Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68091070437087825)
,p_db_column_name=>'PARTITION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Partition Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68091431415087826)
,p_db_column_name=>'SEGMENT_TYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Segment Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68091836077087826)
,p_db_column_name=>'TABLESPACE_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Tablespace Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68092269481087826)
,p_db_column_name=>'EXTENT_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Extent Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68092682856087828)
,p_db_column_name=>'FILE_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'File Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68093023764087828)
,p_db_column_name=>'BLOCK_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Block Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68093469011087828)
,p_db_column_name=>'BYTES'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Bytes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68093848691087830)
,p_db_column_name=>'BLOCKS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Blocks'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68094213113087830)
,p_db_column_name=>'RELATIVE_FNO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Relative Fno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(68094645836088096)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'680947'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'OWNER:SEGMENT_NAME:PARTITION_NAME:SEGMENT_TYPE:TABLESPACE_NAME:EXTENT_ID:FILE_ID:BLOCK_ID:BYTES:BLOCKS:RELATIVE_FNO'
,p_sort_column_1=>'BLOCK_ID'
,p_sort_direction_1=>'DESC'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_api.create_page(
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Total Table Space'
,p_page_mode=>'NORMAL'
,p_step_title=>'Total Table Space'
,p_step_sub_title=>'Total Table Space'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150716231757'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68096347535117916)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68096913997117916)
,p_plug_name=>'Total Table Space'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT owner, segment_name, sum(size_mb) size_mb',
'FROM (',
'SELECT x.owner,',
'CASE WHEN x.segment_type in (''LOBSEGMENT'',''LOB PARTITION'') THEN   (SELECT table_name FROM dba_lobs y WHERE y.segment_name= x.segment_name and y.owner = x.owner )',
'     WHEN x.segment_type=''LOBINDEX'' THEN                          (SELECT table_name FROM dba_lobs y WHERE y.index_name = x.segment_name and y.owner = x.owner)',
'     WHEN x.segment_type in(''INDEX'',''INDEX PARTITION'',''INDEX SUBPARTITION'') THEN ',
'                                                                  (SELECT y.table_name FROM dba_indexes y WHERE y.index_name = x.segment_name and y.owner = x.owner)',
'     WHEN x.segment_type in (''TABLE SUBPARTITION'', ''TABLE PARTITION'',''TABLE'') THEN x.segment_name ',
'  END segment_name',
',round(sum(x.bytes)/(1024*1024),2) size_mb ',
'FROM dba_segments x ',
'where x.owner not in ( ''XDB'' , ''SYS'', ''SYSTEM'' ) ',
'GROUP BY   x.owner, x.segment_name, x.segment_type',
')',
'GROUP BY owner, segment_name'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(68097068028117916)
,p_name=>'Total Table Space'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68097068028117916
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68097489788117917)
,p_db_column_name=>'OWNER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68097859881117919)
,p_db_column_name=>'SEGMENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Segment Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68098251870117919)
,p_db_column_name=>'SIZE_MB'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Size Mb'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(68098627168118217)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'680987'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'OWNER:SEGMENT_NAME:SIZE_MB'
,p_sort_column_1=>'SIZE_MB'
,p_sort_direction_1=>'DESC'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_api.create_page(
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Waste Space'
,p_page_mode=>'NORMAL'
,p_step_title=>'Waste Space'
,p_step_sub_title=>'Waste Space'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150716003401'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67874902347730010)
,p_plug_name=>'Description'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(67583441075476185)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Just enable ''row movement'' and start shrinking tables:',
'<br>',
'SQL> ALTER TABLE MYTABLE ENABLE ROW MOVEMENT;',
'<br>',
'This enables row movement of the table. THis is necessary so that oracle is able to actually move the rows to other free extents in order to shrink the space needed.',
'<br>',
'SQL> ALTER TABLE MYTABLE SHRINK SPACE COMPACT;',
'<br>This shrinks the used space of the table, but does not update the HWM. This is usefull if you don''t want to have a table-level lock during business hours.',
'<br>',
'SQL> ALTER TABLE MYTABLE SHRINK SPACE;',
'<br>This command shrinks the contents of the table and subsequently updates the HWM. This statement can also be used after a shrink with ''compact'' option has been done, just to update the HWM.',
'<br>',
'SQL> ALTER TABLE MYTABLE SHRINK SPACE CASCADE;',
'<br>This command shrinks the contents of the table and all dependent objects like indexes.',
''))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68100366628130585)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68100952320130585)
,p_plug_name=>'Waste Space'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'a.owner,',
'a.segment_name,',
'a.segment_type,',
'round(a.bytes/1024/1024,0) MBS,',
'round((a.bytes-(b.num_rows*b.avg_row_len) )/1024/1024,0) WASTED',
'from dba_segments a, dba_tables b',
'where a.owner=b.owner',
'and a.owner not like ''SYS%''',
'and a.segment_name = b.table_name',
'and a.segment_type=''TABLE''',
'group by a.owner, a.segment_name, a.segment_type, round(a.bytes/1024/1024,0) ,round((a.bytes-(b.num_rows*b.avg_row_len) )/1024/1024,0)',
'having round(bytes/1024/1024,0) >100',
'order by round(bytes/1024/1024,0) desc ;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(68101050835130585)
,p_name=>'Waste Space'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68101050835130585
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68101451715130589)
,p_db_column_name=>'OWNER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68101819727130594)
,p_db_column_name=>'SEGMENT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Segment Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68102285100130594)
,p_db_column_name=>'SEGMENT_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Segment Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68102660650130594)
,p_db_column_name=>'MBS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Mbs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68103038935130594)
,p_db_column_name=>'WASTED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Wasted'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(68103474223130953)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'681035'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'OWNER:SEGMENT_NAME:SEGMENT_TYPE:MBS:WASTED'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_api.create_page(
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'APEX Activity'
,p_page_mode=>'NORMAL'
,p_step_title=>'APEX Activity'
,p_step_sub_title=>'APEX Activity'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150719154905'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68106528164152439)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68107153380152439)
,p_plug_name=>'APEX Activity'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from APEX_WORKSPACE_ACTIVITY_LOG'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(68107213842152439)
,p_name=>'APEX Activity'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68107213842152439
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68107696018152440)
,p_db_column_name=>'WORKSPACE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Workspace'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68108036145152440)
,p_db_column_name=>'WORKSPACE_DISPLAY_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Workspace Display Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68108473513152440)
,p_db_column_name=>'APEX_USER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Apex User'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68108836189152440)
,p_db_column_name=>'APPLICATION_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Application Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68109270360152442)
,p_db_column_name=>'APPLICATION_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Application Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68109673013152442)
,p_db_column_name=>'APPLICATION_SCHEMA_OWNER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Application Schema Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68110009663152442)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Page Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68110457197152442)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68110785673152442)
,p_db_column_name=>'VIEW_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'View Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68111191252152442)
,p_db_column_name=>'THINK_TIME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Think Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68111593055152444)
,p_db_column_name=>'SECONDS_AGO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Seconds Ago'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68111996880152444)
,p_db_column_name=>'LOG_CONTEXT'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Log Context'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68112396124152444)
,p_db_column_name=>'ELAPSED_TIME'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Elapsed Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68112751751152444)
,p_db_column_name=>'ROWS_QUERIED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Rows Queried'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68113156230152445)
,p_db_column_name=>'IP_ADDRESS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Ip Address'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68113552739152445)
,p_db_column_name=>'AGENT'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Agent'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68113977516152445)
,p_db_column_name=>'APEX_SESSION_ID'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Apex Session Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68114389378152445)
,p_db_column_name=>'ERROR_MESSAGE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Error Message'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68114775869152448)
,p_db_column_name=>'ERROR_ON_COMPONENT_TYPE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Error On Component Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68115151332152448)
,p_db_column_name=>'ERROR_ON_COMPONENT_NAME'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Error On Component Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68115500992152448)
,p_db_column_name=>'PAGE_VIEW_MODE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Page View Mode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68115995625152448)
,p_db_column_name=>'APPLICATION_INFO'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Application Info'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68116374956152450)
,p_db_column_name=>'INTERACTIVE_REPORT_ID'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Interactive Report Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68116768344152450)
,p_db_column_name=>'IR_SAVED_REPORT_ID'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Ir Saved Report Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68117142039152453)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Ir Search'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68117574170152453)
,p_db_column_name=>'WS_APPLICATION_ID'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Ws Application Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68117993595152453)
,p_db_column_name=>'WS_PAGE_ID'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Ws Page Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68118352329152453)
,p_db_column_name=>'WS_DATAGRID_ID'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Ws Datagrid Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68118700218152453)
,p_db_column_name=>'CONTENT_LENGTH'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Content Length'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68119159923152454)
,p_db_column_name=>'REGIONS_FROM_CACHE'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Regions From Cache'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68119573782152456)
,p_db_column_name=>'WORKSPACE_ID'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Workspace Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68119996457152458)
,p_db_column_name=>'PAGE_VIEW_TYPE'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Page View Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68120317175152458)
,p_db_column_name=>'REQUEST_VALUE'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Request Value'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68120721065152458)
,p_db_column_name=>'DEBUG_PAGE_VIEW_ID'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Debug Page View Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(68121170479152717)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'681212'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'WORKSPACE:WORKSPACE_DISPLAY_NAME:APEX_USER:APPLICATION_ID:APPLICATION_NAME:APPLICATION_SCHEMA_OWNER:PAGE_ID:PAGE_NAME:VIEW_DATE:THINK_TIME:SECONDS_AGO:LOG_CONTEXT:ELAPSED_TIME:ROWS_QUERIED:IP_ADDRESS:AGENT:APEX_SESSION_ID:ERROR_MESSAGE:ERROR_ON_COMPO'
||'NENT_TYPE:ERROR_ON_COMPONENT_NAME:PAGE_VIEW_MODE:APPLICATION_INFO:INTERACTIVE_REPORT_ID:IR_SAVED_REPORT_ID:IR_SEARCH:WS_APPLICATION_ID:WS_PAGE_ID:WS_DATAGRID_ID:CONTENT_LENGTH:REGIONS_FROM_CACHE:WORKSPACE_ID:PAGE_VIEW_TYPE:REQUEST_VALUE:DEBUG_PAGE_VI'
||'EW_ID'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(68274960825871579)
,p_report_id=>wwv_flow_api.id(68121170479152717)
,p_group_by_columns=>'WORKSPACE:APEX_USER:APPLICATION_ID'
,p_function_01=>'COUNT'
,p_function_column_01=>'APEX_SESSION_ID'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
,p_function_02=>'COUNT'
,p_function_column_02=>'PAGE_ID'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_format_mask_02=>'999G999G999G999G990'
,p_function_sum_02=>'N'
,p_function_03=>'SUM'
,p_function_column_03=>'ROWS_QUERIED'
,p_function_db_column_name_03=>'APXWS_GBFC_03'
,p_function_format_mask_03=>'999G999G999G999G990'
,p_function_sum_03=>'N'
,p_sort_column_01=>'APXWS_GBFC_02'
,p_sort_direction_01=>'DESC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(68124480324202564)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Page Count per Apps'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'681245'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'WORKSPACE:WORKSPACE_DISPLAY_NAME:APEX_USER:APPLICATION_ID:APPLICATION_NAME:APPLICATION_SCHEMA_OWNER:PAGE_ID:PAGE_NAME:VIEW_DATE:THINK_TIME:SECONDS_AGO:LOG_CONTEXT:ELAPSED_TIME:ROWS_QUERIED:IP_ADDRESS:AGENT:APEX_SESSION_ID:ERROR_MESSAGE:ERROR_ON_COMPO'
||'NENT_TYPE:ERROR_ON_COMPONENT_NAME:PAGE_VIEW_MODE:APPLICATION_INFO:INTERACTIVE_REPORT_ID:IR_SAVED_REPORT_ID:IR_SEARCH:WS_APPLICATION_ID:WS_PAGE_ID:WS_DATAGRID_ID:CONTENT_LENGTH:REGIONS_FROM_CACHE:WORKSPACE_ID:PAGE_VIEW_TYPE:REQUEST_VALUE:DEBUG_PAGE_VI'
||'EW_ID'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(68124833444202564)
,p_report_id=>wwv_flow_api.id(68124480324202564)
,p_group_by_columns=>'WORKSPACE:APEX_USER:APPLICATION_ID'
,p_function_01=>'COUNT'
,p_function_column_01=>'APEX_SESSION_ID'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'N'
,p_function_02=>'COUNT'
,p_function_column_02=>'PAGE_ID'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_format_mask_02=>'999G999G999G999G990'
,p_function_sum_02=>'N'
,p_function_03=>'SUM'
,p_function_column_03=>'ROWS_QUERIED'
,p_function_db_column_name_03=>'APXWS_GBFC_03'
,p_function_format_mask_03=>'999G999G999G999G990'
,p_function_sum_03=>'N'
,p_sort_column_01=>'APXWS_GBFC_02'
,p_sort_direction_01=>'DESC'
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_api.create_page(
 p_id=>32
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Mail Log'
,p_page_mode=>'NORMAL'
,p_step_title=>'Mail Log'
,p_step_sub_title=>'Mail Log'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150716004501'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68126317912210418)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68126986657210420)
,p_plug_name=>'Mail Log'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select * from APEX_MAIL_LOG',
'',
'--SELECT ID, WORKSHEET_ID, WEBSHEET_ID, REPORT_ID, EMAIL_SUBJECT, EMAIL_FROM, --EMAIL_ADDRESS, NOTIFY_INTERVAL, START_DATE, END_DATE, OFFSET_DATE, LANGUAGE, --CREATED_BY, SECURITY_GROUP_ID FROM WWV_FLOW_WORKSHEET_NOTIFY WHERE SYSTIMESTAMP --BETWEEN N'
||'VL(START_DATE,SYSTIMESTAMP) AND NVL(END_DATE,SYSTIMESTAMP) AND --EMAIL_ADDRESS IS NOT NULL'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(68127035923210420)
,p_name=>'Mail Log'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68127035923210420
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68127423035210421)
,p_db_column_name=>'MAIL_TO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Mail To'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68127867427210421)
,p_db_column_name=>'MAIL_FROM'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Mail From'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68128204559210421)
,p_db_column_name=>'MAIL_REPLYTO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Mail Replyto'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68128672637210424)
,p_db_column_name=>'MAIL_SUBJ'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Mail Subj'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68129051155210424)
,p_db_column_name=>'MAIL_CC'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Mail Cc'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68129431870210426)
,p_db_column_name=>'MAIL_BCC'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mail Bcc'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68129826733210426)
,p_db_column_name=>'MAIL_MESSAGE_CREATED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Mail Message Created'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68130255522210435)
,p_db_column_name=>'MAIL_MESSAGE_SEND_BEGIN'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Mail Message Send Begin'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68130666986210435)
,p_db_column_name=>'MAIL_MESSAGE_SEND_END'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Mail Message Send End'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68131047580210437)
,p_db_column_name=>'MAIL_BODY_SIZE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Mail Body Size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68131416046210437)
,p_db_column_name=>'MAIL_BODY_HTML_SIZE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Mail Body Html Size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68131881122210437)
,p_db_column_name=>'MAIL_ATTACHMENT_COUNT'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Mail Attachment Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68132235988210437)
,p_db_column_name=>'MAIL_ATTACHMENT_SIZE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Mail Attachment Size'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68132687884210440)
,p_db_column_name=>'MAIL_SEND_ERROR'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Mail Send Error'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68133058057210440)
,p_db_column_name=>'LAST_UPDATED_ON'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Last Updated On'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(68133450294210624)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'681335'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'MAIL_TO:MAIL_FROM:MAIL_REPLYTO:MAIL_SUBJ:MAIL_CC:MAIL_BCC:MAIL_MESSAGE_CREATED:MAIL_MESSAGE_SEND_BEGIN:MAIL_MESSAGE_SEND_END:MAIL_BODY_SIZE:MAIL_BODY_HTML_SIZE:MAIL_ATTACHMENT_COUNT:MAIL_ATTACHMENT_SIZE:MAIL_SEND_ERROR:LAST_UPDATED_ON'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_api.create_page(
 p_id=>33
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Apex Mail Queue'
,p_page_mode=>'NORMAL'
,p_step_title=>'Apex Mail Queue'
,p_step_sub_title=>'Apex Mail Queue'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150716004604'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68134933688216621)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68135556716216622)
,p_plug_name=>'Apex Mail Queue'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select * from APEX_MAIL_QUEUE'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(68135620332216622)
,p_name=>'Apex Mail Queue'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68135620332216622
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68136058754216622)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68136420534216622)
,p_db_column_name=>'MAIL_TO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Mail To'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68136821327216622)
,p_db_column_name=>'MAIL_FROM'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Mail From'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68137284541216622)
,p_db_column_name=>'MAIL_REPLYTO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Mail Replyto'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68137628845216622)
,p_db_column_name=>'MAIL_SUBJ'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Mail Subj'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68138061897216624)
,p_db_column_name=>'MAIL_CC'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mail Cc'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68138419818216624)
,p_db_column_name=>'MAIL_BCC'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Mail Bcc'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68138837342216624)
,p_db_column_name=>'MAIL_BODY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Mail Body'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68139291839216624)
,p_db_column_name=>'MAIL_BODY_HTML'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Mail Body Html'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68139681431216626)
,p_db_column_name=>'MAIL_SEND_COUNT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Mail Send Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68140044870216626)
,p_db_column_name=>'MAIL_SEND_ERROR'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Mail Send Error'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68140446378216626)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68140838156216627)
,p_db_column_name=>'LAST_UPDATED_ON'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Last Updated On'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68141257152216627)
,p_db_column_name=>'MAIL_MESSAGE_CREATED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Mail Message Created'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68141607725216627)
,p_db_column_name=>'MAIL_MESSAGE_CREATED_BY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Mail Message Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(68142055571216842)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'681421'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ID:MAIL_TO:MAIL_FROM:MAIL_REPLYTO:MAIL_SUBJ:MAIL_CC:MAIL_BCC:MAIL_BODY:MAIL_BODY_HTML:MAIL_SEND_COUNT:MAIL_SEND_ERROR:LAST_UPDATED_BY:LAST_UPDATED_ON:MAIL_MESSAGE_CREATED:MAIL_MESSAGE_CREATED_BY'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_api.create_page(
 p_id=>34
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Scheduler Jobs'
,p_page_mode=>'NORMAL'
,p_step_title=>'Scheduler Jobs'
,p_step_sub_title=>'Scheduler Jobs'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150716005138'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68143902827224280)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68144561616224280)
,p_plug_name=>'Scheduler Jobs'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT ',
'D.OWNER JOB_OWNER, D.JOB_NAME, D.JOB_SUBNAME, ',
'   D.JOB_STYLE, D.JOB_CREATOR, D.CLIENT_ID, ',
'   D.GLOBAL_UID, D.PROGRAM_OWNER, D.PROGRAM_NAME, ',
'   D.JOB_TYPE, D.JOB_ACTION, D.NUMBER_OF_ARGUMENTS, ',
'   D.SCHEDULE_OWNER, D.SCHEDULE_NAME, D.SCHEDULE_TYPE, ',
'   D.START_DATE, D.REPEAT_INTERVAL, D.EVENT_QUEUE_OWNER, ',
'   D.EVENT_QUEUE_NAME, D.EVENT_QUEUE_AGENT, D.EVENT_CONDITION, ',
'   D.EVENT_RULE, D.FILE_WATCHER_OWNER, D.FILE_WATCHER_NAME, ',
'   D.END_DATE, D.JOB_CLASS, D.ENABLED, ',
'   D.AUTO_DROP, D.RESTARTABLE, D.STATE, ',
'   D.JOB_PRIORITY, D.RUN_COUNT, D.MAX_RUNS, ',
'   D.FAILURE_COUNT, D.MAX_FAILURES, D.RETRY_COUNT, ',
'   D.LAST_START_DATE, D.LAST_RUN_DURATION, D.NEXT_RUN_DATE, ',
'   D.SCHEDULE_LIMIT, D.MAX_RUN_DURATION, D.LOGGING_LEVEL, ',
'   D.STOP_ON_WINDOW_CLOSE, D.INSTANCE_STICKINESS, D.RAISE_EVENTS, ',
'   D.SYSTEM, D.JOB_WEIGHT, D.NLS_ENV, ',
'   D.SOURCE, D.NUMBER_OF_DESTINATIONS, D.DESTINATION_OWNER, ',
'   D.DESTINATION, D.CREDENTIAL_OWNER, D.CREDENTIAL_NAME, ',
'   D.INSTANCE_ID, D.DEFERRED_DROP, D.ALLOW_RUNS_IN_RESTRICTED_MODE, ',
'   D.COMMENTS, D.FLAGS',
'FROM DBA_SCHEDULER_JOBS D'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(68144634613224280)
,p_name=>'Scheduler Jobs'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68144634613224280
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68145062970224282)
,p_db_column_name=>'JOB_OWNER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Job Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68145406110224282)
,p_db_column_name=>'JOB_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Job Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68145862375224282)
,p_db_column_name=>'JOB_SUBNAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Job Subname'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68146267426224282)
,p_db_column_name=>'JOB_STYLE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Job Style'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68146695463224282)
,p_db_column_name=>'JOB_CREATOR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Job Creator'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68147063063224282)
,p_db_column_name=>'CLIENT_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Client Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68147449044224284)
,p_db_column_name=>'GLOBAL_UID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Global Uid'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68147823522224284)
,p_db_column_name=>'PROGRAM_OWNER'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Program Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68148243466224284)
,p_db_column_name=>'PROGRAM_NAME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Program Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68148663785224284)
,p_db_column_name=>'JOB_TYPE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Job Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68149034422224284)
,p_db_column_name=>'JOB_ACTION'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Job Action'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68149473972224285)
,p_db_column_name=>'NUMBER_OF_ARGUMENTS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Number Of Arguments'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68149840079224285)
,p_db_column_name=>'SCHEDULE_OWNER'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Schedule Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68150203954224285)
,p_db_column_name=>'SCHEDULE_NAME'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Schedule Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68150610110224288)
,p_db_column_name=>'SCHEDULE_TYPE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Schedule Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68151020605224290)
,p_db_column_name=>'START_DATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68151465917224290)
,p_db_column_name=>'REPEAT_INTERVAL'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Repeat Interval'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68151824254224291)
,p_db_column_name=>'EVENT_QUEUE_OWNER'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Event Queue Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68152268685224291)
,p_db_column_name=>'EVENT_QUEUE_NAME'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Event Queue Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68152687333224291)
,p_db_column_name=>'EVENT_QUEUE_AGENT'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Event Queue Agent'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68153085080224293)
,p_db_column_name=>'EVENT_CONDITION'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Event Condition'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68153473119224293)
,p_db_column_name=>'EVENT_RULE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Event Rule'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68153894963224293)
,p_db_column_name=>'FILE_WATCHER_OWNER'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'File Watcher Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68154244206224293)
,p_db_column_name=>'FILE_WATCHER_NAME'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'File Watcher Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68154616146224293)
,p_db_column_name=>'END_DATE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68155073240224295)
,p_db_column_name=>'JOB_CLASS'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Job Class'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68155409823224295)
,p_db_column_name=>'ENABLED'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Enabled'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68155819799224295)
,p_db_column_name=>'AUTO_DROP'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Auto Drop'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68156248267224295)
,p_db_column_name=>'RESTARTABLE'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Restartable'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68156602648224296)
,p_db_column_name=>'STATE'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'State'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68157078663224296)
,p_db_column_name=>'JOB_PRIORITY'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Job Priority'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68157449107224298)
,p_db_column_name=>'RUN_COUNT'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Run Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68157851418224299)
,p_db_column_name=>'MAX_RUNS'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Max Runs'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68158252691224299)
,p_db_column_name=>'FAILURE_COUNT'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Failure Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68158649386224304)
,p_db_column_name=>'MAX_FAILURES'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Max Failures'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68159095714224309)
,p_db_column_name=>'RETRY_COUNT'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Retry Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68159444826224309)
,p_db_column_name=>'LAST_START_DATE'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Last Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68159880226224309)
,p_db_column_name=>'LAST_RUN_DURATION'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Last Run Duration'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68160285354224312)
,p_db_column_name=>'NEXT_RUN_DATE'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Next Run Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68160637307224312)
,p_db_column_name=>'SCHEDULE_LIMIT'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Schedule Limit'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68161350517224312)
,p_db_column_name=>'MAX_RUN_DURATION'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Max Run Duration'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68161718081224313)
,p_db_column_name=>'LOGGING_LEVEL'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Logging Level'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68162154847224315)
,p_db_column_name=>'STOP_ON_WINDOW_CLOSE'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Stop On Window Close'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68162509851224316)
,p_db_column_name=>'INSTANCE_STICKINESS'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Instance Stickiness'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68162977105224316)
,p_db_column_name=>'RAISE_EVENTS'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Raise Events'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68163360541224316)
,p_db_column_name=>'SYSTEM'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'System'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68163724174224318)
,p_db_column_name=>'JOB_WEIGHT'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Job Weight'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68164118245224318)
,p_db_column_name=>'NLS_ENV'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Nls Env'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68164576615224318)
,p_db_column_name=>'SOURCE'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Source'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68164979769224318)
,p_db_column_name=>'NUMBER_OF_DESTINATIONS'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Number Of Destinations'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68165369029224318)
,p_db_column_name=>'DESTINATION_OWNER'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Destination Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68165722878224318)
,p_db_column_name=>'DESTINATION'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Destination'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68166117200224318)
,p_db_column_name=>'CREDENTIAL_OWNER'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Credential Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68166526726224319)
,p_db_column_name=>'CREDENTIAL_NAME'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Credential Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68166939036224319)
,p_db_column_name=>'INSTANCE_ID'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Instance Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68167364427224319)
,p_db_column_name=>'DEFERRED_DROP'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Deferred Drop'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68167718870224319)
,p_db_column_name=>'ALLOW_RUNS_IN_RESTRICTED_MODE'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Allow Runs In Restricted Mode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68168157816224319)
,p_db_column_name=>'COMMENTS'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68168572839224319)
,p_db_column_name=>'FLAGS'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Flags'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(68168991314224555)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'681690'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'JOB_OWNER:JOB_NAME:NUMBER_OF_ARGUMENTS:START_DATE:REPEAT_INTERVAL:END_DATE:JOB_CLASS:ENABLED:AUTO_DROP:RESTARTABLE:STATE:JOB_PRIORITY:RUN_COUNT:MAX_RUNS:FAILURE_COUNT:MAX_FAILURES:RETRY_COUNT:LAST_START_DATE:LAST_RUN_DURATION:NEXT_RUN_DATE:SCHEDULE_L'
||'IMIT:MAX_RUN_DURATION:LOGGING_LEVEL:STOP_ON_WINDOW_CLOSE:INSTANCE_STICKINESS:RAISE_EVENTS:SYSTEM:JOB_WEIGHT:SOURCE:NUMBER_OF_DESTINATIONS:DESTINATION_OWNER:DESTINATION:CREDENTIAL_OWNER:CREDENTIAL_NAME:INSTANCE_ID:DEFERRED_DROP:ALLOW_RUNS_IN_RESTRICTE'
||'D_MODE:COMMENTS:FLAGS'
,p_sort_column_1=>'START_DATE'
,p_sort_direction_1=>'DESC'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(68170466070250325)
,p_report_id=>wwv_flow_api.id(68168991314224555)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'JOB_OWNER'
,p_operator=>'not in'
,p_expr=>'ORACLE_OCM,SYS'
,p_condition_sql=>'"JOB_OWNER" not in (#APXWS_EXPR_VAL1#, #APXWS_EXPR_VAL2#)'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''ORACLE_OCM, SYS''  '
,p_enabled=>'Y'
);
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_api.create_page(
 p_id=>35
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Scheduler Job Log'
,p_page_mode=>'NORMAL'
,p_step_title=>'Scheduler Job Log'
,p_step_sub_title=>'Scheduler Job Log'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150716010337'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67875051570730011)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(67587118660476190)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68172059273261654)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68172650321261655)
,p_plug_name=>'Scheduler Job Log'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT * ',
'FROM DBA_SCHEDULER_JOB_LOG',
'where owner = nvl ( :P35_OWNER, OWNER) ',
'  and job_name = nvl ( :P35_JOB_NAME, JOB_NAME)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(68172796587261655)
,p_name=>'Scheduler Job Log'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68172796587261655
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68173171147261657)
,p_db_column_name=>'LOG_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Log Id'
,p_column_link=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP:P36_LOG_ID:#LOG_ID#'
,p_column_linktext=>'#LOG_ID#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68173511829261657)
,p_db_column_name=>'LOG_DATE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Log Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68173996831261658)
,p_db_column_name=>'OWNER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68174373284261658)
,p_db_column_name=>'JOB_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Job Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68174755823261658)
,p_db_column_name=>'JOB_SUBNAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Job Subname'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68175140279261658)
,p_db_column_name=>'JOB_CLASS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Job Class'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68175512511261658)
,p_db_column_name=>'OPERATION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Operation'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68175962562261660)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68176334618261660)
,p_db_column_name=>'USER_NAME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'User Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68176779921261660)
,p_db_column_name=>'CLIENT_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Client Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68177192908261660)
,p_db_column_name=>'GLOBAL_UID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Global Uid'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68177550550261660)
,p_db_column_name=>'CREDENTIAL_OWNER'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Credential Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68177921257261660)
,p_db_column_name=>'CREDENTIAL_NAME'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Credential Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68178313918261660)
,p_db_column_name=>'DESTINATION_OWNER'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Destination Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68178707478261665)
,p_db_column_name=>'DESTINATION'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Destination'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68179148990261665)
,p_db_column_name=>'ADDITIONAL_INFO'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Additional Info'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(68181514476275558)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'681816'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'LOG_ID:LOG_DATE:OWNER:JOB_NAME:JOB_SUBNAME:JOB_CLASS:OPERATION:STATUS:ADDITIONAL_INFO'
,p_sort_column_1=>'LOG_ID'
,p_sort_direction_1=>'DESC'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67875475362730015)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(67875051570730011)
,p_button_name=>'P34_RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(67607950040476224)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67875391955730014)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(67875051570730011)
,p_button_name=>'P35_OK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(67607950040476224)
,p_button_image_alt=>'Ok'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67875164414730012)
,p_name=>'P35_JOB_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(67875051570730011)
,p_prompt=>'Job name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(67607408339476223)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67875294505730013)
,p_name=>'P35_OWNER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(67875051570730011)
,p_prompt=>'OWNER'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(67607408339476223)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
end;
/
prompt --application/pages/page_00036
begin
wwv_flow_api.create_page(
 p_id=>36
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Scheduler Job Run Details'
,p_page_mode=>'NORMAL'
,p_step_title=>'Scheduler Job Run Details'
,p_step_sub_title=>'Scheduler Job Run Details'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150716010857'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67875556912730016)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody:t-Form--noPadding:t-Form--large:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(67583441075476185)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68183149201296420)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68183738345296422)
,p_plug_name=>'Scheduler Job Run Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67586649206476189)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'SELECT * ',
'FROM dba_scheduler_job_run_details',
'where nvl( :P36_LOG_ID , log_id ) = log_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(68183862240296422)
,p_name=>'Scheduler Job Run Details'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>68183862240296422
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68184227963296422)
,p_db_column_name=>'LOG_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Log Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68184640085296423)
,p_db_column_name=>'LOG_DATE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Log Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68185093395296423)
,p_db_column_name=>'OWNER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68185431183296423)
,p_db_column_name=>'JOB_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Job Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68185848129296423)
,p_db_column_name=>'JOB_SUBNAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Job Subname'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68186275916296428)
,p_db_column_name=>'STATUS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68186639546296428)
,p_db_column_name=>'ERROR#'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Error#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68187028544296429)
,p_db_column_name=>'REQ_START_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Req Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68187492442296429)
,p_db_column_name=>'ACTUAL_START_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Actual Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68187850897296429)
,p_db_column_name=>'RUN_DURATION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Run Duration'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68188291189296431)
,p_db_column_name=>'INSTANCE_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Instance Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68188679638296436)
,p_db_column_name=>'SESSION_ID'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Session Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68189091987296436)
,p_db_column_name=>'SLAVE_PID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Slave Pid'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68189424799296436)
,p_db_column_name=>'CPU_USED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Cpu Used'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68189806955296437)
,p_db_column_name=>'CREDENTIAL_OWNER'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Credential Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68190237459296437)
,p_db_column_name=>'CREDENTIAL_NAME'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Credential Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68190687370296437)
,p_db_column_name=>'DESTINATION_OWNER'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Destination Owner'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68191069628296437)
,p_db_column_name=>'DESTINATION'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Destination'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(68191492492296439)
,p_db_column_name=>'ADDITIONAL_INFO'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Additional Info'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(68193556229305011)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'681936'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'LOG_ID:LOG_DATE:OWNER:JOB_NAME:JOB_SUBNAME:STATUS:ERROR#:REQ_START_DATE:ACTUAL_START_DATE:RUN_DURATION:INSTANCE_ID:SESSION_ID:SLAVE_PID:CPU_USED:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67875887429730019)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(67875556912730016)
,p_button_name=>'P36_RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(67607950040476224)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67875748630730018)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(67875556912730016)
,p_button_name=>'P36_OK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(67607950040476224)
,p_button_image_alt=>'OK'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(67876168561730022)
,p_branch_action=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(67875887429730019)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67875688285730017)
,p_name=>'P36_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(67875556912730016)
,p_prompt=>'Log id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(67607408339476223)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(67876098786730021)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reset'
,p_process_sql_clob=>':P36_LOG_ID := NULL;'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(67875887429730019)
);
end;
/
prompt --application/pages/page_00037
begin
wwv_flow_api.create_page(
 p_id=>37
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Theme Style'
,p_page_mode=>'NORMAL'
,p_step_title=>'Theme Style'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20150719144838'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67876613844730027)
,p_plug_name=>'Theme Style'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(67587118660476190)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68255073173418094)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(67590474734476193)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(67614454121476265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(67608415667476224)
,p_plug_query_row_template=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67877078149730031)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(68255073173418094)
,p_button_name=>'Cancle'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(67607950040476224)
,p_button_image_alt=>'Cancle'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67876960601730030)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(68255073173418094)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(67607950040476224)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(67877256083730033)
,p_branch_action=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67876746343730028)
,p_name=>'P37_DESKTOP_THEME_STYLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(67876613844730027)
,p_prompt=>'Desktop Theme Style'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select s.name d,',
'          s.theme_style_id r',
'from apex_application_theme_styles s, apex_application_themes t',
'where s.application_id = t.application_id',
'and s.theme_number = t.theme_number',
'and s.application_id = :app_id',
'and t.ui_type_name   = ''DESKTOP''',
'and t.is_current = ''Yes''',
'order by 1'))
,p_cHeight=>1
,p_display_when=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select 1',
'from apex_application_theme_styles s, apex_application_themes t',
'where s.application_id = t.application_id',
'and s.theme_number = t.theme_number',
'and s.application_id = :app_id',
'and t.ui_type_name   = ''DESKTOP''',
'and t.is_current = ''Yes'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(67607696560476223)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(67877176829730032)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Theme Style'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'if :P37_DESKTOP_THEME_STYLE is not null then',
'    for c1 in (select theme_number',
'               from apex_application_themes',
'               where application_id = :app_id',
'               and ui_type_name   = ''DESKTOP''',
'               and is_current = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => c1.theme_number,',
'            p_theme_style_id => :P37_DESKTOP_THEME_STYLE',
'            );',
'    end loop;',
'end if;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(67613105901476246)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'APEX ADMIN MONITORING - Log In'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(67572994327476142)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_upd_yyyymmddhh24miss=>'20150715025220'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67613606943476257)
,p_plug_name=>'Log In'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(67587118660476190)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67613997540476260)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(67613606943476257)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(67607950040476224)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67613738885476260)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(67613606943476257)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(67607408339476223)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67613898044476260)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(67613606943476257)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(67607408339476223)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(67614172563476265)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(67614038643476262)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(67614363685476265)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(67614243829476265)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
