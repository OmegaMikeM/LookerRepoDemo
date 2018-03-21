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

  dimension: case_status {
    type: string
    sql: ${TABLE}.CASE_STATUS ;;
  }

  dimension: cv_address_dsh {
    group_label: "CV Fields"
    label: "Address"
    type: string
    sql: ${TABLE}.CV_ADDRESS_DSH ;;
  }

  dimension: cv_legend {
    group_label: "CV Fields"
    label: "Legend"
    type: string
    sql: ${TABLE}.CV_LEGEND ;;
    link: {
      label:"Filter Dashboard"
      url:"/dashboards/1?Incident%20Type={{value}}"
    }
  }

  dimension: is_vandalism {
    type: yesno
    sql: ${cv_legend} = 'VANDALISM';;
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
    label: "Domestic Violence"
    type: string
    sql: ${TABLE}.DOM_VIOL ;;
  }

  dimension: em_division {
    group_label: "EM Fields"
    type: string
    sql: ${TABLE}.EM_DIVISION ;;
  }

  dimension: em_section {
    group_label: "EM Fields"
    type: string
    sql: ${TABLE}.EM_SECTION ;;
  }

  dimension: em_shift {
    group_label: "EM Fields"
    type: string
    sql: ${TABLE}.EM_SHIFT ;;
  }

  dimension: em_unit {
    group_label: "EM Fields"
    type: string
    sql: ${TABLE}.EM_UNIT ;;
  }

  dimension_group: end_datetime {
    label: "End"
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

  dimension: shift {
    type: string
    case: {
      when: { label: "Morning" sql: ${end_datetime_hour_of_day} BETWEEN 4 AND 10 }
      when: { label: "Afternoon" sql: ${end_datetime_hour_of_day} BETWEEN 10 AND 16 }
      when: { label: "Evening" sql: ${end_datetime_hour_of_day} BETWEEN 16 AND 22 }
      else: "Graveyard"
    }
  }

  dimension: gang_related {
    type: string
    sql: ${TABLE}.GANG_RELATED ;;
  }

  dimension: iw_geo_name {
    group_label: "IW Fields"
    label: "IW Geo Name"
    type: string
    sql: ${TABLE}.iwGeoName ;;
  }

  dimension_group: iw_inserted {
    group_label: "IW Fields"
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
    group_label: "IW Fields"
    type: number
    sql: ${TABLE}.iwStep ;;
  }

  dimension_group: iw_updated {
    group_label: "IW Fields"
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

  dimension_group: occur_datetime {
    label: "Occur"
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
    group_label: "Descriptions"
    type: string
    sql: ${TABLE}.OFFENSE_DESC ;;
  }

  dimension: officer_name {
    type: string
    sql: ${TABLE}.OFFICER_NAME ;;
  }

  dimension: premise {
    type: string
    sql: ${TABLE}.PREMISE ;;
  }

  dimension: premise_desc {
    label: "Premise Description"
    group_label: "Descriptions"
    type: string
    sql: ${TABLE}.PREMISE_DESC ;;
  }

  dimension_group: report_datetime {
    label: "Report"
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

  dimension: side {
    type: string
    sql: ${TABLE}.Side ;;
  }

  dimension_group: split_datetime {
    label: "Split"
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
    group_label: "Descriptions"
    type: string
    sql: ${TABLE}.UCR_DESCRIPTION ;;
  }

  dimension: weapon_code {
    type: string
    sql: ${TABLE}.WEAPON_CODE ;;
  }

  dimension: weapon_desc {
    label: "Weapon Description"
    group_label: "Descriptions"
    type: string
    sql: ${TABLE}.WEAPON_DESC ;;
  }

  dimension: x {
    group_label: "Location / Geometry"
    type: number
    sql: ${TABLE}.X ;;
  }

  dimension: y {
    group_label: "Location / Geometry"
    type: number
    sql: ${TABLE}.Y ;;
  }

  dimension: location {
    group_label: "Location / Geometry"
    type: location
    sql_latitude: ${latitude_text} ;;
    sql_longitude: ${longitude_text} ;;
  }

  dimension: zone_ {
    label: "Zone"
    type: string
    sql: ${TABLE}.ZONE_ ;;
  }

  measure: count {
    type: count
    drill_fields: [business_name, officer_name, iw_geo_name]
  }

  measure: count_zones {
    type: count_distinct
    sql: ${zone_} ;;
    drill_fields: [end_date, business_name, officer_name, iw_geo_name]
  }

  ## HIDDEN FIELDS

  dimension: case_id {
    hidden: yes
    type: string
    sql: ${TABLE}.CASE_ID ;;
  }

  dimension: cv_occur_date {
    hidden: yes
    group_label: "CV Fields"
    type: number
    sql: ${TABLE}.CV_OCCUR_DATE ;;
  }

  dimension: cv_occur_dow {
    hidden: yes
    type: number
    sql: ${TABLE}.CV_OCCUR_DOW ;;
  }

  dimension: cv_occur_time {
    hidden: yes
    type: string
    sql: ${TABLE}.CV_OCCUR_TIME ;;
  }

  dimension: cv_report_date {
    hidden: yes
    type: number
    sql: ${TABLE}.CV_REPORT_DATE ;;
  }

  dimension: cv_report_dow {
    hidden: yes
    type: number
    sql: ${TABLE}.CV_REPORT_DOW ;;
  }

  dimension: cv_report_time {
    hidden: yes
    type: string
    sql: ${TABLE}.CV_REPORT_TIME ;;
  }

  dimension: cv_split_date {
    hidden: yes
    type: number
    sql: ${TABLE}.CV_SPLIT_DATE ;;
  }

  dimension: cv_split_dow {
    hidden: yes
    type: number
    sql: ${TABLE}.CV_SPLIT_DOW ;;
  }

  dimension: cv_split_time {
    hidden: yes
    type: string
    sql: ${TABLE}.CV_SPLIT_TIME ;;
  }

  dimension: cv_to_date {
    hidden: yes
    type: number
    sql: ${TABLE}.CV_TO_DATE ;;
  }

  dimension: cv_to_dow {
    hidden: yes
    type: number
    sql: ${TABLE}.CV_TO_DOW ;;
  }

  dimension: cv_to_time {
    hidden: yes
    type: string
    sql: ${TABLE}.CV_TO_TIME ;;
  }

  dimension: latitude_text {
    hidden: yes
    type: string
    sql: ${TABLE}.Latitude_Text ;;
  }

  dimension: longitude_text {
    hidden: yes
    type: string
    sql: ${TABLE}.Longitude_Text ;;
  }

  dimension: object_id_1 {
    hidden: yes
    type: number
    sql: ${TABLE}.ObjectID_1 ;;
  }

  dimension: objectid {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}.OBJECTID ;;
  }

  dimension: person_id {
    hidden: yes
    type: number
    sql: ${TABLE}.PERSON_ID ;;
  }

  dimension: person_id_link {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}.PERSON_ID_LINK ;;
  }

  dimension: primary_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.PRIMARY_KEY ;;
  }

  dimension: shape {
    group_label: "Location / Geometry"
    hidden: yes
    type: string
    sql: ${TABLE}.Shape ;;
  }

  dimension: shape_to_string {
    group_label: "Location / Geometry"
    hidden: yes
    type: string
    sql: ${TABLE}.Shape,ToString() ;;
  }

}
