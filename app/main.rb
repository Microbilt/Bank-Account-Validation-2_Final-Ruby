require 'json'
require 'net/http'
require 'library'
require_relative '../Library/lib/BankAccountValidation2Client'
require_relative '../Library/lib/helpers/EnvironmentType'
require_relative '../Library/lib/clients/ACHCheckPrescreenLiteClient'
require_relative '../Library/lib/model/model'


bank_account_validation_client = BankAccountValidation::BankAccountValidation2Client.new("You_client_id", "You_client_id", EnvironmentType::Sandbox)

puts "Test GetReport:"

report_request_model = ACHCheckPrescreenLiteReportRequstModel.new(
  person_info: PersonInfo.new(
    person_name: PersonName.new(first_name: "Kevin", last_name: "Williams")
  ),
  contact_info: ContactInfo.new(
    phone_num: PhoneNum.new(phone: "2049529655", phone_type: "2")
  ),
  email_addr: "kwilliams@testmail.com",
  post_addr: PostAddr.new(
    addr1: "5982 Murdock Ave",
    city: "Bethel Park",
    postal_code: "15107",
    state_prov: "NH"
  ),
  tin_info: TINInfo.new(
    tax_id: "166605210",
    tin_type: "1"
  ),
  drivers_license: DriversLicense.new(
    license_num: "A123456789012",
    state_prov: "FL"
  ),
  employment_history: EmploymentHistory.new(
    org_info: OrgInfo.new(name: "Andover Systems")
  ),
  bank_account: BankAccount.new(
    org_info: OrgInfo.new(name: "Bank Of America"),
    account_num: "111010111",
    routing_number: "053200983",
    type_of_bank_acct: "1"
  ),
  income_info: IncomeInfo.new(
    monthly_income: MonthlyIncome.new(amt: "4100.00", cur_code: "USD"),
    pmt_freq: "BIWEEKLY",
    pay_per_period: PayPerPeriod.new(amt: "2000.00", cur_code: "USD"),
    dt_of_next_paycheck: "2009-01-15",
    dt_of_second_paycheck: "2009-01-31"
  ),
  references: References.new(
    contact_name: "Mark Taylor",
    phone_num: PhoneNum.new(phone_type: "2", phone: "7831113332")
  ),
  check_amt: CheckAmt.new(amt: "46.46"),
  check_num: "1234",
  rule_num: "500",
  lane_id: "113"
)

report_request_model_json = JSON.generate(report_request_model.to_h)
puts report_request_model_json

report = bank_account_validation_client.ach_check_prescreen_light_client.get_report(report_request_model_json)
puts "GetReport = #{report}"

puts "Test GetArchiveReport:"
archive_report = bank_account_validation_client.ach_check_prescreen_light_client.get_archive_report("0B75ABF4-0360-48BC-816D-6687FB7089F0")
puts "GetArchiveReport = #{archive_report}"


puts "Test get_report_performance:"

# Create an instance of ReportPerformanceRequest
report_performance_request = ACHCheckPrescreenLiteReportPerfomanceRequstModel.new(
  check_info: Checkinfo.new(
    account_number: "1007",
    amount: 25.45,
    check_number: 150,
    closure_reason: "AccountAbuse",
    return_date: "2020-10-16",
    return_reason: "R01",
    routing_number: "052001633",
    sec_code: "WEB",
    service_fee: 15,
    type: "P",
    verification_result: "A"
  ),
  consumer_info: Consumerinfo.new(
    address: Address.new(city: "Memphis", line: "555MainSt", state: "TN", zip_code: "05555"),
    emails: [Email.new(address: "myemailbox@mailbox.com", type: "HOME")],
    identifications: [Identification.new(number: "S12345678", state: "NY", type: "DL")],
    name: Name.new(first: "John", last: "Doe", middle: "K"),
    phone_numbers: [Phonenumber.new(number: "5076625555", type: "HOME")]
  ),
  merchant_info: Merchantinfo.new(
    group_number: "10",
    lane_number: "12",
    mcc_code: "518",
    merchant_number: "300",
    name: "PrecisePayments",
    rule_number: "5",
    site_number: "500200",
    zip_code: "08163"
  ),
  transaction_info: Transactioninfo.new(
    client_reference_number: "NRC3049115",
    date: "2020-10-16",
    time: "14:35:00",
    transaction_number: "1235",
    type: "10"
  )
)

# Convert the object to a hash and serialize to JSON
report_performance_request_json = JSON.pretty_generate(report_performance_request.to_h)
puts report_performance_request_json

report = bank_account_validation_client.ach_check_prescreen_light_client.get_report_performance(report_performance_request_json)
puts "GetReportPerformance = #{report}"
