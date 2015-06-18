- view: vw_payroll
  sql_table_name: vw_Payroll
  fields:

  - dimension: vw_payroll_id
    primary_key: true
    type: int
    sql: ${TABLE}.vw_Payroll_Id

  - dimension: client_id
    type: int
    sql: ${TABLE}.ClientId

  - dimension_group: date_copied_from_epic_dart
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DateCopiedFromEpicDart

  - dimension: frequency_type
    sql: ${TABLE}.FrequencyType

  - dimension: gross_monthly_income
    sql: ${TABLE}.GrossMonthlyIncome

  - dimension: gross_payroll
    sql: ${TABLE}.GrossPayroll

  - dimension: id
    type: int
    sql: ${TABLE}.Id

  - dimension_group: last_pay
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LastPayDate

  - dimension: move_to_next_business_day_on_holiday_or_weekend
    type: int
    sql: ${TABLE}.MoveToNextBusinessDayOnHolidayOrWeekend

  - dimension: net_monthly_income
    sql: ${TABLE}.NetMonthlyIncome

  - dimension_group: next_pay_date1
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.NextPayDate1

  - dimension_group: next_pay_date2
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.NextPayDate2

  - dimension_group: payroll_date_changed
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.PayrollDateChanged

  - dimension: payroll_type
    sql: ${TABLE}.PayrollType

  - dimension: total_per_paycheck
    sql: ${TABLE}.TotalPerPaycheck

  - measure: count
    type: count
    drill_fields: [vw_payroll_id]

