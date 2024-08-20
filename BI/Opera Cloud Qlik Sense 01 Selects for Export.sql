SELECT allotment_detail_id
     , allotment_header_id
     , resort
     , allotment_date --6
     , to_sell --8
     , forcasted_to_sell --9
     , elastic --10
     , sold --11
     , elastic_sold --12
     , released -- 13
     , rate_amount_1 --15
     , rate_amount_2
     , rate_amount_3
     , rate_amount_4
     , rate_amount_ap --18
     , contract --24
     , projected_occ1 --25
     , projected_occ2
     , projected_occ3
     , projected_occ4
     , pickup_occ1 --29
     , pickup_occ2
     , pickup_occ3
     , pickup_occ4
     , pickup_rate1 --33
     , pickup_rate2
     , pickup_rate3
     , pickup_rate4
     , contract_occ1 --38
     , contract_occ2
     , contract_occ3
     , contract_occ4
     , insert_date
     , update_date
     , record_type -- 48 ('ALLOTMENT')
FROM allotment$detail
WHERE record_type = 'ALLOTMENT';
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
SELECT resort
     , allotment_header_id
     , allotment_type --('CONTRACT')
     , begin_date
     , end_date
     , description
     , company_name_id -- 11
     , agent_name_id -- 12
     , booking_status -- 17
     , status -- 19
     , inv_cutoff_date -- 21
     , market_code -- 25
     , avg_people_per_room -- 28
     , super_block_id --40
     , currency_code --50
     , rms_owner_code -- 59
     , rms_decision -- 67
     , rms_followup -- 68
     , rms_quote_curr -- 70
     , insert_date -- 140
     , insert_user -- 141
     , update_date
     , leadstatus -- 248
     , fb_agenda_curr --347
FROM allotment$header
WHERE allotment_type = 'CONTRACT';
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
SELECT resort
     , parameter_name
     , parameter_value
     , chain_code
FROM application_parameter_values
WHERE parameter_name IN ('CURRENCY_EXG_PAIDOUT'
                       , 'CASH_SHIFT_DROP'
                       , 'CHECK_TRXCODE'
                       , 'AR_SETTLE_CODE'
                       , 'AR_CREDIT_TRX_CODE'
                       , 'PETTY_CASH');
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

SELECT app_user_id
     , app_user
     , inactive_date -- 11
     , person_name_id -- 19
     , srep_code -- 111
FROM application$_user;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

SELECT resort
     , business_date
     , state
     , insert_date
     , update_date
FROM businessdate;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

SELECT cashier_id, title, resort FROM cashiers$;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

SELECT state_id
     , country_code
     , state_code
     , description
     , chain_code
FROM country_states;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
SELECT country_code
     , country_name
     , region_code
     , iso_code
     , chain_code
FROM country$;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
SELECT begin_date
     , exchange_rate
     , insert_date
     , update_date
     , resort
     , exchange_rate_type
     , base_curr_code
     , currency_code
     , chain_code
FROM currency_exchange_rates;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

SELECT entity_name
     , attribute_code
     , description
     , chain_code
     , insert_date
     , update_date
FROM entity_detail;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

SELECT tax_inclusive_yn -- 6
     , net_amount -- 7
     , gross_amount -- 8
     , cheque_number --9
     , trx_no -- 13
     , resort -- 14
     , ft_subtype -- 15
     , trx_code -- 18
     , trx_no_added_by -- 20
     , trx_date -- 21
     , business_date -- 25
     , room -- 26
     , currency -- 28
     , cashier_id -- 32
     , folio_view -- 33
     , trx_amount -- 39
     , name_id -- 40
     , exchange_rate -- 47
     , product -- 63
     , folio_no -- 71
     , invoice_no -- 72
     , insert_date --74
     , update_date -- 76
     , bill_no -- 85
     , original_resv_name_id -- 125
     , membership_id -- 146
     , exchange_date -- 150
--, tax_rate
--, tax_rate_type
FROM financial_transactions;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
SELECT country, char_code2 FROM iso_country_codes;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

SELECT market_group, description, resort FROM market_groups;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

SELECT name_id -- 1
     , name_code -- 2
     , update_date -- 6
     , mail_list -- 9
     , inactive_date -- 13
     , birth_date -- 16
     , company -- 18
     , FIRST -- 21
     , middle -- 22
     , LAST -- 23
     , title -- 25
     , vip_status -- 28
     , tax1_no -- 36
     , tax2_no -- 42
     , nationality -- 55
     , history_yn -- 59
     , contact_yn -- 61
     , priority -- 64
     , industry_code -- 65
     , territory -- 70
     , actioncode -- 71
     , active_yn -- 72
     , name_type -- 74
     , markets --91
     , account_type -- 99
     , gender -- 108
     , resort_registered --235
     , tax_office -- 236
     , credit_rating -- 248
FROM name;

-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

SELECT address_id
     , name_id
     , address_type
     , insert_date
     , update_date
     , address1
     , address2
     , city
     , country
     , state
     , zip_code
     , primary_yn
     , chain_code
FROM name_address;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

SELECT phone_id
     , name_id
     , phone_type
     , phone_role
     , phone_number
     , insert_date
     , update_date
     , inactive_date
     , address_id
     , primary_yn
     , chain_code
FROM name_phone;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

SELECT name_xref_id
     , name_id
     , relationship_type
     , relation_to_name_id
     , primary_yn
     , insert_date
     , update_date
     , inactive_date
     , resort
FROM name$xref;

-- -------------------------------------------------------------------------- --
-- Full Reload
-- -------------------------------------------------------------------------- --
SELECT rate_category
     , rate_class
     , description
     , chain_code
FROM rate_category_template;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

SELECT resort
     , rate_code
     , description
     , trx_code
     , complimentary_yn
     , house_use_yn
     , insert_date
     , update_date
FROM rate_header;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

SELECT resort
     , resv_name_id
     , reservation_date
     , resv_daily_el_seq
     , travel_agent_id
     , company_id
     , source_id
     , GROUP_ID
     , share_amount
     , adults
     , children
     , children1
     , children2
     , children3
     , children4
     , children5
     , fixed_rate_yn
     , share_priority
     , insert_date
     , update_date
     , rate_code
FROM reservation_daily_element_name;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
SELECT resort
     , reservation_date
     , resv_daily_el_seq
     , resv_status
     , room_class
     , room_category
     , booked_room_category
     , room
     , cancellation_no
     , cancellation_date
     , cancellation_code
     , cancellation_reason_desc
     , guarantee_code
     , market_code
     , origin_of_booking
     , exchange_rate
     , original_base_rate
     , rate_amount
     , quantity
     , adults
     , children
     , physical_quantity
     , allotment_header_id
     , day_use_yn
     , insert_user
     , update_user
     , cribs
     , block_resort
     , block_id
FROM reservation_daily_elements;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

SELECT resort
     , resv_name_id
     , name_id
     , name_usage_type
     , insert_date
     , update_user
     , resv_status
     , commission_code
     , confirmation_no
     , begin_date
     , end_date
     , cancellation_no
     , cancellation_reason_code
     , cancellation_reason_desc
     , cancellation_date
     , guarantee_code
     , trunc_begin_date
     , trunc_end_date
     , event_id
     , channel
     , share_seq_no
FROM reservation_name;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

SELECT resort -- 1
     , business_date -- 2
     , name_id -- 3
     , rate_code -- 4
     , source_code -- 5
     , market_code -- 6
     , room_category -- 7
     , company_id -- 8
     , agent_id -- 9
     , GROUP_ID -- 10
     , source_prof_id -- 11
     , resv_status -- 12
     , trunc_begin_date --13
     , trunc_end_date --14
     , resv_name_id -- 15
     , adults -- 20
     , children -- 21
     , allotment_header_id -- 25
     , room_revenue -- 26
     , total_room_tax -- 30
     , total_revenue -- 33
     , total_tax -- 34
     , room_class -- 39
     , channel -- 49
     , country -- 50
     , nationality -- 52
     , stay_rooms -- 56
     , stay_persons -- 57
     , arr_rooms -- 60
     , arr_persons -- 61
     , dep_rooms --62
     , dep_persons -- 63
     , cancelled_rooms -- 66
     , no_show_rooms -- 68
     , children1 -- 113
     , children2 -- 114
     , children3 -- 115
     , children4 -- 116
     , children5 -- 117
     , insert_date
     , update_date
FROM reservation_stat_daily;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
SELECT resort -- 2
     , event_type -- 3
     , event_id -- 4
     , considered_date -- 5
     , room_category -- 6
     , room_class -- 7
     , market_code -- 8
     , source_code -- 9
     , rate_code -- 10
     , resv_type -- 13
     , resv_inv_type -- 14
     , psuedo_room_yn --  15
     , adults -- 17
     , children --18
     , dep_rooms -- 19
     , no_rooms -- 20
     , net_room_revenue -- 22
     , oo_rooms -- 24 ( event_type='H',considered_date>business_date)
     , os_rooms -- 25 ( event_type='H',considered_date>business_date)
     , arr_rooms -- 31
     , channel -- 40
     , country -- 41
     , nationality --  42
     , total_revenue -- 52
     , allotment_header_id -- 54
     , room_revenue_tax -- 55
     , total_revenue_tax -- 58
     , children1 -- 64
     , children2 -- 65
     , children3 -- 66
     , children4 -- 67
     , children5 -- 68
     , fc_net_room_revenue -- 72
     , fc_total_revenue --  77
     , fc_room_revenue_tax -- 79
     , fc_total_revenue_tax -- 82
     , currency_code -- 84
     , exchange_date -- 85
     , update_date
FROM reservation_summary;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

SELECT resort, currency_code, chain_code FROM resort;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

SELECT status
     , description
     , return_to_inventory
     , chain_code
FROM resort_booking_status;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
SELECT resort
     , source_code
     , parent_source_code
     , description
     , inactive_date
FROM resort_origins_of_booking;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

SELECT resort
     , combination_room_category
     , component_room_category
     , quantity
FROM resort_room_cat_combinations;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

SELECT market_code
     , resort
     , parent_market_code
     , description
FROM resort$_markets;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

SELECT resort
     , room_category
     , room_class
     , number_rooms
     , short_description
     , psuedo_room_type
     , inactive_date
     , label
     , insert_date
     , update_date
     , rate_code
     , pseudo_yn
FROM resort$_room_category;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

SELECT resort
     , room
     , room_category
     , room_class
     , room_status
     , suite_type
     , insert_date
     , update_date
FROM room;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

SELECT resort
     , business_date
     , room_category
     , room_class
     , existing_rooms
     , oo_rooms
     , os_rooms
     , existing_beds
     , oo_beds
     , os_beds
FROM room_category_statistics;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

SELECT tc_group
     , description
     , tc_transaction_type
     , resort
FROM tc$_groups;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --

SELECT resort
     , tc_group
     , tc_subgroup
     , description
     , tc_transaction_type
FROM tc$_subgroups;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --
--DROP TABLE x;
--CREATE TABLE x AS
SELECT resort
     , trx_code
     , tc_group
     , tc_subgroup
     , description
     , trx_code_type
FROM trx$_codes;
-- -------------------------------------------------------------------------- --
--
-- -------------------------------------------------------------------------- --