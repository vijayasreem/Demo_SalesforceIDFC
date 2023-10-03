public class DocumentVerificationClass {

// method to document verification 
  public String documentVerificationMethod(Boolean identityVerification, Boolean addressVerification) {
    if (identityVerification && addressVerification) {
      return 'Success - Both identity and address have been verified';
    } 
    else if (!identityVerification && !addressVerification) {
      return 'Incomplete Verification - Both identity and address have not been verified';
    } 
    else {
      if (!identityVerification) {
        return 'Identity verification not completed';
      } else {
        return 'Address verification not completed';
      }
    }
  }

// method to validate credit evaluation 
  public String validateCreditEvaluation(Integer annualIncome, Integer creditScore) {
    if (annualIncome >= 30000 && creditScore >= 700) {
      return 'Congratulations - You are eligible for a high limit credit score';
    } 
    else if (annualIncome >= 20000 && creditScore >= 600) {
      return 'You are eligible for a moderate limit credit score';
    } 
    else {
      return 'Sorry, you are not eligible for a credit score';
    }
  }

// method to disbursement 
  public String disbursement(Integer disbursedAmount, Integer vehicleAssessmentValue) {
    if (disbursedAmount <= vehicleAssessmentValue) {
      return 'Vehicle assessment passed and the disbursed amount is ' + disbursedAmount;
    } 
    else if (disbursedAmount > vehicleAssessmentValue) {
      return 'Loan amount cannot exceed the vehicle value';
    } 
    else if (paymentApprovalGranted && sufficientFundsAvailable) {
      return 'Successful disbursement';
    } 
    else if (vendorInformationVerificationFailed) {
      return 'Invalid vendor information';
    } 
    else if (insufficientFundsForDisbursement) {
      return 'Lack of funds';
    }
  }

}