- view: 3_rd_party_collections
  sql_table_name: |
      "3RD_PARTY_COLLECTIONS"
  fields:

  - dimension: aba
    sql: ${TABLE}.Aba

  - dimension: address
    sql: ${TABLE}.Address

  - dimension: address2
    sql: ${TABLE}.Address2

  - dimension: annual_percent_rate
    sql: ${TABLE}.AnnualPercentRate

  - dimension: approved_amount
    sql: ${TABLE}.ApprovedAmount

  - dimension: approved_finance_fee
    sql: ${TABLE}.ApprovedFinanceFee

  - dimension: bank_account_type
    sql: ${TABLE}.BankAccountType

  - dimension: bank_months
    sql: ${TABLE}.BankMonths

  - dimension: bank_name
    sql: ${TABLE}.BankName

  - dimension: bank_phone
    sql: ${TABLE}.BankPhone

  - dimension: bank_years
    sql: ${TABLE}.BankYears

  - dimension: birth_date
    sql: ${TABLE}.BirthDate

  - dimension: cell_phone
    sql: ${TABLE}.CellPhone

  - dimension: city
    sql: ${TABLE}.City

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Created

  - dimension: customer_account
    sql: ${TABLE}.CustomerAccount

  - dimension: discount_finance_fee
    sql: ${TABLE}.DiscountFinanceFee

  - dimension: discount_late_fee
    sql: ${TABLE}.DiscountLateFee

  - dimension: discount_nsf_fee
    sql: ${TABLE}.DiscountNsfFee

  - dimension: discount_principle
    sql: ${TABLE}.DiscountPrinciple

  - dimension: discounted_csofee
    sql: ${TABLE}.DiscountedCSOFee

  - dimension: display_number
    sql: ${TABLE}.DisplayNumber

  - dimension: dlstate
    sql: ${TABLE}.DLState

  - dimension: drivers_license_number
    sql: ${TABLE}.DriversLicenseNumber

  - dimension: effective_date
    sql: ${TABLE}.EffectiveDate

  - dimension: email_address
    sql: ${TABLE}.EmailAddress

  - dimension: email_operational_opt_in
    sql: ${TABLE}.Email_OperationalOptIn

  - dimension: employer_name
    sql: ${TABLE}.EmployerName

  - dimension: employment_start_date
    sql: ${TABLE}.EmploymentStartDate

  - dimension: finance_fee
    sql: ${TABLE}.FinanceFee

  - dimension: first_name
    sql: ${TABLE}.FirstName

  - dimension: frequency_type
    sql: ${TABLE}.FrequencyType

  - dimension: home_phone
    sql: ${TABLE}.HomePhone

  - dimension: income_type
    sql: ${TABLE}.IncomeType

  - dimension: is_military
    sql: ${TABLE}.IsMilitary

  - dimension: last_name
    sql: ${TABLE}.LastName

  - dimension: last_pay_date
    sql: ${TABLE}.LastPayDate

  - dimension: late_fee
    sql: ${TABLE}.LateFee

  - dimension: next_pay_date1
    sql: ${TABLE}.NextPayDate1

  - dimension: next_pay_date2
    sql: ${TABLE}.NextPayDate2

  - dimension: nsffee
    sql: ${TABLE}.NSFFee

  - dimension: number_current_residence_months
    sql: ${TABLE}.NumberCurrentResidenceMonths

  - dimension: number_current_residence_years
    sql: ${TABLE}.NumberCurrentResidenceYears

  - dimension: origination_date
    sql: ${TABLE}.OriginationDate

  - dimension: outstanding_csofee
    sql: ${TABLE}.OutstandingCSOFee

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

  - dimension: paid_off_csofee
    sql: ${TABLE}.PaidOffCSOFee

  - dimension: paid_off_finance_fee
    sql: ${TABLE}.PaidOffFinanceFee

  - dimension: paid_off_late_fee
    sql: ${TABLE}.PaidOffLateFee

  - dimension: paid_off_nsf_fee
    sql: ${TABLE}.PaidOffNsfFee

  - dimension: paid_off_principle
    sql: ${TABLE}.PaidOffPrinciple

  - dimension: rent_or_own
    sql: ${TABLE}.RentOrOwn

  - dimension: sms_operational_opt_in
    sql: ${TABLE}.Sms_OperationalOptIn

  - dimension: ssn
    sql: ${TABLE}.SSN

  - dimension: state_id
    sql: ${TABLE}.StateID

  - dimension: total_csofee
    sql: ${TABLE}.TotalCSOFee

  - dimension: total_per_paycheck
    sql: ${TABLE}.TotalPerPaycheck

  - dimension: work_phone
    sql: ${TABLE}.WorkPhone

  - dimension: zip
    sql: ${TABLE}.Zip

  - measure: count
    type: count
    drill_fields: [first_name, last_name, employer_name, bank_name]

