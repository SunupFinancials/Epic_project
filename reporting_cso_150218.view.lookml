- view: reporting_cso_150218
  sql_table_name: Reporting_CSO_150218
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.Id

  - dimension: ach_endpoint
    sql: ${TABLE}.AchEndpoint

  - dimension: assigned_agent
    sql: ${TABLE}.AssignedAgent

  - dimension: calc_current_mtd
    type: int
    sql: ${TABLE}.Calc_CurrentMTD

  - dimension: calc_exclude
    type: int
    sql: ${TABLE}.Calc_Exclude

  - dimension: calc_month
    type: int
    sql: ${TABLE}.Calc_Month

  - dimension: calc_next30_days
    type: int
    sql: ${TABLE}.Calc_Next30Days

  - dimension_group: calc_return
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.Calc_Return_Date

  - dimension: client_aba
    sql: ${TABLE}.Client_Aba

  - dimension: client_address
    sql: ${TABLE}.Client_Address

  - dimension: client_address2
    sql: ${TABLE}.Client_Address2

  - dimension: client_bank_account_type
    sql: ${TABLE}.Client_BankAccountType

  - dimension: client_bank_months
    type: int
    sql: ${TABLE}.Client_BankMonths

  - dimension: client_bank_name
    sql: ${TABLE}.Client_BankName

  - dimension: client_bank_phone
    sql: ${TABLE}.Client_BankPhone

  - dimension: client_bank_years
    type: int
    sql: ${TABLE}.Client_BankYears

  - dimension: client_birth_date
    sql: ${TABLE}.Client_BirthDate

  - dimension: client_birth_year
    type: int
    sql: ${TABLE}.Client_BirthYear

  - dimension: client_cell_phone
    sql: ${TABLE}.Client_CellPhone

  - dimension: client_cell_phone_do_not_call
    type: int
    sql: ${TABLE}.Client_CellPhoneDoNotCall

  - dimension: client_city
    sql: ${TABLE}.Client_City

  - dimension: client_contact_time
    sql: ${TABLE}.Client_ContactTime

  - dimension: client_customer_account
    sql: ${TABLE}.Client_CustomerAccount

  - dimension_group: client_date_changed
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Client_DateChanged

  - dimension_group: client_date_copied_from_epic_dart
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Client_DateCopiedFromEpicDart

  - dimension_group: client_date_created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Client_DateCreated

  - dimension_group: client_dl_exp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Client_DlExpDate

  - dimension: client_dlstate
    sql: ${TABLE}.Client_DLState

  - dimension: client_drivers_license_number
    sql: ${TABLE}.Client_DriversLicenseNumber

  - dimension: client_email_address
    sql: ${TABLE}.Client_EmailAddress

  - dimension: client_email_marketing_opt_in
    type: int
    sql: ${TABLE}.Client_Email_MarketingOptIn

  - dimension: client_email_operational_opt_in
    type: int
    sql: ${TABLE}.Client_Email_OperationalOptIn

  - dimension: client_employer_name
    sql: ${TABLE}.Client_EmployerName

  - dimension: client_employment_address
    sql: ${TABLE}.Client_EmploymentAddress

  - dimension: client_employment_address2
    sql: ${TABLE}.Client_EmploymentAddress2

  - dimension: client_employment_city
    sql: ${TABLE}.Client_EmploymentCity

  - dimension: client_employment_months
    type: int
    sql: ${TABLE}.Client_EmploymentMonths

  - dimension: client_employment_start_date
    sql: ${TABLE}.Client_EmploymentStartDate

  - dimension: client_employment_state_id
    sql: ${TABLE}.Client_EmploymentStateId

  - dimension: client_employment_years
    type: int
    sql: ${TABLE}.Client_EmploymentYears

  - dimension: client_employment_zip
    sql: ${TABLE}.Client_EmploymentZip

  - dimension: client_fax
    sql: ${TABLE}.Client_Fax

  - dimension: client_first_name
    sql: ${TABLE}.Client_FirstName

  - dimension: client_gender
    sql: ${TABLE}.Client_Gender

  - dimension: client_home_phone
    sql: ${TABLE}.Client_HomePhone

  - dimension: client_home_phone_do_not_call
    type: int
    sql: ${TABLE}.Client_HomePhoneDoNotCall

  - dimension: client_home_rights
    sql: ${TABLE}.Client_HomeRights

  - dimension: client_id
    type: int
    sql: ${TABLE}.Client_Id

  - dimension: client_income_type
    sql: ${TABLE}.Client_IncomeType

  - dimension: client_is_citizen
    type: int
    sql: ${TABLE}.Client_IsCitizen

  - dimension: client_is_military
    type: int
    sql: ${TABLE}.Client_IsMilitary

  - dimension: client_is_returning
    sql: ${TABLE}.Client_IsReturning

  - dimension: client_language
    sql: ${TABLE}.Client_Language

  - dimension: client_last_name
    sql: ${TABLE}.Client_LastName

  - dimension: client_middle_name
    sql: ${TABLE}.Client_MiddleName

  - dimension: client_number_current_residence_months
    type: int
    sql: ${TABLE}.Client_NumberCurrentResidenceMonths

  - dimension: client_number_current_residence_years
    type: int
    sql: ${TABLE}.Client_NumberCurrentResidenceYears

  - dimension: client_payroll_id
    type: int
    sql: ${TABLE}.Client_PayrollId

  - dimension: client_payroll_method
    sql: ${TABLE}.Client_PayrollMethod

  - dimension: client_position
    sql: ${TABLE}.Client_Position

  - dimension: client_rent_or_own
    sql: ${TABLE}.Client_RentOrOwn

  - dimension: client_sms_marketing_opt_in
    type: int
    sql: ${TABLE}.Client_Sms_MarketingOptIn

  - dimension: client_sms_operational_opt_in
    type: int
    sql: ${TABLE}.Client_Sms_OperationalOptIn

  - dimension: client_ssn
    sql: ${TABLE}.Client_SSN

  - dimension: client_ssn4
    sql: ${TABLE}.Client_SSN4

  - dimension: client_state_id
    sql: ${TABLE}.Client_StateID

  - dimension: client_supervisor_name
    sql: ${TABLE}.Client_SupervisorName

  - dimension: client_supervisor_phone
    sql: ${TABLE}.Client_SupervisorPhone

  - dimension: client_supervisor_phone_ext
    sql: ${TABLE}.Client_SupervisorPhoneExt

  - dimension: client_vw_client_id
    type: int
    sql: ${TABLE}.Client_vw_Client_Id

  - dimension: client_work_fax
    sql: ${TABLE}.Client_WorkFax

  - dimension: client_work_phone
    sql: ${TABLE}.Client_WorkPhone

  - dimension: client_work_phone_do_not_call
    type: int
    sql: ${TABLE}.Client_WorkPhoneDoNotCall

  - dimension: client_work_phone_ext
    sql: ${TABLE}.Client_WorkPhoneExt

  - dimension: client_work_shift
    sql: ${TABLE}.Client_WorkShift

  - dimension: client_zip
    sql: ${TABLE}.Client_Zip

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

  - dimension_group: hist_date_copied_from_epic_dart
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Hist_DateCopiedFromEpicDart

  - dimension: hist_discount_finance_fee
    sql: ${TABLE}.Hist_DiscountFinanceFee

  - dimension: hist_discount_late_fee
    sql: ${TABLE}.Hist_DiscountLateFee

  - dimension: hist_discount_nsf_fee
    sql: ${TABLE}.Hist_DiscountNsfFee

  - dimension: hist_discount_principle
    sql: ${TABLE}.Hist_DiscountPrinciple

  - dimension: hist_effective_date
    sql: ${TABLE}.Hist_EffectiveDate

  - dimension: hist_loan_id
    type: int
    sql: ${TABLE}.Hist_LoanId

  - dimension: hist_loan_status
    sql: ${TABLE}.Hist_LoanStatus

  - dimension: hist_outstanding_finance_fee
    sql: ${TABLE}.Hist_OutstandingFinanceFee

  - dimension: hist_outstanding_late_fee
    sql: ${TABLE}.Hist_OutstandingLateFee

  - dimension: hist_outstanding_nsf_fee
    sql: ${TABLE}.Hist_OutstandingNsfFee

  - dimension: hist_outstanding_principle
    sql: ${TABLE}.Hist_OutstandingPrinciple

  - dimension: hist_outstanding_total
    sql: ${TABLE}.Hist_OutstandingTotal

  - dimension: hist_paid_off_finance_fee
    sql: ${TABLE}.Hist_PaidOffFinanceFee

  - dimension: hist_paid_off_late_fee
    sql: ${TABLE}.Hist_PaidOffLateFee

  - dimension: hist_paid_off_nsf_fee
    sql: ${TABLE}.Hist_PaidOffNsfFee

  - dimension: hist_paid_off_principle
    sql: ${TABLE}.Hist_PaidOffPrinciple

  - dimension: hist_settlement_finance_fee
    sql: ${TABLE}.Hist_SettlementFinanceFee

  - dimension: hist_settlement_late_fee
    sql: ${TABLE}.Hist_SettlementLateFee

  - dimension: hist_settlement_nsf_fee
    sql: ${TABLE}.Hist_SettlementNsfFee

  - dimension: hist_settlement_principle
    sql: ${TABLE}.Hist_SettlementPrinciple

  - dimension: hist_vw_loan_history_id
    type: int
    sql: ${TABLE}.Hist_vw_LoanHistory_Id

  - dimension: is_debit
    type: int
    sql: ${TABLE}.IsDebit

  - dimension: is_origination
    type: int
    sql: ${TABLE}.IsOrigination

  - dimension: late_fee
    sql: ${TABLE}.LateFee

  - dimension: loan_affiliate_sub_id
    sql: ${TABLE}.Loan_AffiliateSubId

  - dimension: loan_affliate_id
    sql: ${TABLE}.Loan_AffliateID

  - dimension: loan_annual_percent_rate
    type: number
    sql: ${TABLE}.Loan_AnnualPercentRate

  - dimension: loan_approved_amount
    sql: ${TABLE}.Loan_ApprovedAmount

  - dimension: loan_approved_finance_fee
    sql: ${TABLE}.Loan_ApprovedFinanceFee

  - dimension: loan_assigned_collection_agent
    sql: ${TABLE}.Loan_AssignedCollectionAgent

  - dimension: loan_assigned_loan_manager
    sql: ${TABLE}.Loan_AssignedLoanManager

  - dimension_group: loan_broken_promise
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Loan_BrokenPromiseDate

  - dimension: loan_collection_queue
    sql: ${TABLE}.Loan_CollectionQueue

  - dimension_group: loan_collection_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Loan_CollectionStartDate

  - dimension: loan_credit_ach_endpoint
    sql: ${TABLE}.Loan_CreditAchEndpoint

  - dimension: loan_current_history_id
    type: int
    sql: ${TABLE}.Loan_CurrentHistoryId

  - dimension_group: loan_date_application_received
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Loan_DateApplicationReceived

  - dimension_group: loan_date_copied_from_epic_dart
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Loan_DateCopiedFromEpicDart

  - dimension: loan_debit_ach_endpoint
    sql: ${TABLE}.Loan_DebitAchEndpoint

  - dimension: loan_debtor_client_id
    type: int
    sql: ${TABLE}.Loan_DebtorClientId

  - dimension: loan_default_repayment
    sql: ${TABLE}.Loan_DefaultRepayment

  - dimension: loan_display_number
    sql: ${TABLE}.Loan_DisplayNumber

  - dimension: loan_due_date
    sql: ${TABLE}.Loan_DueDate

  - dimension: loan_effective_date
    sql: ${TABLE}.Loan_EffectiveDate

  - dimension_group: loan_follow_up_date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Loan_FollowUpDateTime

  - dimension: loan_id
    type: int
    sql: ${TABLE}.LoanId

  - dimension: loan_is_bounced
    type: int
    sql: ${TABLE}.Loan_IsBounced

  - dimension: loan_is_esigned
    type: int
    sql: ${TABLE}.Loan_IsESigned

  - dimension: loan_is_esigned20minutes
    type: int
    sql: ${TABLE}.Loan_IsESigned20minutes

  - dimension: loan_is_express_loan
    type: int
    sql: ${TABLE}.Loan_IsExpressLoan

  - dimension: loan_is_redirected
    type: int
    sql: ${TABLE}.Loan_IsRedirected

  - dimension: loan_is_returning
    type: int
    sql: ${TABLE}.Loan_IsReturning

  - dimension: loan_is_system_withdrawn
    type: int
    sql: ${TABLE}.Loan_IsSystemWithdrawn

  - dimension: loan_is_wire_transfer
    type: int
    sql: ${TABLE}.Loan_IsWireTransfer

  - dimension: loan_last_cl_verify_score
    type: int
    sql: ${TABLE}.Loan_LastClVerifyScore

  - dimension: loan_last_clarity_decision
    sql: ${TABLE}.Loan_LastClarityDecision

  - dimension: loan_last_datax_decision
    sql: ${TABLE}.Loan_LastDataxDecision

  - dimension: loan_last_factor_trust_score
    type: int
    sql: ${TABLE}.Loan_LastFactorTrustScore

  - dimension: loan_last_veritrac_decision
    sql: ${TABLE}.Loan_LastVeritracDecision

  - dimension: loan_lead_acquired_ip
    sql: ${TABLE}.Loan_LeadAcquiredIP

  - dimension: loan_lead_cost
    sql: ${TABLE}.Loan_LeadCost

  - dimension: loan_lead_employment_type
    sql: ${TABLE}.Loan_LeadEmploymentType

  - dimension: loan_lead_provider_name
    sql: ${TABLE}.Loan_LeadProviderName

  - dimension: loan_loan_status
    sql: ${TABLE}.Loan_LoanStatus

  - dimension: loan_loan_type
    sql: ${TABLE}.Loan_LoanType

  - dimension: loan_minutes_to_sign
    type: int
    sql: ${TABLE}.Loan_MinutesToSign

  - dimension: loan_original_loan_id
    type: int
    sql: ${TABLE}.Loan_OriginalLoanId

  - dimension_group: loan_origination
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Loan_OriginationDate

  - dimension: loan_other_offers
    type: int
    sql: ${TABLE}.Loan_OtherOffers

  - dimension: loan_other_withdrawn_reason
    sql: ${TABLE}.Loan_OtherWithdrawnReason

  - dimension_group: loan_paid_off
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Loan_PaidOffDate

  - dimension: loan_parent_loan_id
    type: int
    sql: ${TABLE}.Loan_ParentLoanId

  - dimension: loan_program
    sql: ${TABLE}.Loan_Program

  - dimension: loan_ref_url
    sql: ${TABLE}.Loan_RefUrl

  - dimension: loan_reject_reason
    sql: ${TABLE}.Loan_RejectReason

  - dimension: loan_renewal_extensions
    type: int
    sql: ${TABLE}.Loan_RenewalExtensions

  - dimension: loan_requested_amount
    type: int
    sql: ${TABLE}.Loan_RequestedAmount

  - dimension: loan_signed_date
    sql: ${TABLE}.Loan_SignedDate

  - dimension: loan_signed_ip
    sql: ${TABLE}.Loan_SignedIP

  - dimension: loan_signed_time
    sql: ${TABLE}.Loan_SignedTime

  - dimension: loan_state
    sql: ${TABLE}.Loan_State

  - dimension: loan_store_name
    sql: ${TABLE}.Loan_StoreName

  - dimension: loan_void_reason
    sql: ${TABLE}.Loan_VoidReason

  - dimension: loan_vw_loans_id
    type: int
    sql: ${TABLE}.Loan_vw_Loans_Id

  - dimension: loan_withdrawn_reason
    sql: ${TABLE}.Loan_WithdrawnReason

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

  - dimension: vw_payments_id
    type: int
    # hidden: true
    sql: ${TABLE}.vw_Payments_Id

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - loan_store_name
    - loan_lead_provider_name
    - client_first_name
    - client_middle_name
    - client_last_name
    - client_bank_name
    - client_employer_name
    - client_supervisor_name
    - vw_payments.vw_payments_id

