- view: client_payoff_total
  sql_table_name: rpt.ClientPayoffTotal
  fields:

  - dimension_group: calendar
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.CalendarDate

  - dimension: display_number
    sql: ${TABLE}.DisplayNumber
    label: 'Loan Number'

  - dimension: full_name
    sql: ${TABLE}.FullName
    label: 'Customer Name'
    
  - dimension: nsf_late_fees
    sql: ${TABLE}.NSFLateFees
    label: 'NSF & Late Fees'
    
  - dimension: pd_payoff_total
    sql: ${TABLE}.PDPayoffTotal
    label: 'Payday Payoff Total'
    
  - measure: count
    type: count
    drill_fields: [full_name]

  - measure: m_payoff_total
    type: sum
    sql: ${TABLE}.PayoffTotal
    decimals: 2
    label: 'Payoff Total'

