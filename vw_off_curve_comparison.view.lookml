- view: vw_off_curve_comparison
  sql_table_name: vw_Off_Curve_Comparison
  fields:

  - dimension_group: calc_1_cash_effective
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.Calc_1Cash_Effective_Date

  - dimension: calc_accrued_interest
    type: number
    sql: ${TABLE}.Calc_Accrued_Interest

  - dimension: calc_approved_cso_fee
    sql: ${TABLE}.Calc_Approved_CSO_Fee

  - dimension: calc_approved_cso_principal
    sql: ${TABLE}.Calc_Approved_CSO_Principal

  - dimension: calc_current_mtd
    type: int
    sql: ${TABLE}.Calc_CurrentMTD

  - dimension: calc_exclude_test
    type: int
    sql: ${TABLE}.Calc_Exclude_Test

  - dimension_group: calc_fd
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.Calc_FD_Date

  - dimension: calc_fd_effective_week_on_book
    type: int
    sql: ${TABLE}.Calc_FD_Effective_WeekOnBook

  - dimension: calc_loan_status
    sql: ${TABLE}.Calc_Loan_Status

  - dimension: calc_next30_days
    type: int
    sql: ${TABLE}.Calc_Next30Days

  - dimension: calc_origination_week
    type: int
    sql: ${TABLE}.Calc_Origination_Week

  - dimension: calc_outstanding_cso_fee
    sql: ${TABLE}.Calc_Outstanding_CSO_Fee

  - dimension: calc_outstanding_cso_principal
    sql: ${TABLE}.Calc_Outstanding_CSO_Principal

  - dimension: calc_payment_month
    type: int
    sql: ${TABLE}.Calc_Payment_Month

  - dimension: calc_payment_number
    type: number
    sql: ${TABLE}.Calc_Payment_Number

  - dimension: calc_payment_week
    type: int
    sql: ${TABLE}.Calc_Payment_Week

  - dimension: calc_pmt_cso_fee
    sql: ${TABLE}.Calc_Pmt_CSO_Fee

  - dimension: calc_pmt_cso_principal
    sql: ${TABLE}.Calc_Pmt_CSO_Principal

  - dimension_group: calc_pmt_last
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.Calc_Pmt_Last_Date

  - dimension_group: calc_pmt_last_success
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.Calc_Pmt_Last_Success_Date

  - dimension: calc_representment
    type: int
    sql: ${TABLE}.Calc_Representment

  - dimension_group: calc_return
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.Calc_Return_Date

  - dimension: calc_sign_cso_fee
    type: number
    sql: ${TABLE}.Calc_Sign_CSO_Fee

  - dimension: calc_sign_cso_principal
    type: number
    sql: ${TABLE}.Calc_Sign_CSO_Principal

  - dimension: calc_sign_fees_amount
    sql: ${TABLE}.Calc_Sign_FeesAmount

  - dimension: calc_sign_finance_fee
    sql: ${TABLE}.Calc_Sign_FinanceFee

  - dimension: calc_sign_late_fee
    sql: ${TABLE}.Calc_Sign_LateFee

  - dimension: calc_sign_nsf_fee
    sql: ${TABLE}.Calc_Sign_NsfFee

  - dimension: calc_sign_payment_amount
    sql: ${TABLE}.Calc_Sign_PaymentAmount

  - dimension: calc_sign_principal
    sql: ${TABLE}.Calc_Sign_Principal

  - dimension_group: calc_snapshot
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.Calc_Snapshot_Date

  - dimension: calc_week_on_book
    type: int
    sql: ${TABLE}.Calc_WeekOnBook

  - dimension: client_aba
    sql: ${TABLE}.CLIENT_Aba

  - dimension: client_address
    sql: ${TABLE}.CLIENT_Address

  - dimension: client_address2
    sql: ${TABLE}.CLIENT_Address2

  - dimension: client_bank_account_type
    sql: ${TABLE}.CLIENT_BankAccountType

  - dimension: client_bank_months
    type: int
    sql: ${TABLE}.CLIENT_BankMonths

  - dimension: client_bank_name
    sql: ${TABLE}.CLIENT_BankName

  - dimension: client_bank_phone
    sql: ${TABLE}.CLIENT_BankPhone

  - dimension: client_bank_years
    type: int
    sql: ${TABLE}.CLIENT_BankYears

  - dimension: client_birth_date
    sql: ${TABLE}.CLIENT_BirthDate

  - dimension: client_birth_year
    type: int
    sql: ${TABLE}.CLIENT_BirthYear

  - dimension: client_cell_phone
    sql: ${TABLE}.CLIENT_CellPhone

  - dimension: client_cell_phone_do_not_call
    type: int
    sql: ${TABLE}.CLIENT_CellPhoneDoNotCall

  - dimension: client_city
    sql: ${TABLE}.CLIENT_City

  - dimension: client_contact_time
    sql: ${TABLE}.CLIENT_ContactTime

  - dimension: client_customer_account
    sql: ${TABLE}.CLIENT_CustomerAccount

  - dimension_group: client_date_changed
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CLIENT_DateChanged

  - dimension_group: client_date_copied_from_epic_dart
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CLIENT_DateCopiedFromEpicDart

  - dimension_group: client_date_created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CLIENT_DateCreated

  - dimension_group: client_dl_exp
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CLIENT_DlExpDate

  - dimension: client_dlstate
    sql: ${TABLE}.CLIENT_DLState

  - dimension: client_drivers_license_number
    sql: ${TABLE}.CLIENT_DriversLicenseNumber

  - dimension: client_email_address
    sql: ${TABLE}.CLIENT_EmailAddress

  - dimension: client_email_marketing_opt_in
    type: int
    sql: ${TABLE}.CLIENT_Email_MarketingOptIn

  - dimension: client_email_operational_opt_in
    type: int
    sql: ${TABLE}.CLIENT_Email_OperationalOptIn

  - dimension: client_employer_name
    sql: ${TABLE}.CLIENT_EmployerName

  - dimension: client_employment_address
    sql: ${TABLE}.CLIENT_EmploymentAddress

  - dimension: client_employment_address2
    sql: ${TABLE}.CLIENT_EmploymentAddress2

  - dimension: client_employment_city
    sql: ${TABLE}.CLIENT_EmploymentCity

  - dimension: client_employment_months
    type: int
    sql: ${TABLE}.CLIENT_EmploymentMonths

  - dimension: client_employment_start_date
    sql: ${TABLE}.CLIENT_EmploymentStartDate

  - dimension: client_employment_state_id
    sql: ${TABLE}.CLIENT_EmploymentStateId

  - dimension: client_employment_years
    type: int
    sql: ${TABLE}.CLIENT_EmploymentYears

  - dimension: client_employment_zip
    sql: ${TABLE}.CLIENT_EmploymentZip

  - dimension: client_fax
    sql: ${TABLE}.CLIENT_Fax

  - dimension: client_first_name
    sql: ${TABLE}.CLIENT_FirstName

  - dimension: client_gender
    sql: ${TABLE}.CLIENT_Gender

  - dimension: client_home_phone
    sql: ${TABLE}.CLIENT_HomePhone

  - dimension: client_home_phone_do_not_call
    type: int
    sql: ${TABLE}.CLIENT_HomePhoneDoNotCall

  - dimension: client_home_rights
    sql: ${TABLE}.CLIENT_HomeRights

  - dimension: client_id
    type: int
    sql: ${TABLE}.CLIENT_Id

  - dimension: client_income_type
    sql: ${TABLE}.CLIENT_IncomeType

  - dimension: client_is_citizen
    type: int
    sql: ${TABLE}.CLIENT_IsCitizen

  - dimension: client_is_military
    type: int
    sql: ${TABLE}.CLIENT_IsMilitary

  - dimension: client_is_returning
    sql: ${TABLE}.CLIENT_IsReturning

  - dimension: client_language
    sql: ${TABLE}.CLIENT_Language

  - dimension: client_last_name
    sql: ${TABLE}.CLIENT_LastName

  - dimension: client_middle_name
    sql: ${TABLE}.CLIENT_MiddleName

  - dimension: client_number_current_residence_months
    type: int
    sql: ${TABLE}.CLIENT_NumberCurrentResidenceMonths

  - dimension: client_number_current_residence_years
    type: int
    sql: ${TABLE}.CLIENT_NumberCurrentResidenceYears

  - dimension: client_payroll_id
    type: int
    sql: ${TABLE}.CLIENT_PayrollId

  - dimension: client_payroll_method
    sql: ${TABLE}.CLIENT_PayrollMethod

  - dimension: client_position
    sql: ${TABLE}.CLIENT_Position

  - dimension: client_rent_or_own
    sql: ${TABLE}.CLIENT_RentOrOwn

  - dimension: client_sms_marketing_opt_in
    type: int
    sql: ${TABLE}.CLIENT_Sms_MarketingOptIn

  - dimension: client_sms_operational_opt_in
    type: int
    sql: ${TABLE}.CLIENT_Sms_OperationalOptIn

  - dimension: client_ssn
    sql: ${TABLE}.CLIENT_SSN

  - dimension: client_ssn4
    sql: ${TABLE}.CLIENT_SSN4

  - dimension: client_state_id
    sql: ${TABLE}.CLIENT_StateID

  - dimension: client_supervisor_name
    sql: ${TABLE}.CLIENT_SupervisorName

  - dimension: client_supervisor_phone
    sql: ${TABLE}.CLIENT_SupervisorPhone

  - dimension: client_supervisor_phone_ext
    sql: ${TABLE}.CLIENT_SupervisorPhoneExt

  - dimension: client_vw_client_id
    type: int
    sql: ${TABLE}.CLIENT_vw_Client_Id

  - dimension: client_work_fax
    sql: ${TABLE}.CLIENT_WorkFax

  - dimension: client_work_phone
    sql: ${TABLE}.CLIENT_WorkPhone

  - dimension: client_work_phone_do_not_call
    type: int
    sql: ${TABLE}.CLIENT_WorkPhoneDoNotCall

  - dimension: client_work_phone_ext
    sql: ${TABLE}.CLIENT_WorkPhoneExt

  - dimension: client_work_shift
    sql: ${TABLE}.CLIENT_WorkShift

  - dimension: client_zip
    sql: ${TABLE}.CLIENT_Zip

  - dimension_group: hist_date_copied_from_epic_dart
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.HIST_DateCopiedFromEpicDart

  - dimension: hist_discount_finance_fee
    sql: ${TABLE}.HIST_DiscountFinanceFee

  - dimension: hist_discount_late_fee
    sql: ${TABLE}.HIST_DiscountLateFee

  - dimension: hist_discount_nsf_fee
    sql: ${TABLE}.HIST_DiscountNsfFee

  - dimension: hist_discount_principle
    sql: ${TABLE}.HIST_DiscountPrinciple

  - dimension: hist_effective_date
    sql: ${TABLE}.HIST_EffectiveDate

  - dimension: hist_loan_id
    type: int
    sql: ${TABLE}.HIST_LoanId

  - dimension: hist_loan_status
    sql: ${TABLE}.HIST_LoanStatus

  - dimension: hist_outstanding_finance_fee
    sql: ${TABLE}.HIST_OutstandingFinanceFee

  - dimension: hist_outstanding_late_fee
    sql: ${TABLE}.HIST_OutstandingLateFee

  - dimension: hist_outstanding_nsf_fee
    sql: ${TABLE}.HIST_OutstandingNsfFee

  - dimension: hist_outstanding_principle
    sql: ${TABLE}.HIST_OutstandingPrinciple

  - dimension: hist_outstanding_total
    sql: ${TABLE}.HIST_OutstandingTotal

  - dimension: hist_paid_off_finance_fee
    sql: ${TABLE}.HIST_PaidOffFinanceFee

  - dimension: hist_paid_off_late_fee
    sql: ${TABLE}.HIST_PaidOffLateFee

  - dimension: hist_paid_off_nsf_fee
    sql: ${TABLE}.HIST_PaidOffNsfFee

  - dimension: hist_paid_off_principle
    sql: ${TABLE}.HIST_PaidOffPrinciple

  - dimension: hist_settlement_finance_fee
    sql: ${TABLE}.HIST_SettlementFinanceFee

  - dimension: hist_settlement_late_fee
    sql: ${TABLE}.HIST_SettlementLateFee

  - dimension: hist_settlement_nsf_fee
    sql: ${TABLE}.HIST_SettlementNsfFee

  - dimension: hist_settlement_principle
    sql: ${TABLE}.HIST_SettlementPrinciple

  - dimension: hist_vw_loan_history_id
    type: int
    sql: ${TABLE}.HIST_vw_LoanHistory_Id

  - dimension: loan_affiliate_sub_id
    sql: ${TABLE}.LOAN_AffiliateSubId

  - dimension: loan_affliate_id
    sql: ${TABLE}.LOAN_AffliateID

  - dimension: loan_annual_percent_rate
    type: number
    sql: ${TABLE}.LOAN_AnnualPercentRate

  - dimension: loan_approved_amount
    sql: ${TABLE}.LOAN_ApprovedAmount

  - dimension: loan_approved_finance_fee
    sql: ${TABLE}.LOAN_ApprovedFinanceFee

  - dimension: loan_assigned_collection_agent
    sql: ${TABLE}.LOAN_AssignedCollectionAgent

  - dimension: loan_assigned_loan_manager
    sql: ${TABLE}.LOAN_AssignedLoanManager

  - dimension_group: loan_broken_promise
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LOAN_BrokenPromiseDate

  - dimension: loan_collection_queue
    sql: ${TABLE}.LOAN_CollectionQueue

  - dimension_group: loan_collection_start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LOAN_CollectionStartDate

  - dimension: loan_credit_ach_endpoint
    sql: ${TABLE}.LOAN_CreditAchEndpoint

  - dimension: loan_current_history_id
    type: int
    sql: ${TABLE}.LOAN_CurrentHistoryId

  - dimension_group: loan_date_application_received
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LOAN_DateApplicationReceived

  - dimension_group: loan_date_copied_from_epic_dart
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LOAN_DateCopiedFromEpicDart

  - dimension: loan_debit_ach_endpoint
    sql: ${TABLE}.LOAN_DebitAchEndpoint

  - dimension: loan_debtor_client_id
    type: int
    sql: ${TABLE}.LOAN_DebtorClientId

  - dimension: loan_default_repayment
    sql: ${TABLE}.LOAN_DefaultRepayment

  - dimension: loan_display_number
    sql: ${TABLE}.LOAN_DisplayNumber

  - dimension: loan_due_date
    sql: ${TABLE}.LOAN_DueDate

  - dimension: loan_effective_date
    sql: ${TABLE}.LOAN_EffectiveDate

  - dimension_group: loan_follow_up_date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LOAN_FollowUpDateTime

  - dimension: loan_id
    type: int
    sql: ${TABLE}.LOAN_Id

  - dimension: loan_is_bounced
    type: int
    sql: ${TABLE}.LOAN_IsBounced

  - dimension: loan_is_esigned
    type: int
    sql: ${TABLE}.LOAN_IsESigned

  - dimension: loan_is_esigned20minutes
    type: int
    sql: ${TABLE}.LOAN_IsESigned20minutes

  - dimension: loan_is_express_loan
    type: int
    sql: ${TABLE}.LOAN_IsExpressLoan

  - dimension: loan_is_redirected
    type: int
    sql: ${TABLE}.LOAN_IsRedirected

  - dimension: loan_is_returning
    type: int
    sql: ${TABLE}.LOAN_IsReturning

  - dimension: loan_is_system_withdrawn
    type: int
    sql: ${TABLE}.LOAN_IsSystemWithdrawn

  - dimension: loan_is_wire_transfer
    type: int
    sql: ${TABLE}.LOAN_IsWireTransfer

  - dimension: loan_last_cl_verify_score
    type: int
    sql: ${TABLE}.LOAN_LastClVerifyScore

  - dimension: loan_last_clarity_decision
    sql: ${TABLE}.LOAN_LastClarityDecision

  - dimension: loan_last_datax_decision
    sql: ${TABLE}.LOAN_LastDataxDecision

  - dimension: loan_last_factor_trust_score
    type: int
    sql: ${TABLE}.LOAN_LastFactorTrustScore

  - dimension: loan_last_veritrac_decision
    sql: ${TABLE}.LOAN_LastVeritracDecision

  - dimension: loan_lead_acquired_ip
    sql: ${TABLE}.LOAN_LeadAcquiredIP

  - dimension: loan_lead_cost
    sql: ${TABLE}.LOAN_LeadCost

  - dimension: loan_lead_employment_type
    sql: ${TABLE}.LOAN_LeadEmploymentType

  - dimension: loan_lead_provider_name
    sql: ${TABLE}.LOAN_LeadProviderName

  - dimension: loan_loan_status
    sql: ${TABLE}.LOAN_LoanStatus

  - dimension: loan_loan_type
    sql: ${TABLE}.LOAN_LoanType

  - dimension: loan_minutes_to_sign
    type: int
    sql: ${TABLE}.LOAN_MinutesToSign

  - dimension: loan_original_loan_id
    type: int
    sql: ${TABLE}.LOAN_OriginalLoanId

  - dimension_group: loan_origination
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LOAN_OriginationDate

  - dimension: loan_other_offers
    type: int
    sql: ${TABLE}.LOAN_OtherOffers

  - dimension: loan_other_withdrawn_reason
    sql: ${TABLE}.LOAN_OtherWithdrawnReason

  - dimension_group: loan_paid_off
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LOAN_PaidOffDate

  - dimension: loan_parent_loan_id
    type: int
    sql: ${TABLE}.LOAN_ParentLoanId

  - dimension: loan_program
    sql: ${TABLE}.LOAN_Program

  - dimension: loan_ref_url
    sql: ${TABLE}.LOAN_RefUrl

  - dimension: loan_reject_reason
    sql: ${TABLE}.LOAN_RejectReason

  - dimension: loan_renewal_extensions
    type: int
    sql: ${TABLE}.LOAN_RenewalExtensions

  - dimension: loan_requested_amount
    type: int
    sql: ${TABLE}.LOAN_RequestedAmount

  - dimension: loan_signed_date
    sql: ${TABLE}.LOAN_SignedDate

  - dimension: loan_signed_ip
    sql: ${TABLE}.LOAN_SignedIP

  - dimension: loan_signed_time
    sql: ${TABLE}.LOAN_SignedTime

  - dimension: loan_state
    sql: ${TABLE}.LOAN_State

  - dimension: loan_store_name
    sql: ${TABLE}.LOAN_StoreName

  - dimension: loan_void_reason
    sql: ${TABLE}.LOAN_VoidReason

  - dimension: loan_vw_loans_id
    type: int
    sql: ${TABLE}.LOAN_vw_Loans_Id

  - dimension: loan_withdrawn_reason
    sql: ${TABLE}.LOAN_WithdrawnReason

  - dimension: pmt_ach_endpoint
    sql: ${TABLE}.PMT_AchEndpoint

  - dimension: pmt_assigned_agent
    sql: ${TABLE}.PMT_AssignedAgent

  - dimension: pmt_credit_reason
    type: int
    sql: ${TABLE}.PMT_CreditReason

  - dimension_group: pmt_date_copied_from_epic_dart
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.PMT_DateCopiedFromEpicDart

  - dimension_group: pmt_effective
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.PMT_EffectiveDate

  - dimension: pmt_fees_amount
    sql: ${TABLE}.PMT_FeesAmount

  - dimension: pmt_finance_fee
    sql: ${TABLE}.PMT_FinanceFee

  - dimension: pmt_id
    type: int
    sql: ${TABLE}.PMT_Id

  - dimension: pmt_is_debit
    type: int
    sql: ${TABLE}.PMT_IsDebit

  - dimension: pmt_is_origination
    type: int
    sql: ${TABLE}.PMT_IsOrigination

  - dimension: pmt_late_fee
    sql: ${TABLE}.PMT_LateFee

  - dimension: pmt_loan_id
    type: int
    sql: ${TABLE}.PMT_LoanId

  - dimension: pmt_nsf_fee
    sql: ${TABLE}.PMT_NsfFee

  - dimension: pmt_payment_agent
    sql: ${TABLE}.PMT_PaymentAgent

  - dimension: pmt_payment_amount
    sql: ${TABLE}.PMT_PaymentAmount

  - dimension: pmt_payment_status
    sql: ${TABLE}.PMT_PaymentStatus

  - dimension: pmt_payment_type
    sql: ${TABLE}.PMT_PaymentType

  - dimension: pmt_principle
    sql: ${TABLE}.PMT_Principle

  - dimension: pmt_return_code
    sql: ${TABLE}.PMT_ReturnCode

  - dimension_group: pmt_return
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.PMT_ReturnDate

  - dimension_group: pmt_success
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.PMT_SuccessDate

  - dimension: pmt_vw_payments_id
    type: int
    sql: ${TABLE}.PMT_vw_Payments_Id

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - loan_store_name
    - loan_lead_provider_name
    - client_first_name
    - client_middle_name
    - client_last_name
    - client_bank_name
    - client_employer_name
    - client_supervisor_name

