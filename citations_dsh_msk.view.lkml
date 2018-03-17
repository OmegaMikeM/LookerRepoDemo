view: citations_dsh_msk {
  sql_table_name: DEMO_GIS_Greensboro_PD_NC.CITATIONS_DSH_MSK ;;

  dimension: age {
    type: string
    sql: ${TABLE}.AGE ;;
  }

  dimension: apt {
    type: string
    sql: ${TABLE}.APT ;;
  }

  dimension: charge_desc {
    type: string
    sql: ${TABLE}.CHARGE_DESC ;;
  }

  dimension_group: cite {
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
    sql: ${TABLE}.CITE_DATE ;;
  }

  dimension: cite_name {
    type: string
    sql: ${TABLE}.CITE_NAME ;;
  }

  dimension: cite_number {
    type: string
    sql: ${TABLE}.CITE_NUMBER ;;
  }

  dimension: cv_address_dsh {
    type: string
    sql: ${TABLE}.CV_ADDRESS_DSH ;;
  }

  dimension: cv_cite_date {
    type: number
    sql: ${TABLE}.CV_CITE_DATE ;;
  }

  dimension: cv_cite_dow {
    type: number
    sql: ${TABLE}.CV_CITE_DOW ;;
  }

  dimension: cv_cite_time {
    type: string
    sql: ${TABLE}.CV_CITE_TIME ;;
  }

  dimension: cv_legend {
    type: string
    sql: ${TABLE}.CV_LEGEND ;;
  }

  dimension: district {
    type: string
    sql: ${TABLE}.DISTRICT ;;
  }

  dimension_group: dob {
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
    sql: ${TABLE}.DOB ;;
  }

  dimension: dr_lic {
    type: string
    sql: ${TABLE}.DR_LIC ;;
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

  dimension: ethnicity {
    type: string
    sql: ${TABLE}.ETHNICITY ;;
  }

  dimension: eye {
    type: string
    sql: ${TABLE}.EYE ;;
  }

  dimension: hair {
    type: string
    sql: ${TABLE}.HAIR ;;
  }

  dimension: height {
    type: string
    sql: ${TABLE}.HEIGHT ;;
  }

  dimension: highest_charge {
    type: string
    sql: ${TABLE}.HIGHEST_CHARGE ;;
  }

  dimension: incident_num {
    type: string
    sql: ${TABLE}.INCIDENT_NUM ;;
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

  dimension: object_id_1 {
    type: number
    sql: ${TABLE}.ObjectID_1 ;;
  }

  dimension: objectid {
    type: number
    value_format_name: id
    sql: ${TABLE}.OBJECTID ;;
  }

  dimension: officer_name {
    type: string
    sql: ${TABLE}.OFFICER_NAME ;;
  }

  dimension: person_id {
    type: number
    sql: ${TABLE}.PERSON_ID ;;
  }

  dimension: race {
    type: string
    sql: ${TABLE}.RACE ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.Score ;;
  }

  dimension: sex {
    type: string
    sql: ${TABLE}.SEX ;;
  }

  dimension: shape {
    type: string
    sql: ${TABLE}.SHAPE ;;
  }

  dimension: side {
    type: string
    sql: ${TABLE}.Side ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: tract {
    type: string
    sql: ${TABLE}.TRACT ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.WEIGHT ;;
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
    drill_fields: [cite_name, officer_name, iw_geo_name]
  }
}
