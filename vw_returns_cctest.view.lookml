- view: vw_returns_cctest
  sql_table_name: vw_Returns_CCTest
  fields:

  - dimension: denominator
    type: int
    sql: ${TABLE}.Denominator

  - dimension: o1_numerator
    type: int
    sql: ${TABLE}.O1_Numerator

  - dimension: o2_numerator
    type: int
    sql: ${TABLE}.O2_Numerator

  - dimension: o3_numerator
    type: int
    sql: ${TABLE}.O3_Numerator

  - dimension_group: pmt_effective
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.PMT_EffectiveDate

  - measure: count
    type: count
    drill_fields: []

