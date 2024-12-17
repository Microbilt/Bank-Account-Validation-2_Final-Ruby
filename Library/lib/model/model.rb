class ACHCheckPrescreenLiteReportRequstModel
  attr_accessor :personInfo, :contactInfo, :emailAddr, :postAddr, :tinInfo, :driverslicense,
                :employmentHistory, :bankAccount, :incomeInfo, :references, :checkAmt, :checkNum,
                :ruleNum, :laneId

  def initialize(person_info:, contact_info:, email_addr:, post_addr:, tin_info:, drivers_license:,
                 employment_history:, bank_account:, income_info:, references:, check_amt:, check_num:,
                 rule_num:, lane_id:)
    @personInfo = person_info
    @contactInfo = contact_info
    @emailAddr = email_addr
    @postAddr = post_addr
    @tinInfo = tin_info
    @driversLicense = drivers_license
    @employmentHistory = employment_history
    @bankAccount = bank_account
    @incomeInfo = income_info
    @references = references
    @checkAmt = check_amt
    @checkNum = check_num
    @ruleNum = rule_num
    @laneId = lane_id
  end

  def to_h
    {
      personInfo: @personInfo.to_h,
      contactInfo: @contactInfo.to_h,
      emailAddr: @emailAddr,
      postAddr: @postAddr.to_h,
      tinInfo: @tinInfo.to_h,
      driversLicense: @driversLicense.to_h,
      employmentHistory: @employmentHistory.to_h,
      bankAccount: @bankAccount.to_h,
      incomeInfo: @incomeInfo.to_h,
      references: @references.to_h,
      checkAmt: @checkAmt.to_h,
      checkNum: @checkNum,
      ruleNum: @ruleNum,
      laneId: @laneId
    }
  end
end

class CheckAmt
  attr_accessor :amt

  def initialize(amt:)
    @amt = amt
  end

  def to_h
    { amt: @amt }
  end
end

class References
  attr_accessor :phoneNum, :contactName

  def initialize(phone_num:, contact_name:)
    @phoneNum = phone_num
    @contactName = contact_name
  end

  def to_h
    {
      phoneNum: @phoneNum.to_h,
      contactName: @contactName
    }
  end
end

class IncomeInfo
  attr_accessor :monthlyIncome, :pmtFreq, :payPerPeriod, :dtOfNextPaycheck, :dtOfSecondPaycheck

  def initialize(monthly_income:, pmt_freq:, pay_per_period:, dt_of_next_paycheck:, dt_of_second_paycheck:)
    @monthlyIncome = monthly_income
    @pmtFreq = pmt_freq
    @payPerPeriod = pay_per_period
    @dtOfNextPaycheck = dt_of_next_paycheck
    @dtOfSecondPaycheck = dt_of_second_paycheck
  end

  def to_h
    {
      monthlyIncome: @monthlyIncome.to_h,
      pmtFreq: @pmtFreq,
      payPerPeriod: @payPerPeriod.to_h,
      dtOfNextPaycheck: @dtOfNextPaycheck,
      dtOfSecondPaycheck: @dtOfSecondPaycheck
    }
  end
end

class PayPerPeriod
  attr_accessor :amt, :curCode

  def initialize(amt:, cur_code:)
    @amt = amt
    @curCode = cur_code
  end

  def to_h
    { amt: @amt, curCode: @curCode }
  end
end

class MonthlyIncome
  attr_accessor :amt, :curCode

  def initialize(amt:, cur_code:)
    @amt = amt
    @curCode = cur_code
  end

  def to_h
    { amt: @amt, curCode: @curCode }
  end
end

class BankAccount
  attr_accessor :orgInfo, :routingNumber, :accountNum, :typeOfBankAcct

  def initialize(org_info:, routing_number:, account_num:, type_of_bank_acct:)
    @orgInfo = org_info
    @routingNumber = routing_number
    @accountNum = account_num
    @typeOfBankAcct = type_of_bank_acct
  end

  def to_h
    {
      orgInfo: @orgInfo.to_h,
      routingNumber: @routingNumber,
      accountNum: @accountNum,
      typeOfBankAcct: @typeOfBankAcct
    }
  end
end

class EmploymentHistory
  attr_accessor :orgInfo

  def initialize(org_info:)
    @orgInfo = org_info
  end

  def to_h
    { orgInfo: @orgInfo.to_h }
  end
end

class OrgInfo
  attr_accessor :name

  def initialize(name:)
    @name = name
  end

  def to_h
    { name: @name }
  end
end

class DriversLicense
  attr_accessor :licenseNum, :stateProv

  def initialize(license_num:, state_prov:)
    @licenseNum = license_num
    @stateProv = state_prov
  end

  def to_h
    { licenseNum: @licenseNum, stateProv: @stateProv }
  end
end

class TINInfo
  attr_accessor :tinType, :taxId

  def initialize(tin_type:, tax_id:)
    @tinType = tin_type
    @taxId = tax_id
  end

  def to_h
    { tinType: @tinType, taxId: @taxId }
  end
end

class PostAddr
  attr_accessor :addr1, :city, :stateProv, :postalCode

  def initialize(addr1:, city:, state_prov:, postal_code:)
    @addr1 = addr1
    @city = city
    @stateProv = state_prov
    @postalCode = postal_code
  end

  def to_h
    {
      addr1: @addr1,
      city: @city,
      stateProv: @stateProv,
      postalCode: @postalCode
    }
  end
end

class ContactInfo
  attr_accessor :phoneNum

  def initialize(phone_num:)
    @phoneNum = phone_num
  end

  def to_h
    { phoneNum: @phoneNum.to_h }
  end
end

class PhoneNum
  attr_accessor :phoneType, :phone

  def initialize(phone_type:, phone:)
    @phoneType = phone_type
    @phone = phone
  end

  def to_h
    { phoneType: @phoneType, phone: @phone }
  end
end

class PersonInfo
  attr_accessor :personName

  def initialize(person_name:)
    @personName = person_name
  end

  def to_h
    { personName: @personName.to_h }
  end
end

class PersonName
  attr_accessor :lastName, :firstName

  def initialize(last_name:, first_name:)
    @lastName = last_name
    @firstName = first_name
  end

  def to_h
    { lastName: @lastName, firstName: @firstName }
  end
end

# For the ACHCheckPrescreenLiteReportPerfomanceRequstModel class and its related classes:

class ACHCheckPrescreenLiteReportPerfomanceRequstModel
  attr_accessor :checkInfo, :consumerInfo, :merchantInfo, :transactionInfo

  def initialize(check_info:, consumer_info:, merchant_info:, transaction_info:)
    @checkInfo = check_info
    @consumerInfo = consumer_info
    @merchantInfo = merchant_info
    @transactionInfo = transaction_info
  end

  def to_h
    {
      checkInfo: @checkInfo.to_h,
      consumerInfo: @consumerInfo.to_h,
      merchantInfo: @merchantInfo.to_h,
      transactionInfo: @transactionInfo.to_h
    }
  end
end

class Checkinfo
  attr_accessor :accountNumber, :amount, :checkNumber, :closureReason, :returnDate, :returnReason,
                :routingNumber, :secCode, :serviceFee, :type, :verificationResult

  def initialize(account_number:, amount:, check_number:, closure_reason:, return_date:, return_reason:, routing_number:, sec_code:, service_fee:, type:, verification_result:)
    @accountNumber = account_number
    @amount = amount
    @checkNumber = check_number
    @closureReason = closure_reason
    @returnDate = return_date
    @returnReason = return_reason
    @routingNumber = routing_number
    @secCode = sec_code
    @serviceFee = service_fee
    @type = type
    @verificationResult = verification_result
  end

  def to_h
    {
      accountNumber: @accountNumber,
      amount: @amount,
      checkNumber: @checkNumber,
      closureReason: @closureReason,
      returnDate: @returnDate,
      returnReason: @returnReason,
      routingNumber: @routingNumber,
      secCode: @secCode,
      serviceFee: @serviceFee,
      type: @type,
      verificationResult: @verificationResult
    }
  end
end

class Consumerinfo
  attr_accessor :address, :emails, :identifications, :name, :phoneNumbers

  def initialize(address:, emails:, identifications:, name:, phone_numbers:)
    @address = address
    @emails = emails
    @identifications = identifications
    @name = name
    @phoneNumbers = phone_numbers
  end

  def to_h
    {
      address: @address.to_h,
      emails: @emails.map(&:to_h),
      identifications: @identifications.map(&:to_h),
      name: @name.to_h,
      phoneNumbers: @phoneNumbers.map(&:to_h)
    }
  end
end

class Address
  attr_accessor :city, :line, :state, :zipCode

  def initialize(city:, line:, state:, zip_code:)
    @city = city
    @line = line
    @state = state
    @zipCode = zipCode
  end

  def to_h
    {
      city: @city,
      line: @line,
      state: @state,
      zipCode: @zipCode
    }
  end
end

class Name
  attr_accessor :first, :last, :middle

  def initialize(first:, last:, middle:)
    @first = first
    @last = last
    @middle = middle
  end

  def to_h
    { first: @first, last: @last, middle: @middle }
  end
end

class Email
  attr_accessor :address, :type

  def initialize(address:, type:)
    @address = address
    @type = type
  end

  def to_h
    { address: @address, type: @type }
  end
end

class Identification
  attr_accessor :number, :state, :type

  def initialize(number:, state:, type:)
    @number = number
    @state = state
    @type = type
  end

  def to_h
    { number: @number, state: @state, type: @type }
  end
end

class Phonenumber
  attr_accessor :number, :type

  def initialize(number:, type:)
    @number = number
    @type = type
  end

  def to_h
    { number: @number, type: @type }
  end
end

class Merchantinfo
  attr_accessor :groupNumber, :laneNumber, :mccCode, :merchantNumber, :name, :ruleNumber, :siteNumber, :zipCode

  def initialize(group_number:, lane_number:, mcc_code:, merchant_number:, name:, rule_number:, site_number:, zip_code:)
    @groupNumber = group_number
    @laneNumber = lane_number
    @mccCode = mcc_code
    @merchantNumber = merchant_number
    @name = name
    @ruleNumber = rule_number
    @siteNumber = site_number
    @zipCode = zip_code
  end

  def to_h
    {
      groupNumber: @groupNumber,
      laneNumber: @laneNumber,
      mccCode: @mccCode,
      merchantNumber: @merchantNumber,
      name: @name,
      ruleNumber: @ruleNumber,
      siteNumber: @siteNumber,
      zipCode: @zipCode
    }
  end
end

class Transactioninfo
  attr_accessor :clientReferenceNumber, :date, :time, :transactionNumber, :type

  def initialize(client_reference_number:, date:, time:, transaction_number:, type:)
    @clientReferenceNumber = client_reference_number
    @date = date
    @time = time
    @transactionNumber = transaction_number
    @type = type
  end

  def to_h
    {
      clientReferenceNumber: @clientReferenceNumber,
      date: @date,
      time: @time,
      transactionNumber: @transactionNumber,
      type: @type
    }
  end
end
