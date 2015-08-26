- view: vw_weekly_fpd
  sql_table_name: vw_WeeklyFPD
  fields:

  - dimension_group: calendar
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.CalendarDate

  - dimension: origination_week
    type: int
    sql: ${TABLE}.OriginationWeek

  - measure: count
    type: count
    drill_fields: []

  - measure: m_total_loans
    type: count
    sql: ${TABLE}.TotalLoans
  
  - measure: m_fpd
    type: count
    sql: ${TABLE}.FPD
  
  - measure: m_vintage_aged
    type: count
    sql: ${TABLE}.VintageAged