- view: vw_payments
  sql_table_name: vw_Payments
  fields:

  - dimension: vw_payments_id
    primary_key: true
    type: int
    sql: ${TABLE}.vw_Payments_Id

  - dimension: ach_endpoint
    sql: ${TABLE}.AchEndpoint

  - dimension: assigned_agent
    sql: ${TABLE}.AssignedAgent

  - dimension: credit_reason
    type: int
    sql: ${TABLE}.CreditReason

  - dimension_group: date_copied_from_epic_dart
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DateCopiedFromEpicDart

  - dimension_group: effective
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EffectiveDate

  - dimension: fees_amount
    sql: ${TABLE}.FeesAmount

  - dimension: finance_fee
    sql: ${TABLE}.FinanceFee

  - dimension: id
    type: int
    sql: ${TABLE}.Id

  - dimension: is_debit
    type: int
    sql: ${TABLE}.IsDebit

  - dimension: is_origination
    type: int
    sql: ${TABLE}.IsOrigination

  - dimension: late_fee
    sql: ${TABLE}.LateFee

  - dimension: loan_id
    type: int
    sql: ${TABLE}.LoanId

  - dimension: nsf_fee
    sql: ${TABLE}.NsfFee

  - dimension: payment_agent
    sql: ${TABLE}.PaymentAgent

  - dimension: payment_amount
    sql: ${TABLE}.PaymentAmount

  - dimension: payment_status
    sql: ${TABLE}.PaymentStatus

  - dimension: payment_type
    sql: ${TABLE}.PaymentType

  - dimension: principle
    sql: ${TABLE}.Principle

  - dimension: return_code
    sql: ${TABLE}.ReturnCode

  - dimension_group: return
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ReturnDate

  - dimension_group: success
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.SuccessDate

  - measure: count
    type: count
    drill_fields: [vw_payments_id, reporting_cso_150218.count]
    
  - measure: return_count
    type: count                 # COUNT(CASE WHEN dimension.return_code IS NOT NULL THEN 1 ELSE NULL END)
    label: 'Count Of Returns'
   

  

