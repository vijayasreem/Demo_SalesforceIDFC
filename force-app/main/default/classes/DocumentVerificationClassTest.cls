// Unit Tests
@isTest
private class DocumentVerificationClassTest {

  static testMethod void documentVerificationMethodTest() {
    DocumentVerificationClass documentVerificationClass = new DocumentVerificationClass();

    // Test for success
    String result = documentVerificationClass.documentVerificationMethod(true, true);
    System.assertEquals('Success - Both identity and address have been verified', result);

    // Test for incomplete verification
    result = documentVerificationClass.documentVerificationMethod(false, false);
    System.assertEquals('Incomplete Verification - Both identity and address have not been verified', result);

    // Test for identity verification not completed
    result = documentVerificationClass.documentVerificationMethod(false, true);
    System.assertEquals('Identity verification not completed', result);

    // Test for address verification not completed
    result = documentVerificationClass.documentVerificationMethod(true, false);
    System.assertEquals('Address verification not completed', result);
  }

  static testMethod void validateCreditEvaluationTest() {
    DocumentVerificationClass documentVerificationClass = new DocumentVerificationClass();

    // Test for high limit credit score
    String result = documentVerificationClass.validateCreditEvaluation(30000, 700);
    System.assertEquals('Congratulations - You are eligible for a high limit credit score', result);

    // Test for moderate limit credit score
    result = documentVerificationClass.validateCreditEvaluation(20000, 600);
    System.assertEquals('You are eligible for a moderate limit credit score', result);

    // Test for no eligibility
    result = documentVerificationClass.validateCreditEvaluation(10000, 500);
    System.assertEquals('Sorry, you are not eligible for a credit score', result);
  }

  static testMethod void disbursementTest() {
    DocumentVerificationClass documentVerificationClass = new DocumentVerificationClass();

    // Test for successful disbursement
    String result = documentVerificationClass.disbursement(20000, 20000);
    System.assertEquals('Vehicle assessment passed and the disbursed amount is 20000', result);

    // Test for loan amount not exceeding vehicle value
    result = documentVerificationClass.disbursement(30000, 20000);
    System.assertEquals('Loan amount cannot exceed the vehicle value', result);

    // Test for successful disbursement with payment approval granted and sufficient funds available
    result = documentVerificationClass.disbursement(20000, 20000, true, true);
    System.assertEquals('Successful disbursement', result);

    // Test for invalid vendor information
    result = documentVerificationClass.disbursement(20000, 20000, false, true, true);
    System.assertEquals('Invalid vendor information', result);

    // Test for lack of funds
    result = documentVerificationClass.disbursement(20000, 20000, false, false, false);
    System.assertEquals('Lack of funds', result);
  }

}