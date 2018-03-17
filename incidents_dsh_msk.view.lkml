view: incidents_dsh_msk {
  sql_table_name: DEMO_GIS_Greensboro_PD_NC.INCIDENTS_DSH_MSK ;;

  dimension: agency {
    type: string
    sql: ${TABLE}.AGENCY ;;
  }

  dimension: apt {
    type: string
    sql: ${TABLE}.APT ;;
  }

  dimension: business_name {
    type: string
    sql: ${TABLE}.BUSINESS_NAME ;;
  }

  dimension: case_id {
    type: string
    sql: ${TABLE}.CASE_ID ;;
  }

  dimension: case_status {
    type: string
    sql: ${TABLE}.CASE_STATUS ;;
  }

  dimension: cv_address_dsh {
    type: string
    sql: ${TABLE}.CV_ADDRESS_DSH ;;
  }

  dimension: cv_legend {
    type: string
    sql: ${TABLE}.CV_LEGEND ;;
  }

  dimension: is_vandalism {
    type: yesno
    sql: ${cv_legend} = 'VANDALISM';;
  }

  dimension: cv_occur_date {
    type: number
    sql: ${TABLE}.CV_OCCUR_DATE ;;
  }

  dimension: cv_occur_dow {
    type: number
    sql: ${TABLE}.CV_OCCUR_DOW ;;
  }

  dimension: cv_occur_time {
    type: string
    sql: ${TABLE}.CV_OCCUR_TIME ;;
  }

  dimension: cv_report_date {
    type: number
    sql: ${TABLE}.CV_REPORT_DATE ;;
  }

  dimension: cv_report_dow {
    type: number
    sql: ${TABLE}.CV_REPORT_DOW ;;
  }

  dimension: cv_report_time {
    type: string
    sql: ${TABLE}.CV_REPORT_TIME ;;
  }

  dimension: cv_split_date {
    type: number
    sql: ${TABLE}.CV_SPLIT_DATE ;;
  }

  dimension: cv_split_dow {
    type: number
    sql: ${TABLE}.CV_SPLIT_DOW ;;
  }

  dimension: cv_split_time {
    type: string
    sql: ${TABLE}.CV_SPLIT_TIME ;;
  }

  dimension: cv_to_date {
    type: number
    sql: ${TABLE}.CV_TO_DATE ;;
  }

  dimension: cv_to_dow {
    type: number
    sql: ${TABLE}.CV_TO_DOW ;;
  }

  dimension: cv_to_time {
    type: string
    sql: ${TABLE}.CV_TO_TIME ;;
  }

  dimension: disp_code {
    type: string
    sql: ${TABLE}.DISP_CODE ;;
  }

  dimension: disposition {
    type: string
    sql: ${TABLE}.DISPOSITION ;;
  }

  dimension: district {
    type: string
    sql: ${TABLE}.DISTRICT ;;
  }

  dimension: dom_viol {
    type: string
    sql: ${TABLE}.DOM_VIOL ;;
  }

  dimension: em_division {
    type: string
    sql: ${TABLE}.EM_DIVISION ;;
  }

  dimension: em_section {
    type: string
    sql: ${TABLE}.EM_SECTION ;;
  }

  dimension: em_shift {
    type: string
    sql: ${TABLE}.EM_SHIFT ;;
  }

  dimension: em_unit {
    type: string
    sql: ${TABLE}.EM_UNIT ;;
  }

  dimension_group: end_datetime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      hour_of_day,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.END_DATETIME ;;
  }

  dimension: gang_related {
    type: string
    sql: ${TABLE}.GANG_RELATED ;;
  }

  dimension: iw_geo_name {
    type: string
    sql: ${TABLE}.iwGeoName ;;
  }

  dimension_group: iw_inserted {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.iwInserted ;;
  }

  dimension: iw_step {
    type: number
    sql: ${TABLE}.iwStep ;;
  }

  dimension_group: iw_updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.iwUpdated ;;
  }

  dimension: latitude_text {
    type: string
    sql: ${TABLE}.Latitude_Text ;;
  }

  dimension: longitude_text {
    type: string
    sql: ${TABLE}.Longitude_Text ;;
  }

  dimension: object_id_1 {
    type: number
    sql: ${TABLE}.ObjectID_1 ;;
  }

  dimension: objectid {
    type: number
    value_format_name: id
    sql: ${TABLE}.OBJECTID ;;
  }

  dimension_group: occur_datetime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.OCCUR_DATETIME ;;
  }

  dimension: offense_code {
    type: string
    sql: ${TABLE}.OFFENSE_CODE ;;
  }

  dimension: offense_desc {
    type: string
    sql: ${TABLE}.OFFENSE_DESC ;;
  }

  dimension: officer_name {
    type: string
    sql: ${TABLE}.OFFICER_NAME ;;
  }

  dimension: person_id {
    type: number
    sql: ${TABLE}.PERSON_ID ;;
  }

  dimension: person_id_link {
    type: number
    value_format_name: id
    sql: ${TABLE}.PERSON_ID_LINK ;;
  }

  dimension: premise {
    type: string
    sql: ${TABLE}.PREMISE ;;
  }

  dimension: premise_desc {
    type: string
    sql: ${TABLE}.PREMISE_DESC ;;
  }

  dimension: primary_key {
    type: string
    sql: ${TABLE}.PRIMARY_KEY ;;
  }

  dimension_group: report_datetime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.REPORT_DATETIME ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.Score ;;
  }

  dimension: shape {
    type: string
    sql: ${TABLE}.Shape ;;
  }

  dimension: side {
    type: string
    sql: ${TABLE}.Side ;;
  }

  dimension_group: split_datetime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SPLIT_DATETIME ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: tract {
    type: string
    sql: ${TABLE}.TRACT ;;
  }

  dimension: ucr_code {
    type: string
    sql: ${TABLE}.UCR_CODE ;;
  }

  dimension: ucr_description {
    type: string
    sql: ${TABLE}.UCR_DESCRIPTION ;;
  }

  dimension: weapon_code {
    type: string
    sql: ${TABLE}.WEAPON_CODE ;;
  }

  dimension: weapon_desc {
    type: string
    sql: ${TABLE}.WEAPON_DESC ;;
  }

  dimension: x {
    type: number
    sql: ${TABLE}.X ;;
  }

  dimension: y {
    type: number
    sql: ${TABLE}.Y ;;
  }

  dimension: zone_ {
    type: string
    sql: ${TABLE}.ZONE_ ;;
  }

  measure: count {
    type: count
    drill_fields: [business_name, officer_name, iw_geo_name]
  }
}
