- view: test_senthil
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.Id

  - dimension: ach_endpoint
    sql: ${TABLE}.AchEndpoint

  - dimension: assigned_agent
    sql: ${TABLE}.AssignedAgent

  - dimension: credit_reason
    type: int
    sql: ${TABLE}.CreditReason

  - dimension_group: effective
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EffectiveDate

  - dimension: fees_amount
    sql: ${TABLE}.FeesAmount

  - dimension: is_debit
    type: int
    sql: ${TABLE}.IsDebit

  - dimension: is_origination
    type: int
    sql: ${TABLE}.IsOrigination

  - dimension: loan_id
    type: int
    # hidden: true
    sql: ${TABLE}.LoanId

  - dimension: payment_agent
    sql: ${TABLE}.PaymentAgent

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
    drill_fields: [id, loans.loan_id]
    
  - measure: sum_payment_amount
    type: sum
    sql: ${TABLE}.PaymentAmount
    
  - measure: sum_late_fee
    type: sum
    sql: ${TABLE}.LateFee
    
  - measure: sum_nsf_fee
    type: sum
    sql: ${TABLE}.NsfFee

  - measure: avg_finance_fee
    type: avg
    sql: ${TABLE}.FinanceFee