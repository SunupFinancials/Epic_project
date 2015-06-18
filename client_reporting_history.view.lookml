- view: client_reporting_history
  sql_table_name: ClientReportingHistory
  fields:

  - dimension: aba
    sql: ${TABLE}.Aba

  - dimension: ach_endpoint
    sql: ${TABLE}.AchENDpoint

  - dimension: address1
    sql: ${TABLE}.address1

  - dimension: address2
    sql: ${TABLE}.Address2

  - dimension: annual_percent_rate
    type: number
    sql: ${TABLE}.AnnualPercentRate

  - dimension: approved_amount
    sql: ${TABLE}.ApprovedAmount

  - dimension: approved_finance_fee
    sql: ${TABLE}.ApprovedFinanceFee

  - dimension: bank_name
    sql: ${TABLE}.BankName

  - dimension_group: birth
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.BirthDate

  - dimension_group: broken_promise
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.BrokenPromiseDate

  - dimension: cell_phone
    sql: ${TABLE}.CellPhone

  - dimension: city
    sql: ${TABLE}.City

  - dimension: client_id
    type: int
    sql: ${TABLE}.ClientID

  - dimension_group: collection_start
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.CollectionStartDate

  - dimension: current_history_id
    type: int
    sql: ${TABLE}.CurrentHistoryId

  - dimension: current_past_due_aging_bucket
    type: int
    sql: ${TABLE}.CurrentPastDueAgingBucket

  - dimension: customer_account
    sql: ${TABLE}.CustomerAccount

  - dimension_group: date_application_received
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.DateApplicationReceived

  - dimension: date_difference_edand_rd
    type: int
    sql: ${TABLE}.DateDifference_EDandRD

  - dimension_group: date_reported_clarity
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DateReportedClarity

  - dimension_group: date_reported_data_x
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DateReportedDataX

  - dimension: debtor_client_id
    type: int
    sql: ${TABLE}.DebtorClientId

  - dimension: display_number
    sql: ${TABLE}.DisplayNumber

  - dimension: dlstate
    sql: ${TABLE}.DLState

  - dimension: drivers_license_number
    sql: ${TABLE}.DriversLicenseNumber

  - dimension_group: due
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.DueDate

  - dimension: email_address
    sql: ${TABLE}.EmailAddress

  - dimension: employer_name
    sql: ${TABLE}.EmployerName

  - dimension_group: first_cash_adj_effective
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.First_CashAdjEffectiveDate

  - dimension_group: first_failed_date
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.First_FailedDateTime

  - dimension_group: first_failed_effective_date
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.First_FailedEffectiveDateTime

  - dimension: first_name
    sql: ${TABLE}.FirstName

  - dimension_group: first_payment
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.First_PaymentDate

  - dimension: first_payment_default
    type: int
    sql: ${TABLE}.FirstPaymentDefault

  - dimension: history_loan_id
    type: int
    sql: ${TABLE}.HistoryLoanId

  - dimension: is_debit
    type: int
    sql: ${TABLE}.IsDebit

  - dimension: is_origination
    type: int
    sql: ${TABLE}.IsOrigination

  - dimension: is_reported_clarity
    type: int
    sql: ${TABLE}.isReportedClarity

  - dimension: is_reported_data_x
    type: int
    sql: ${TABLE}.isReportedDataX

  - dimension_group: last_failed_date
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.Last_FailedDateTime

  - dimension: last_name
    sql: ${TABLE}.LastName

  - dimension_group: last_payment
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.Last_PaymentDate

  - dimension_group: last_payment_success
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.Last_PaymentSuccessDate

  - dimension: loan_crtype
    sql: ${TABLE}.LoanCRType

  - dimension_group: loan_effective
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.LoanEffectiveDate

  - dimension_group: loan_history_effective
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.LoanHistoryEffectiveDate

  - dimension: loan_history_id
    type: int
    sql: ${TABLE}.LoanHistoryId

  - dimension: loan_history_status
    sql: ${TABLE}.LoanHistoryStatus

  - dimension: loan_id
    type: int
    sql: ${TABLE}.LoanId

  - dimension: loan_status
    sql: ${TABLE}.LoanStatus

  - dimension: loan_status_type
    sql: ${TABLE}.LoanStatusType

  - dimension: net_monthly_income
    sql: ${TABLE}.NetMonthlyIncome

  - dimension: next_payment_amount
    type: number
    sql: ${TABLE}.Next_PaymentAmount

  - dimension_group: next_payment
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.Next_PaymentDate

  - dimension: number_failed_payments
    type: int
    sql: ${TABLE}.Number_FailedPayments

  - dimension: number_successful_payments
    type: int
    sql: ${TABLE}.Number_SuccessfulPayments

  - dimension_group: origination
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.OriginationDate

  - dimension: other_withdrawn_reason
    sql: ${TABLE}.OtherWithdrawnReason

  - dimension: outstanding_finance_fee
    sql: ${TABLE}.OutstandingFinanceFee

  - dimension: outstanding_late_fee
    sql: ${TABLE}.OutstandingLateFee

  - dimension: outstanding_nsf_fee
    sql: ${TABLE}.OutstandingNsfFee

  - dimension: outstanding_principle
    sql: ${TABLE}.OutstandingPrinciple

  - dimension: outstanding_total
    sql: ${TABLE}.OutstandingTotal

  - dimension_group: paid_off
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.PaidOffDate

  - dimension: payday_frequency
    sql: ${TABLE}.payday_frequency

  - dimension: payment_amount
    sql: ${TABLE}.PaymentAmount

  - dimension_group: payment_effective
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.PaymentEffectiveDate

  - dimension: payment_id
    type: int
    sql: ${TABLE}.PaymentId

  - dimension: payment_loan_id
    type: int
    sql: ${TABLE}.PaymentLoanID

  - dimension: payment_number
    type: number
    sql: ${TABLE}.PaymentNumber

  - dimension: payment_rating
    sql: ${TABLE}.PaymentRating

  - dimension: payment_status
    sql: ${TABLE}.PaymentStatus

  - dimension: payment_type
    sql: ${TABLE}.PaymentType

  - dimension: pd_payment_loan_id
    type: int
    sql: ${TABLE}.pdPaymentLoanID

  - dimension: phone
    sql: ${TABLE}.phone

  - dimension: reject_reason
    sql: ${TABLE}.RejectReason

  - dimension: renewal_extensions
    type: int
    sql: ${TABLE}.RenewalExtensions

  - dimension_group: reporting_as_of
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ReportingAsOfDate

  - dimension: reporting_as_of_id
    type: int
    sql: ${TABLE}.ReportingAsOfId

  - dimension: return_code
    sql: ${TABLE}.ReturnCode

  - dimension_group: return
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.ReturnDate

  - dimension_group: signed
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.SignedDate

  - dimension: social_security_number
    sql: ${TABLE}.SocialSecurityNumber

  - dimension: state
    sql: ${TABLE}.State

  - dimension: state_id
    sql: ${TABLE}.StateID

  - dimension_group: success
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.SuccessDate

  - dimension: total_numberof_payments
    type: int
    sql: ${TABLE}.TotalNumberofPayments

  - dimension: void_reason
    sql: ${TABLE}.VoidReason

  - dimension: withdrawn_reason
    sql: ${TABLE}.WithdrawnReason

  - dimension: work_phone
    sql: ${TABLE}.WorkPhone

  - dimension: zip
    sql: ${TABLE}.Zip

  - measure: count
    type: count
    drill_fields: [first_name, last_name, bank_name, employer_name]

