include: incidents_dsh_msk.view.lkml
view: incident_trends {
	extends: [incidents_dsh_msk]

	dimension_group: current {
		type: time
		sql: CURRENT_TIMESTAMP ;;
		timeframes: [raw, date month, year, month_name, month_index]
	}

	dimension: months_between_end {
		type: number
		## CHECK DATEDIFF 
		sql: DATEDIFF(MONTH,${end_raw},${current_raw}) ;;
	}

	measure: incident_count_0_2 {
	 	group_label: "Incidents by Rolling 3 Months"
		label: "Recent 3 Months"
		type: count
		filters: { field: months_between_end value: [0,2] }
	}

	measure: incident_count_3_5 {
	 	group_label: "Incidents by Rolling 3 Months"
		label: "Recent 3 Months"
		type: count
		filters: { field: months_between_end value: [3,5] }
	}

	measure: incident_count_6_8 {
	 	group_label: "Incidents by Rolling 3 Months"
		label: "6 Months Ago for 3 Months"
		type: count
		filters: { field: months_between_end value: [6,8] }
	}

	measure: incident_count_9_11 {
	 	group_label: "Incidents by Rolling 3 Months"
		label: "9 Months Ago for 3 Months"
		type: count
		filters: { field: months_between_end value: [9,11] }
	}

	measure: incident_count_12_14 {
	 	group_label: "Incidents by Rolling 3 Months"
		label: "12 Months Ago for 3 Months"
		type: count
		filters: { field: months_between_end value: [12,14] }
	}

	measure: incident_count_0_2_previous_change {
	 	group_label: "Incidents by Rolling 3 Months"
		label: "Recent 3 Months"
		type: number
		filters: { field: months_between_end value: [0,2] }
	}

	measure: incident_count_3_5_previous_change {
	 	group_label: "Incidents by Rolling 3 Months"
		label: "Recent 3 Months"
		type: number
		filters: { field: months_between_end value: [3,5] }
	}

	measure: incident_count_6_8_previous_change {
	 	group_label: "Incidents by Rolling 3 Months"
		label: "6 Months Ago for 3 Months"
		type: number
		filters: { field: months_between_end value: [6,8] }
	}

	measure: incident_count_9_11_previous_change {
	 	group_label: "Incidents by Rolling 3 Months"
		label: "9 Months Ago for 3 Months"
		type: number
		sql: 1.0 *${incident_count_9_11} / ${incident_count_12_14} - 1
		filters: { field: months_between_end value: [9,11] }
	}

}