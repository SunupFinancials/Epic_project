- view: vw_rpt_loans_today
  sql_table_name: vw_RPT_Loans_Today
  fields:

  - dimension_group: calc_aging
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.Calc_Aging_date

  - dimension: calc_bucket
    sql: ${TABLE}.Calc_Bucket

  - dimension: calc_exclude_test
    type: int
    sql: ${TABLE}.Calc_Exclude_Test

  - dimension_group: calc_fpd
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.Calc_FPD_Date

  - dimension: calc_loan_status
    sql: ${TABLE}.Calc_Loan_Status

  - dimension: calc_origination_week
    type: int
    sql: ${TABLE}.Calc_Origination_Week

  - dimension_group: calc_pmt_last
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.Calc_Pmt_LastDate

  - dimension_group: calc_snapshot
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.Calc_Snapshot_Date

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

  - dimension: loan_id_1
    type: int
    sql: ${TABLE}.LoanId

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

  - measure: count
    type: count
    drill_fields: [loan_store_name, loan_lead_provider_name]

