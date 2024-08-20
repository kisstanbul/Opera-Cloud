-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

CREATE TABLE allotment$detail
(
    allotment_detail_id NUMBER NOT NULL
  , allotment_header_id NUMBER NOT NULL
  , resort VARCHAR2 (20 BYTE) NOT NULL
  , allotment_date DATE NOT NULL
  , to_sell NUMBER
  , forcasted_to_sell NUMBER
  , elastic NUMBER
  , sold NUMBER
  , elastic_sold NUMBER
  , released NUMBER
  , rate_amount_1 NUMBER
  , rate_amount_2 NUMBER
  , rate_amount_3 NUMBER
  , rate_amount_4 NUMBER
  , rate_amount_ap NUMBER
  , contract NUMBER
  , projected_occ1 NUMBER
  , projected_occ2 NUMBER
  , projected_occ3 NUMBER
  , projected_occ4 NUMBER
  , pickup_occ1 NUMBER
  , pickup_occ2 NUMBER
  , pickup_occ3 NUMBER
  , pickup_occ4 NUMBER
  , pickup_rate1 NUMBER
  , pickup_rate2 NUMBER
  , pickup_rate3 NUMBER
  , pickup_rate4 NUMBER
  , contract_occ1 NUMBER
  , contract_occ2 NUMBER
  , contract_occ3 NUMBER
  , contract_occ4 NUMBER
  , insert_date DATE NOT NULL
  , update_date DATE NOT NULL
  , record_type VARCHAR2 (20 BYTE) NOT NULL
);

--
-- ALLOTMENT_DETAIL_PK  (Index)
--
CREATE UNIQUE INDEX allotment_detail_pk
    ON allotment$detail ( allotment_detail_id, allotment_header_id, resort)
    LOGGING
    NOPARALLEL;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE allotment$header
(
    resort VARCHAR2 (20 BYTE) NOT NULL
  , allotment_header_id NUMBER NOT NULL
  , allotment_type VARCHAR2 (20 BYTE) NOT NULL
  , begin_date DATE NOT NULL
  , end_date DATE NOT NULL
  , description VARCHAR2 (2000 BYTE) NOT NULL
  , company_name_id NUMBER
  , agent_name_id NUMBER
  , booking_status VARCHAR2 (10 BYTE) NOT NULL
  , status VARCHAR2 (20 BYTE)
  , inv_cutoff_date DATE
  , market_code VARCHAR2 (20 BYTE)
  , avg_people_per_room NUMBER
  , super_block_id NUMBER (10)
  , currency_code VARCHAR2 (20 BYTE)
  , rms_owner_code VARCHAR2 (10 BYTE)
  , rms_decision DATE
  , rms_followup DATE
  , rms_quote_curr VARCHAR2 (20 BYTE)
  , insert_date DATE NOT NULL
  , insert_user NUMBER NOT NULL
  , update_date DATE NOT NULL
  , leadstatus VARCHAR2 (10 BYTE)
  , fb_agenda_curr VARCHAR2 (20 BYTE)
);
--
-- ALLOTMENT_HEADER_PK  (Index)
--
CREATE UNIQUE INDEX allotment_header_pk
    ON allotment$header ( allotment_header_id, resort)
    LOGGING
    NOPARALLEL;

-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE application_parameter_values
(
    resort VARCHAR2 (20 BYTE) NOT NULL
  , parameter_name VARCHAR2 (80 BYTE) NOT NULL
  , parameter_value VARCHAR2 (2000 BYTE)
  , chain_code VARCHAR2 (20 BYTE) NOT NULL
);
--
-- APP_PARAM_VALUES_PK  (Index)
--
CREATE UNIQUE INDEX app_param_values_pk
    ON application_parameter_values ( parameter_name, resort, chain_code)
    LOGGING
    NOPARALLEL;

-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE application$_user
(
    app_user_id NUMBER NOT NULL
  , app_user VARCHAR2 (256 BYTE) NOT NULL
  , inactive_date DATE
  , person_name_id NUMBER
  , srep_code VARCHAR2 (10 BYTE)
);
--
-- APP_USER_PK  (Index)
--
CREATE UNIQUE INDEX app_user_pk
    ON application$_user ( app_user_id)
    LOGGING
    NOPARALLEL;

-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE businessdate
(
    resort VARCHAR2 (20 BYTE) NOT NULL
  , business_date DATE NOT NULL
  , state VARCHAR2 (20 BYTE) NOT NULL
  , insert_date DATE NOT NULL
  , update_date DATE NOT NULL
);
--
-- BUSINESS_DATE_PK  (Index)
--
CREATE UNIQUE INDEX business_date_pk
    ON businessdate ( resort, business_date)
    LOGGING
    NOPARALLEL;

-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE cashiers$
(
    cashier_id NUMBER NOT NULL
  , title VARCHAR2 (2000 BYTE)
  , resort VARCHAR2 (20 BYTE) NOT NULL
);
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE country_states
(
    state_id NUMBER NOT NULL
  , country_code VARCHAR2 (3 BYTE) NOT NULL
  , state_code VARCHAR2 (20 BYTE) NOT NULL
  , description VARCHAR2 (80 BYTE) NOT NULL
  , chain_code VARCHAR2 (20 BYTE) NOT NULL
);
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE country$
(
    country_code VARCHAR2 (3 BYTE) NOT NULL
  , country_name VARCHAR2 (300 BYTE) NOT NULL
  , region_code VARCHAR2 (3 BYTE)
  , iso_code VARCHAR2 (20 BYTE)
  , chain_code VARCHAR2 (20 BYTE) NOT NULL
);
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE currency_exchange_rates
(
    begin_date DATE NOT NULL
  , exchange_rate NUMBER
  , insert_date DATE NOT NULL
  , update_date DATE NOT NULL
  , resort VARCHAR2 (20 BYTE) NOT NULL
  , exchange_rate_type VARCHAR2 (20 BYTE) NOT NULL
  , base_curr_code VARCHAR2 (20 BYTE) NOT NULL
  , currency_code VARCHAR2 (20 BYTE) NOT NULL
  , chain_code VARCHAR2 (20 BYTE) NOT NULL
);
--
-- CURRENCY_EXCHANGE_RATE_PK  (Index)
--
CREATE UNIQUE INDEX currency_exchange_rate_pk
    ON currency_exchange_rates (
                                resort
                              , base_curr_code
                              , currency_code
                              , exchange_rate_type
                              , begin_date
                              , chain_code
                               )
    LOGGING
    NOPARALLEL;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE entity_detail
(
    entity_name VARCHAR2 (40 BYTE) NOT NULL
  , attribute_code VARCHAR2 (40 BYTE) NOT NULL
  , description VARCHAR2 (2000 BYTE)
  , chain_code VARCHAR2 (20 BYTE) NOT NULL
  , insert_date DATE NOT NULL
  , update_date DATE NOT NULL
);
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE financial_transactions
(
    tax_inclusive_yn VARCHAR2 (1 BYTE)
  , net_amount NUMBER (38, 12)
  , gross_amount NUMBER (38, 12)
  , cheque_number VARCHAR2 (200 BYTE)
  , trx_no NUMBER NOT NULL
  , resort VARCHAR2 (20 BYTE) NOT NULL
  , ft_subtype CHAR (5 BYTE) NOT NULL
  , trx_code VARCHAR2 (20 BYTE) NOT NULL
  , trx_no_added_by NUMBER
  , trx_date DATE NOT NULL
  , business_date DATE NOT NULL
  , room VARCHAR2 (20 BYTE)
  , currency VARCHAR2 (20 BYTE) NOT NULL
  , cashier_id NUMBER
  , folio_view NUMBER (9)
  , trx_amount NUMBER (38, 12)
  , name_id NUMBER
  , exchange_rate NUMBER (38, 12)
  , product VARCHAR2 (20 BYTE)
  , folio_no NUMBER
  , invoice_no NUMBER
  , insert_date DATE NOT NULL
  , update_date DATE NOT NULL
  , bill_no NUMBER
  , original_resv_name_id NUMBER
  , membership_id NUMBER
  , exchange_date DATE
);
--
-- FINT_TRX_FK_I  (Index)
--
CREATE INDEX fint_trx_fk_i
    ON financial_transactions ( resort, trx_code, trx_date)
    LOGGING
    NOPARALLEL;
--
-- FINT_BILL_IND  (Index)
--
CREATE INDEX fint_bill_ind
    ON financial_transactions ( bill_no)
    LOGGING
    NOPARALLEL;
--
-- FINANCIAL_TRANSACTION_PK  (Index)
--
CREATE UNIQUE INDEX financial_transaction_pk
    ON financial_transactions ( trx_no)
    LOGGING
    NOPARALLEL;
--
-- FINT_FINT_ADDED_BY_FK_I  (Index)
--
CREATE INDEX fint_fint_added_by_fk_i
    ON financial_transactions ( trx_no_added_by)
    LOGGING
    NOPARALLEL;

CREATE INDEX fint_update_date_idx
    ON financial_transactions ( update_date)
    LOGGING
    NOPARALLEL;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE iso_country_codes
(
    country VARCHAR2 (80 BYTE) NOT NULL
  , char_code2 VARCHAR2 (2 BYTE) NOT NULL
);
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE market_groups
(
    market_group VARCHAR2 (20 BYTE) NOT NULL
  , description VARCHAR2 (2000 BYTE)
  , resort VARCHAR2 (20 BYTE)
);
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE name
(
    name_id NUMBER NOT NULL
  , name_code VARCHAR2 (20 BYTE)
  , update_date DATE NOT NULL
  , mail_list VARCHAR2 (1 BYTE)
  , inactive_date DATE
  , birth_date DATE
  , company VARCHAR2 (80 BYTE)
  , FIRST VARCHAR2 (40 BYTE)
  , middle VARCHAR2 (40 BYTE)
  , LAST VARCHAR2 (40 BYTE)
  , title VARCHAR2 (40 BYTE)
  , vip_status VARCHAR2 (20 BYTE)
  , tax1_no VARCHAR2 (40 BYTE)
  , tax2_no VARCHAR2 (40 BYTE)
  , nationality VARCHAR2 (20 BYTE)
  , history_yn VARCHAR2 (1 BYTE)
  , contact_yn VARCHAR2 (1 BYTE) NOT NULL
  , priority VARCHAR2 (20 BYTE)
  , industry_code VARCHAR2 (2000 BYTE)
  , territory VARCHAR2 (20 BYTE)
  , actioncode VARCHAR2 (2000 BYTE)
  , active_yn VARCHAR2 (1 BYTE)
  , name_type VARCHAR2 (20 BYTE) NOT NULL
  , markets VARCHAR2 (2000 BYTE)
  , account_type VARCHAR2 (20 BYTE)
  , gender VARCHAR2 (1 BYTE)
  , resort_registered VARCHAR2 (20 BYTE)
  , tax_office VARCHAR2 (30 BYTE)
  , credit_rating VARCHAR2 (20 BYTE)
);
--
-- NAME_COMPANY_IDX  (Index)
--
CREATE INDEX name_company_idx
    ON name ( company)
    LOGGING
    NOPARALLEL;

--
-- NAME_PK  (Index)
--
CREATE UNIQUE INDEX name_pk
    ON name ( name_id)
    LOGGING
    NOPARALLEL;

--
-- NAME_INACTIVE_DATE_IDX  (Index)
--
CREATE INDEX name_inactive_date_idx
    ON name ( inactive_date)
    LOGGING
    NOPARALLEL;
--
-- NAME_INACTIVE_DATE_IDX  (Index)
--
CREATE INDEX name_update_date_idx
    ON name ( update_date)
    LOGGING
    NOPARALLEL;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE name_address
(
    address_id NUMBER NOT NULL
  , name_id NUMBER NOT NULL
  , address_type VARCHAR2 (20 BYTE) NOT NULL
  , insert_date DATE NOT NULL
  , update_date DATE NOT NULL
  , address1 VARCHAR2 (80 BYTE)
  , address2 VARCHAR2 (80 BYTE)
  , city VARCHAR2 (40 BYTE)
  , country VARCHAR2 (20 BYTE)
  , state VARCHAR2 (40 BYTE)
  , zip_code VARCHAR2 (15 BYTE)
  , primary_yn VARCHAR2 (1 BYTE)
  , chain_code VARCHAR2 (20 BYTE)
);
--
-- NAME_ADDRESS_PK  (Index)
--
CREATE UNIQUE INDEX name_address_pk
    ON name_address ( address_id)
    LOGGING
    NOPARALLEL;

--
-- NAME_ADRESS_UNIQUE  (Index)
--
CREATE UNIQUE INDEX name_adress_unique
    ON name_address ( name_id, primary_yn, address_id)
    LOGGING
    NOPARALLEL;

--
-- NAME_INACTIVE_DATE_IDX  (Index)
--
CREATE INDEX name_adress_update_date_idx
    ON name_address ( update_date)
    LOGGING
    NOPARALLEL;

-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE name_phone
(
    phone_id NUMBER NOT NULL
  , name_id NUMBER NOT NULL
  , phone_type VARCHAR2 (20 BYTE)
  , phone_role VARCHAR2 (20 BYTE) NOT NULL
  , phone_number VARCHAR2 (2000 BYTE) NOT NULL
  , insert_date DATE NOT NULL
  , update_date DATE NOT NULL
  , inactive_date DATE
  , address_id NUMBER
  , primary_yn VARCHAR2 (1 BYTE)
  , chain_code VARCHAR2 (20 BYTE)
);
--
-- NAME_PHONE_UNIQUE  (Index)
--
CREATE UNIQUE INDEX name_phone_unique
    ON name_phone ( name_id, phone_id, primary_yn)
    LOGGING
    NOPARALLEL;
--
-- NAME_PHONE_PK  (Index)
--
CREATE UNIQUE INDEX name_phone_pk
    ON name_phone ( phone_id)
    LOGGING
    NOPARALLEL;

--
--
--
CREATE INDEX name_phone_update_date_idx
    ON name_phone ( update_date)
    LOGGING
    NOPARALLEL;

-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE name$xref
(
    name_xref_id NUMBER NOT NULL
  , name_id NUMBER NOT NULL
  , relationship_type VARCHAR2 (20 BYTE) NOT NULL
  , relation_to_name_id NUMBER NOT NULL
  , primary_yn VARCHAR2 (1 BYTE)
  , insert_date DATE NOT NULL
  , update_date DATE NOT NULL
  , inactive_date DATE
  , resort VARCHAR2 (20 BYTE)
);
--
-- NAME_XREF_N2  (Index)
--
CREATE INDEX name_xref_n2
    ON name$xref ( name_id)
    LOGGING
    NOPARALLEL;

--
--

CREATE INDEX name_xref_phone_update_date_idx
    ON name$xref ( update_date)
    LOGGING
    NOPARALLEL;

-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

CREATE TABLE rate_category_template
(
    rate_category VARCHAR2 (20 BYTE) NOT NULL
  , rate_class VARCHAR2 (20 BYTE) NOT NULL
  , description VARCHAR2 (2000 BYTE) NOT NULL
  , chain_code VARCHAR2 (20 BYTE) NOT NULL
);

-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

CREATE TABLE rate_header
(
    resort VARCHAR2 (20 BYTE) NOT NULL
  , rate_code VARCHAR2 (20 BYTE) NOT NULL
  , description VARCHAR2 (2000 BYTE)
  , trx_code VARCHAR2 (20 BYTE)
  , complimentary_yn VARCHAR2 (1 BYTE)
  , house_use_yn VARCHAR2 (1 BYTE)
  , insert_date DATE NOT NULL
  , update_date DATE NOT NULL
);

--
-- RATE_HEADER_PKEY  (Index)
--
CREATE UNIQUE INDEX rate_header_pkey
    ON rate_header ( resort, rate_code)
    LOGGING
    NOPARALLEL
    REVERSE;
--
--

CREATE INDEX rate_header_update_date_idx
    ON rate_header ( update_date)
    LOGGING
    NOPARALLEL;

-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE reservation_daily_element_name
(
    resort VARCHAR2 (20 BYTE) NOT NULL
  , resv_name_id NUMBER NOT NULL
  , reservation_date DATE NOT NULL
  , resv_daily_el_seq NUMBER
  , travel_agent_id NUMBER
  , company_id NUMBER
  , source_id NUMBER
  , GROUP_ID NUMBER
  , share_amount NUMBER
  , adults NUMBER
  , children NUMBER
  , children1 NUMBER
  , children2 NUMBER
  , children3 NUMBER
  , children4 NUMBER
  , children5 NUMBER
  , fixed_rate_yn VARCHAR2 (1 BYTE)
  , share_priority NUMBER
  , insert_date DATE NOT NULL
  , update_date DATE NOT NULL
  , rate_code VARCHAR2 (20 BYTE)
);
--
-- RESV_DAILY_ELEMENT_NAME_PK  (Index)
--
CREATE UNIQUE INDEX resv_daily_element_name_pk
    ON reservation_daily_element_name ( resort, resv_name_id, reservation_date)
    LOGGING
    NOPARALLEL;
--
-- RESV_DAILY_ELEMENT_NAME_IND1  (Index)
--
CREATE INDEX resv_daily_element_name_ind1
    ON reservation_daily_element_name (
                                       resort
                                     , resv_daily_el_seq
                                     , reservation_date
                                     , resv_name_id
                                      )
    LOGGING
    NOPARALLEL;
--
--

CREATE INDEX resv_daily_element_name_update_date_idx
    ON reservation_daily_element_name ( update_date)
    LOGGING
    NOPARALLEL;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE reservation_daily_elements
(
    resort VARCHAR2 (20 BYTE) NOT NULL
  , reservation_date DATE NOT NULL
  , resv_daily_el_seq NUMBER NOT NULL
  , resv_status VARCHAR2 (20 BYTE) NOT NULL
  , room_class VARCHAR2 (20 BYTE)
  , room_category VARCHAR2 (20 BYTE)
  , booked_room_category VARCHAR2 (20 BYTE) NOT NULL
  , room VARCHAR2 (20 BYTE)
  , cancellation_no NUMBER
  , cancellation_date DATE
  , cancellation_code VARCHAR2 (20 BYTE)
  , cancellation_reason_desc VARCHAR2 (2000 BYTE)
  , guarantee_code VARCHAR2 (20 BYTE)
  , market_code VARCHAR2 (20 BYTE)
  , origin_of_booking VARCHAR2 (20 BYTE)
  , exchange_rate NUMBER
  , original_base_rate NUMBER
  , rate_amount NUMBER
  , quantity NUMBER
  , adults NUMBER
  , children NUMBER
  , physical_quantity NUMBER
  , allotment_header_id NUMBER
  , day_use_yn VARCHAR2 (1 BYTE)
  , insert_user NUMBER NOT NULL
  , update_user NUMBER NOT NULL
  , cribs NUMBER
  , block_resort VARCHAR2 (20 BYTE)
  , block_id NUMBER
);
--
-- RESERVATION_DAILY_ELEMENTS_PK  (Index)
--
CREATE UNIQUE INDEX reservation_daily_elements_pk
    ON reservation_daily_elements ( resort, reservation_date, resv_daily_el_seq)
    LOGGING
    NOPARALLEL;
--
--

CREATE INDEX reservation_daily_elements_update_date_idx
    ON reservation_daily_elements ( update_date)
    LOGGING
    NOPARALLEL;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE reservation_name
(
    resort VARCHAR2 (20 BYTE) NOT NULL
  , resv_name_id NUMBER NOT NULL
  , name_id NUMBER NOT NULL
  , name_usage_type VARCHAR2 (20 BYTE) NOT NULL
  , insert_date DATE NOT NULL
  , update_user NUMBER NOT NULL
  , resv_status VARCHAR2 (20 BYTE) NOT NULL
  , commission_code VARCHAR2 (20 BYTE)
  , confirmation_no VARCHAR2 (50 BYTE)
  , begin_date DATE
  , end_date DATE
  , cancellation_no VARCHAR2 (50 BYTE)
  , cancellation_reason_code VARCHAR2 (20 BYTE)
  , cancellation_reason_desc VARCHAR2 (2000 BYTE)
  , cancellation_date DATE
  , guarantee_code VARCHAR2 (20 BYTE)
  , trunc_begin_date DATE
  , trunc_end_date DATE
  , event_id NUMBER
  , channel VARCHAR2 (40 BYTE)
  , share_seq_no NUMBER
);
--
-- RESERVATION_NAME_PK  (Index)
--
CREATE UNIQUE INDEX reservation_name_pk
    ON reservation_name ( resort, resv_name_id)
    LOGGING
    NOPARALLEL;
--
-- RESERVATION_NAME_IND4  (Index)
--
CREATE INDEX reservation_name_ind4
    ON reservation_name ( resort, name_id)
    LOGGING
    NOPARALLEL;
--
-- RESERVATION_NAME_IND9  (Index)
--
CREATE INDEX reservation_name_ind9
    ON reservation_name (
                         trunc_end_date
                       , trunc_begin_date
                       , resv_status
                       , resort
                        )
    LOGGING
    NOPARALLEL;
--
--

CREATE INDEX reservation_name_update_date_idx
    ON reservation_name ( update_date)
    LOGGING
    NOPARALLEL;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE reservation_stat_daily
(
    resort VARCHAR2 (20 BYTE)
  , business_date DATE
  , name_id NUMBER
  , rate_code VARCHAR2 (20 BYTE)
  , source_code VARCHAR2 (20 BYTE)
  , market_code VARCHAR2 (20 BYTE)
  , room_category VARCHAR2 (20 BYTE)
  , company_id NUMBER
  , agent_id NUMBER
  , GROUP_ID NUMBER
  , source_prof_id NUMBER
  , resv_status VARCHAR2 (20 BYTE)
  , trunc_begin_date DATE
  , trunc_end_date DATE
  , resv_name_id NUMBER
  , adults NUMBER
  , children NUMBER
  , allotment_header_id NUMBER
  , room_revenue NUMBER (38, 12)
  , total_room_tax NUMBER (38, 12)
  , total_revenue NUMBER (38, 12)
  , total_tax NUMBER (38, 12)
  , room_class VARCHAR2 (20 BYTE)
  , channel VARCHAR2 (40 BYTE)
  , country VARCHAR2 (20 BYTE)
  , nationality VARCHAR2 (20 BYTE)
  , stay_rooms NUMBER
  , stay_persons NUMBER
  , arr_rooms NUMBER
  , arr_persons NUMBER
  , dep_rooms NUMBER
  , dep_persons NUMBER
  , cancelled_rooms NUMBER
  , no_show_rooms NUMBER
  , children1 NUMBER
  , children2 NUMBER
  , children3 NUMBER
  , children4 NUMBER
  , children5 NUMBER
  , insert_date DATE
  , update_date DATE
);
--
-- RESERVATION_STAT_DAILY_IND12  (Index)
--
CREATE INDEX reservation_stat_daily_ind12
    ON reservation_stat_daily ( update_date, resort)
    LOGGING
    NOPARALLEL;

--
-- RESERVATION_STAT_DAILY_IND8  (Index)
--
CREATE INDEX reservation_stat_daily_ind8
    ON reservation_stat_daily ( allotment_header_id, resort, business_date)
    LOGGING
    NOPARALLEL;

--
-- RESERVATION_STAT_DAILY_IND1  (Index)
--
CREATE INDEX reservation_stat_daily_ind1
    ON reservation_stat_daily ( resort, resv_name_id, business_date)
    LOGGING
    NOPARALLEL;

--
-- RESERVATION_STAT_DAILY_IND3  (Index)
--
CREATE INDEX reservation_stat_daily_ind3
    ON reservation_stat_daily ( name_id, resort, business_date)
    LOGGING
    NOPARALLEL;

-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE reservation_summary
(
    resort VARCHAR2 (20 BYTE) NOT NULL
  , event_type VARCHAR2 (1 BYTE) NOT NULL
  , event_id VARCHAR2 (20 BYTE) NOT NULL
  , considered_date DATE
  , room_category VARCHAR2 (20 BYTE)
  , room_class VARCHAR2 (20 BYTE)
  , market_code VARCHAR2 (20 BYTE)
  , source_code VARCHAR2 (20 BYTE)
  , rate_code VARCHAR2 (20 BYTE)
  , resv_type VARCHAR2 (1 BYTE)
  , resv_inv_type VARCHAR2 (1 BYTE)
  , psuedo_room_yn VARCHAR2 (1 BYTE)
  , adults NUMBER
  , children NUMBER
  , dep_rooms NUMBER
  , no_rooms NUMBER
  , net_room_revenue NUMBER
  , oo_rooms NUMBER
  , os_rooms NUMBER
  , arr_rooms NUMBER
  , channel VARCHAR2 (40 BYTE)
  , country VARCHAR2 (20 BYTE)
  , nationality VARCHAR2 (20 BYTE)
  , total_revenue NUMBER (38, 12)
  , allotment_header_id NUMBER
  , room_revenue_tax NUMBER
  , total_revenue_tax NUMBER
  , children1 NUMBER
  , children2 NUMBER
  , children3 NUMBER
  , children4 NUMBER
  , children5 NUMBER
  , fc_net_room_revenue NUMBER (38, 12)
  , fc_total_revenue NUMBER (38, 12)
  , fc_room_revenue_tax NUMBER (38, 12)
  , fc_total_revenue_tax NUMBER (38, 12)
  , currency_code VARCHAR2 (20 BYTE)
  , exchange_date DATE
  , update_date DATE
);

--
-- RESV_SUMMARY_UPDBUSDATE_IDX  (Index)
--
CREATE INDEX resv_summary_considereddate_idx
    ON reservation_summary ( considered_date, resort)
    LOGGING
    NOPARALLEL;
--
--
--
CREATE INDEX resv_summary_updatedate_idx
    ON reservation_summary ( update_date, resort)
    LOGGING
    NOPARALLEL;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE resort
(
    resort VARCHAR2 (20 BYTE) NOT NULL
  , currency_code VARCHAR2 (20 BYTE)
  , chain_code VARCHAR2 (20 BYTE)
);
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE resort_booking_status
(
    status VARCHAR2 (10 BYTE) NOT NULL
  , description VARCHAR2 (20 BYTE)
  , return_to_inventory VARCHAR2 (2 BYTE)
  , chain_code VARCHAR2 (20 BYTE) NOT NULL
);
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE resort_origins_of_booking
(
    resort VARCHAR2 (20 BYTE) NOT NULL
  , source_code VARCHAR2 (20 BYTE) NOT NULL
  , parent_source_code VARCHAR2 (20 BYTE)
  , description VARCHAR2 (2000 BYTE)
  , inactive_date DATE
);
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE resort_room_cat_combinations
(
    resort VARCHAR2 (20 BYTE) NOT NULL
  , combination_room_category VARCHAR2 (20 BYTE) NOT NULL
  , component_room_category VARCHAR2 (20 BYTE) NOT NULL
  , quantity NUMBER NOT NULL
);
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE resort$_markets
(
    market_code VARCHAR2 (20 BYTE) NOT NULL
  , resort VARCHAR2 (20 BYTE) NOT NULL
  , parent_market_code VARCHAR2 (20 BYTE)
  , description VARCHAR2 (2000 BYTE)
);
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE resort$_room_category
(
    resort VARCHAR2 (20 BYTE) NOT NULL
  , room_category VARCHAR2 (20 BYTE) NOT NULL
  , room_class VARCHAR2 (20 BYTE) NOT NULL
  , number_rooms NUMBER NOT NULL
  , short_description VARCHAR2 (2000 BYTE)
  , psuedo_room_type VARCHAR2 (20 BYTE)
  , inactive_date DATE
  , label VARCHAR2 (20 BYTE) NOT NULL
  , insert_date DATE NOT NULL
  , update_date DATE NOT NULL
  , rate_code VARCHAR2 (20 BYTE)
  , pseudo_yn VARCHAR2 (1 BYTE)
);
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE room
(
    resort VARCHAR2 (20 BYTE) NOT NULL
  , room VARCHAR2 (20 BYTE) NOT NULL
  , room_category VARCHAR2 (20 BYTE) NOT NULL
  , room_class VARCHAR2 (20 BYTE) NOT NULL
  , room_status VARCHAR2 (20 BYTE) NOT NULL
  , suite_type VARCHAR2 (20 BYTE)
  , insert_date DATE NOT NULL
  , update_date DATE NOT NULL
);
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE room_category_statistics
(
    resort VARCHAR2 (20 BYTE) NOT NULL
  , business_date DATE NOT NULL
  , room_category VARCHAR2 (20 BYTE) NOT NULL
  , room_class VARCHAR2 (20 BYTE) NOT NULL
  , existing_rooms NUMBER NOT NULL
  , oo_rooms NUMBER
  , os_rooms NUMBER
  , existing_beds NUMBER
  , oo_beds NUMBER
  , os_beds NUMBER
);
--
-- ROOM_CATEGORY_STATISTICS_PK  (Index)
--
CREATE UNIQUE INDEX room_category_statistics_pk
    ON room_category_statistics ( resort, business_date, room_category)
    LOGGING
    NOPARALLEL;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE tc$_groups
(
    tc_group VARCHAR2 (20 BYTE) NOT NULL
  , description VARCHAR2 (2000 BYTE)
  , tc_transaction_type CHAR (5 BYTE) NOT NULL
  , resort VARCHAR2 (20 BYTE) NOT NULL
);
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE tc$_subgroups
(
    resort VARCHAR2 (20 BYTE) NOT NULL
  , tc_group VARCHAR2 (20 BYTE) NOT NULL
  , tc_subgroup VARCHAR2 (20 BYTE) NOT NULL
  , description VARCHAR2 (2000 BYTE)
  , tc_transaction_type CHAR (5 BYTE) NOT NULL
);
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
CREATE TABLE trx$_codes
(
    resort VARCHAR2 (20 BYTE) NOT NULL
  , trx_code VARCHAR2 (20 BYTE) NOT NULL
  , tc_group VARCHAR2 (20 BYTE) NOT NULL
  , tc_subgroup VARCHAR2 (20 BYTE) NOT NULL
  , description VARCHAR2 (2000 BYTE)
  , trx_code_type VARCHAR2 (2 BYTE)
);
--
-- TRX$_CODES_PK  (Index)
--
CREATE UNIQUE INDEX trx$_codes_pk
    ON trx$_codes ( resort, trx_code)
    LOGGING
    NOPARALLEL;

-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --