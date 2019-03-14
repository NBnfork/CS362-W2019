
import java.util.*;
import junit.framework.TestCase;

//You can use this as a skeleton for your 3 different test approach
//It is an optional to use this file, you can generate your own test file(s) to test the target function!
// Again, it is up to you to use this file or not!





public class UrlValidatorTest extends TestCase {

    int passingTests;
    int totalTestRun;
    public UrlValidatorTest(String testName) {
        super(testName);
    }


    public void testManualTest() {
//You can use this function to implement your manual testing	   

    }


    public void testYourFirstPartition() {


        //first partition will test random valid URLs
        System.out.println("----------------------------------------------------------");
        System.out.println(" RANDOMIZED TESTING");
        System.out.println("----------------------------------------------------------");
        System.out.println(" POSITIVE TEST CASES\n");
        System.out.println("----------------------------------------------------------");
        System.out.println(" validURLs with allschemes and allow_two_slashes, set\n");
        System.out.println("----------------------------------------------------------");

        //set number of tests to run
        int TESTRUNCOUNT = 100000;

        //run validURLs with allscheme, frags=true, twoslash=true
        for (int i = 0; i < TESTRUNCOUNT ; i++) {
            String validURL = getRandomvalidURL(true, true);

            //System.out.println("url to test: " + validURL);

            totalTestRun++;
            UrlValidator urlvalFragsandTwoSlashes = new UrlValidator(null, null, UrlValidator.ALLOW_ALL_SCHEMES + UrlValidator.ALLOW_2_SLASHES);
            try {
                assertBooleanMatchRandom(true, urlvalFragsandTwoSlashes.isValid(validURL));
            } catch (Throwable e) {
                System.out.println(e.getCause());
                System.out.println("error: " + e + "\n\n");
            }
        }


        //output results of run
        System.out.println(" Tests Passed: " + passingTests + " of " + totalTestRun);
        //reset totalTestsRun and passingTests
        totalTestRun = 0;
        passingTests = 0;


        System.out.println("----------------------------------------------------------");
        System.out.println(" validURLs with default constructor\n");  //ALL TESTS FAILING
        System.out.println("----------------------------------------------------------");

        //set number of tests to run

        //run validURLs with allscheme, frags=true, twoslash=true
        for (int i = 0; i < TESTRUNCOUNT ; i++) {
            String validURL = getRandomvalidURL(true, false);

            //System.out.println("url to test: " + validURL);

            totalTestRun++;
            //use default, also tried passing in schemes 100% failed
            UrlValidator urlval = new UrlValidator();
            try {
                assertBooleanMatchRandom(true, urlval.isValid(validURL));
            } catch (Throwable e) {
                System.out.println(e.getCause());
                System.out.println("error: " + e + "\n\n");
            }
        }


        //output results of run

        System.out.println(" Tests Passed: " + passingTests + " of " + totalTestRun);
        //reset totalTestsRun and passingTests
        totalTestRun = 0;
        passingTests = 0;

        System.out.println("----------------------------------------------------------");
        System.out.println(" validURLs with NOFRAGS constructor\n");
        System.out.println("----------------------------------------------------------");

        //set number of tests to run

        //run validURLs with allscheme, frags=true, twoslash=true
        for (int i = 0; i < TESTRUNCOUNT ; i++) {
            String validURL = getRandomvalidURL(false, false);

            //System.out.println("url to test: " + validURL);

            totalTestRun++;

            UrlValidator urlval = new UrlValidator(null, null, UrlValidator.ALLOW_ALL_SCHEMES + UrlValidator.NO_FRAGMENTS);
            try {
                assertBooleanMatchRandom(true, urlval.isValid(validURL));
            } catch (Throwable e) {
                System.out.println(e.getCause());
                System.out.println("error: " + e + "\n\n");
            }
        }


        //output results of run

        System.out.println(" Tests Passed: " + passingTests + " of " + totalTestRun);
        //reset testcount
    }


    public void testYourSecondPartition() {
        //you can use this function to implement your second partition testing

    }
    //you need to create more test cases for your partitions if you need to

    public void testisValid() {
        //you can use this function for programming based testing

    }


    private String getRandomvalidURL(boolean fragFlag, boolean twoSlashFlag){
        //make valid schemes and valid Authrorities
        String[] validSchemes = new String[]{"http://", "ftp://", "https://"};
        String[] validAuthorities = new String[]{"www.google.com",
                "go.com",
                "go.au",
                "0.0.0.0",
                "255.255.255.255",
                "255.com",
                "go.cn"};

        //ports number will be generated randomly
        char portColon = ':';

        //validpaths just need slashes and randomstrings
        String[] slash;
        if(twoSlashFlag) {
            slash = new String[]{"", "/", "//"};
        }
        else {
            slash = new String[]{"", "/"};
        }
        //validQueries = ? string = string ; etc.
        char qMark = '?';
        char qEqual = '=';
        char qSemiC = ';';

        //valid fragment + string
        char fragSymbol = '#';

        //valid URL building algorithm
        String validURL;
        //get random scheme and append

        //int schemeChoice = (int)(Math.random() * 2); BUG CHECK
        validURL = validSchemes[0];
        //get valid Authority and append
        int authoritityChoice = (int)(Math.random() * 6);
        validURL += validAuthorities[authoritityChoice];

        //add port?
        int addPortBool = (int)(Math.random() * 0);
        if(addPortBool > 0){
            //add colon and random port num
            validURL += portColon;
            int validPortInt = ((int)(Math.random() * 65535));
            //cast portnum to string
            String validPortStr = Integer.toString(validPortInt);
            validURL += validPortStr;
        }

        //add path with random number of interations MAX = 4
        int addPathIterator = (int)(Math.random() * 1);
        while(addPathIterator > 0) {
            //add single slash
            validURL += slash[1];
            //add string of random length
            int randomStringLength = (int) (Math.random() * 12 + 1);
            //characters a-z
            String validPathString = getRandomString(97, 122, randomStringLength);
            validURL += validPathString;
            addPathIterator--;
        }

        //add a trailing slash(s)
        int trailingSlashType;
        if(twoSlashFlag){
            trailingSlashType = (int)(Math.random() * 2); //0="", 1 = /, 2 = //
            validURL += slash[trailingSlashType];
        }else{
            trailingSlashType = (int)(Math.random() * 1);
            validURL += slash[trailingSlashType];
        }

        //add query with random number of interations
        int addQueryIterator = (int)(Math.random() * 4);
        if(addQueryIterator > 0) validURL += qMark;
        while(addQueryIterator > 0) {
            int randomStringLength = (int) (Math.random() * 12 + 1);
            //characters a-z
            String randomQueryString = getRandomString(97, 122, randomStringLength);
            validURL += randomQueryString;
            validURL += qEqual;
            randomStringLength = (int) (Math.random() * 12 + 1);
            //characters a-z
            randomQueryString = getRandomString(97, 122, randomStringLength);
            validURL += randomQueryString;
            if (addQueryIterator != 1) validURL += qSemiC;
            addQueryIterator--;
        }
        if (fragFlag) {
            //add fragment
            int addFragBool = (int) (Math.random() * 2);
            if (addFragBool > 0) {
                //add colon and random port num
                validURL += fragSymbol;
                int randomStringLength = (int) (Math.random() * 12 + 1);
                //characters a-z
                String randomFragString = getRandomString(97, 122, randomStringLength);
                validURL += randomFragString;
            }
        }
        return validURL;
    }
    /*
   the following code is modified version of the code found here:
   https://www.baeldung.com/java-random-string
   @param: leftlimit and rightlimit is ascii code for char to used, length is length of string returned
   */
    private String getRandomString(int leftlimit, int righlimit, int length) {

        int llimit = leftlimit; // letter 'a'
        int rlimit = righlimit; // letter 'z'
        int targetstringlength = length;
       Random random = new Random();
        StringBuilder buffer = new StringBuilder(targetstringlength);
        for (int i = 0; i < targetstringlength; i++) {
            int randomlimitedint = llimit + (int)
                    (random.nextFloat() * (rlimit - llimit + 1));
            buffer.append((char) randomlimitedint);
        }
        String generatedstring = buffer.toString();

        return generatedstring;
    }
    private void assertBooleanMatchRandom(boolean expected, boolean actual) {
        //System.out.println("Expected: " + expected + "     Actual: " + actual);

        if(expected == actual) {
            //System.out.println("Test passed!");
            passingTests++;
        } else {
            //System.out.println("Test failed!");
        }
        //System.out.print("\n\n");
    }
    public static void main(String[] args){
        String name = "test";
        UrlValidatorTest test = new UrlValidatorTest(name);
        test.testYourFirstPartition();

    }

}

