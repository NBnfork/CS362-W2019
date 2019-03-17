
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
   //see main below

    }


    public void testYourFirstPartition() {

        //set number of tests to run
        int TESTRUNCOUNT = 100000;


        //first partition will test random valid URLs
        System.out.println("----------------------------------------------------------");
        System.out.println(" RANDOMIZED TESTING");
        System.out.println("----------------------------------------------------------");
        System.out.println(" POSITIVE TEST CASES");

        //**BUG FOUND** all calls to default constructor without agruments produce error

        System.out.println("----------------------------------------------------------");
        System.out.println(" validURLs with default constructor");  //ALL TESTS FAILING
        System.out.println("----------------------------------------------------------");

        //for use with negative test cases
        boolean[] validParts = new boolean[]{true,true,true,true,true,true};

        for (int i = 0; i < TESTRUNCOUNT ; i++) {
            String validURL = getRandomURL(true, false, validParts);

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

        //run validURLs with allscheme, frags=true, twoslash=true
        System.out.println("----------------------------------------------------------");
        System.out.println(" validURLs with ALLOW_ALL_SCHEMES + ALLOW_TWO_SLASHES, set");
        System.out.println("----------------------------------------------------------");

        for (int i = 0; i < TESTRUNCOUNT ; i++) {
            String validURL = getRandomURL(true, true, validParts);

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

        //run validURLs with allscheme, frags=false, twoslash=false
        System.out.println("----------------------------------------------------------");
        System.out.println(" validURLs with ALLOW_ALL_SCHEMES + NO_FRAGMENTS ");
        System.out.println("----------------------------------------------------------");

        //set number of tests to run

        for (int i = 0; i < TESTRUNCOUNT ; i++) {
            String validURL = getRandomURL(false, false, validParts);

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
        //reset totalTestsRun and passingTests
        totalTestRun = 0;
        passingTests = 0;

        //run validURLs with allscheme, frags=true, twoslash=false
        System.out.println("----------------------------------------------------------");
        System.out.println(" validURLs with ALLOW_ALL_SCHEMES  ");
        System.out.println("----------------------------------------------------------");

        //set number of tests to run

        for (int i = 0; i < TESTRUNCOUNT ; i++) {
            String validURL = getRandomURL(true, false, validParts);

            //System.out.println("url to test: " + validURL);

            totalTestRun++;

            UrlValidator urlval = new UrlValidator(null, null, UrlValidator.ALLOW_ALL_SCHEMES );
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

        //run validURLs with allscheme, frags=true, twoslash=false
        System.out.println("----------------------------------------------------------");
        System.out.println(" validURLs with ALLOW_ALL_SCHEMES + ALLOW_TWO_SLASH + NO_FRAGMENTS");
        System.out.println("----------------------------------------------------------");

        //set number of tests to run

        for (int i = 0; i < TESTRUNCOUNT ; i++) {
            String validURL = getRandomURL(false, true, validParts);

            //System.out.println("url to test: " + validURL);

            totalTestRun++;

            UrlValidator urlval = new UrlValidator(null, null, UrlValidator.ALLOW_ALL_SCHEMES + UrlValidator.ALLOW_2_SLASHES + UrlValidator.NO_FRAGMENTS );
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
        /*
        //run validURLs with RegexValidator allscheme, frags=true, twoslash=false
        System.out.println("----------------------------------------------------------");
        System.out.println(" validURLs with REGEXVALIDATOR ALLOW_ALL_SCHEMES");
        System.out.println("----------------------------------------------------------");

        //set number of tests to run

        for (int i = 0; i < TESTRUNCOUNT ; i++) {
            String validURL = getRandomURL(true, false, validParts);

            //System.out.println("url to test: " + validURL);

            totalTestRun++;
            try {
                RegexValidator authorityValidator = new RegexValidator("*");
                UrlValidator urlValRegExValidator = new UrlValidator(null, authorityValidator, UrlValidator.ALLOW_ALL_SCHEMES);
                assertBooleanMatchRandom(false, urlValRegExValidator.isValid(validURL));
            } catch (Throwable e) {
                //System.out.println(e.getCause());
                //System.out.println("error: " + e + "\n\n");
            }
        }


        //output results of run

        System.out.println(" Tests Passed: " + passingTests + " of " + totalTestRun);
        //reset totalTestsRun and passingTests
        totalTestRun = 0;
        passingTests = 0;*/
    }


    public void testYourSecondPartition() {
        //set number of tests to run
        int TESTRUNCOUNT = 100000;


        //second partition will test URLs with random invalidParts
        System.out.println("----------------------------------------------------------");
        System.out.println(" NEGATIVE TEST CASES");




//run invalidURLs with allscheme, frags=true, twoslash=true
        System.out.println("----------------------------------------------------------");
        System.out.println(" invalidURLs with ALLOW_ALL_SCHEMES + ALLOW_TWO_SLASHES, set");
        System.out.println("----------------------------------------------------------");

        for (int i = 0; i < TESTRUNCOUNT ; i++) {
            //set random number of parts invalid
            //intialize validParts
            boolean[] validParts = new boolean[]{true,true,true,true,true,true};
            boolean noneSet = true;
            for (int j = 0; j < 6 ; j++) {
                //50% chance to make each part invalid
                int makeInvalid = (int)(Math.random() * 3);
                if (makeInvalid == 1){
                    validParts[j] = false;
                    noneSet = false;
                }
              validParts[1] = false;
            }
            String randomURL = getRandomURL(true, true, validParts);

            //System.out.println("url to test: " + randomURL);

            totalTestRun++;
            UrlValidator urlvalFragsandTwoSlashes = new UrlValidator(null, null, UrlValidator.ALLOW_ALL_SCHEMES + UrlValidator.ALLOW_2_SLASHES);
            try {
                assertBooleanMatchRandom(false, urlvalFragsandTwoSlashes.isValid(randomURL));
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

        //run randomURLs with allscheme, frags=false, twoslash=false
        System.out.println("----------------------------------------------------------");
        System.out.println(" inrandomURLs with ALLOW_ALL_SCHEMES + NO_FRAGMENTS ");
        System.out.println("----------------------------------------------------------");

        //set number of tests to run

        for (int i = 0; i < TESTRUNCOUNT ; i++) {
            //set random number of parts invalid
            //intialize validParts
            boolean[] validParts = new boolean[]{true,true,true,true,true,true};
            boolean noneSet = true;
            for (int j = 0; j < 6 ; j++) {
                //50% chance to make each part invalid
                int makeInvalid = (int)(Math.random() * 3);
                if (makeInvalid == 1){
                    validParts[j] = false;
                    noneSet = false;
                }
            }
            String randomURL = getRandomURL(true, false, validParts);

            //System.out.println("url to test: " + randomURL);

            totalTestRun++;

            UrlValidator urlval = new UrlValidator(null, null, UrlValidator.ALLOW_ALL_SCHEMES + UrlValidator.NO_FRAGMENTS);
            try {
                assertBooleanMatchRandom(false, urlval.isValid(randomURL));
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

        //run invalidURLs with allscheme, frags=true, twoslash=false
        System.out.println("----------------------------------------------------------");
        System.out.println(" invalidURLs with ALLOW_ALL_SCHEMES  ");
        System.out.println("----------------------------------------------------------");

        //set number of tests to run

        for (int i = 0; i < TESTRUNCOUNT ; i++) {
            //set random number of parts invalid
            //intialize validParts
            boolean[] validParts = new boolean[]{true,true,true,true,true,true};
            boolean noneSet = true;
            for (int j = 0; j < 6 ; j++) {
                //50% chance to make each part invalid
                int makeInvalid = (int)(Math.random() * 3);
                if (makeInvalid == 1){
                    validParts[j] = false;
                    noneSet = false;
                }
            }
            String randomURL = getRandomURL(true, true, validParts);

            //System.out.println("url to test: " + randomURL);

            totalTestRun++;

            UrlValidator urlval = new UrlValidator(null, null, UrlValidator.ALLOW_ALL_SCHEMES );
            try {
                assertBooleanMatchRandom(false, urlval.isValid(randomURL));
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

        //run invalidURLs with allscheme, frags=true, twoslash=false
        System.out.println("----------------------------------------------------------");
        System.out.println(" invalidURLs with ALLOW_ALL_SCHEMES + ALLOW_TWO_SLASH + NO_FRAGMENTS");
        System.out.println("----------------------------------------------------------");

        //set number of tests to run

        for (int i = 0; i < TESTRUNCOUNT ; i++) {
            //set random number of parts invalid
            //intialize validParts
            boolean[] validParts = new boolean[]{true,true,true,true,true,true};
            boolean noneSet = true;
            for (int j = 1; j < 6 ; j++) {
                //50% chance to make each part invalid
                int makeInvalid = (int)(Math.random() * 3);
                if (makeInvalid == 1){
                    validParts[j] = false;
                    noneSet = false;
                }
            }
            String randomURL = getRandomURL(false, true, validParts);

            //System.out.println("url to test: " + randomURL);

            totalTestRun++;

            UrlValidator urlval = new UrlValidator(null, null, UrlValidator.ALLOW_ALL_SCHEMES + UrlValidator.ALLOW_2_SLASHES + UrlValidator.NO_FRAGMENTS );
            try {
                assertBooleanMatchRandom(false, urlval.isValid(randomURL));
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
    }
    //you need to create more test cases for your partitions if you need to

    public void testisValid() {
        System.out.println("----------------------------------------------------------");
        System.out.println("PROGRAMMING BASED TESTING");
        System.out.println("----------------------------------------------------------");
        System.out.println("\nNEGATIVE TEST CASES\n\n");

        String schemes[] = {"http"};

        UrlValidator urlVal = new UrlValidator(null, null, UrlValidator.ALLOW_ALL_SCHEMES);
        UrlValidator urlValNoFragments = new UrlValidator(null, null, UrlValidator.ALLOW_ALL_SCHEMES + UrlValidator.NO_FRAGMENTS);
        UrlValidator urlValTwoSlashes = new UrlValidator(null, null, UrlValidator.ALLOW_ALL_SCHEMES + UrlValidator.ALLOW_2_SLASHES);
        UrlValidator urlValSchemes = new UrlValidator(schemes);

        System.out.println("Test 1: return false if url is null");
        assertBooleanMatch(false, urlVal.isValid(null));

        System.out.println("Test 2: return false if url scheme is invalid");
        try {
            assertBooleanMatch(false, urlVal.isValid("htt://www.google.com/"));
        } catch (Throwable e) {
            System.out.println(e.getCause());
            System.out.println("ERROR: " + e + "\n\n");
        }

        System.out.println("Test 3: return false if the scheme is 'file', the url does not have "
                + "an empty authority, and the authority contains ':'");
        try {
            assertBooleanMatch(false, urlVal.isValid("file://test:"));
        } catch (Throwable e) {
            System.out.println("ERROR: " + e + "\n\n");
        }

        System.out.println("Test 4: return false if the scheme is not 'file' and has an invalid"
                + " authority and no RegExValidator provided");
        assertBooleanMatch(false, urlVal.isValid("http://"));

        System.out.println("Test 5: return false if the url has an invalid path");
        assertBooleanMatch(false, urlVal.isValid("http://www.google.com/^"));

        System.out.println("Test 6: return false if the url path starts with '/../'");
        assertBooleanMatch(false, urlVal.isValid("http://www.google.com/../test"));

        System.out.println("Test 7: return false if the url path is '/..'");
        assertBooleanMatch(false, urlVal.isValid("http://www.google.com/.."));

        System.out.println("Test 8: return false if the url path has '//' and ALLOW_2_SLASHES is turned off");
        assertBooleanMatch(false, urlVal.isValid("http://www.google.com//test"));

        System.out.println("Test 9: return false if the url query is an empty space");
        assertBooleanMatch(false, urlVal.isValid("http://www.google.com/test? ?"));

        System.out.println("Test 10: return false if the url has a fragment but NO_FRAGMENTS is turned on");
        assertBooleanMatch(false, urlValNoFragments.isValid("http://www.google.com/test#fragment"));

        System.out.println("\n\n----------------------------------------------------------");
        System.out.println("POSITIVE TEST CASES\n\n");

        System.out.println("Test 11: return true if the url has a valid scheme of http");
        assertBooleanMatch(true, urlVal.isValid("http://www.google.com/"));

        System.out.println("Test 12: return true if the url has a valid scheme of https");
        try {
            assertBooleanMatch(true, urlVal.isValid("https://www.google.com/"));
        } catch (Error e) {
            System.out.println("ERROR: " + e + "\n\n");
        }

        System.out.println("Test 13: return true if the scheme is 'file' and has an empty authority");
        try {
            assertBooleanMatch(true, urlVal.isValid("file://"));
        } catch (Error e) {
            System.out.println("ERROR: " + e + "\n\n");
        }

        System.out.println("Test 14: return true if the scheme is 'file', does not have an empty authority, and does not contain ':'");
        try {
            assertBooleanMatch(true, urlVal.isValid("file://test"));
        } catch (Error e) {
            System.out.println("ERROR: " + e + "\n\n");
        }

        System.out.println("Test 15: return true if the url path has '//' and ALLOW_2_SLASHES is on");
        assertBooleanMatch(true, urlValTwoSlashes.isValid("http://www.google.com/test//file"));

        System.out.println("Test 16: return true if the url path has a fragment and NO_FRAGMENTS is off");
        assertBooleanMatch(true, urlVal.isValid("http://www.google.com/test#fragment"));

        System.out.println("\n\n----------------------------------------------------------");
        System.out.println("BOUNDARY TEST CASES\n\n");

        System.out.println("Test 17: return false if the url does not match a normal url path");
        assertBooleanMatch(false, urlVal.isValid("http::/what**<"));

        System.out.println("Test 18: return false if the url schema is not a real schema");
        try {
            assertBooleanMatch(false, urlVal.isValid("notreal://www.google.com"));
        } catch (Error e) {
            System.out.println("ERROR: " + e + "\n\n");
        }

        System.out.println("Test 19: return true if the url is long but valid");
        assertBooleanMatch(true, urlVal.isValid("http://smile.amazon.com/apb/page/ref=gbps_tit_s-5_5baf_057e0599?handlerName=OctopusDealLandingStream&deals=057e0599&marketplaceId=ATVPDKIKX0DER&showVariations=false&smid=A2EPN08Z0FPLG4&pf_rd_p=a7e1c818-e7bc-4318-ae47-1f5300505baf&pf_rd_s=slot-5&pf_rd_t=701&pf_rd_i=gb_main&pf_rd_m=ATVPDKIKX0DER&pf_rd_r=JTVAMPJV3T309CTGXW4W"));

        System.out.println("Test 20: return true if the url is valid and passes a RegExValidator in the constructor");
        try {
            RegexValidator authorityValidator = new RegexValidator("*");
            UrlValidator urlValRegExValidator = new UrlValidator(null, authorityValidator, UrlValidator.ALLOW_ALL_SCHEMES);
            assertBooleanMatch(false, urlValRegExValidator.isValid("http://www.google.com"));
        } catch (Throwable e) {
            System.out.println("ERROR: " + e + "\n\n");
        }

        System.out.println("Test 21: return true if scheme matches one passed to constructor");
        assertBooleanMatch(true, urlValSchemes.isValid("http://www.google.com"));


    }


    private String getRandomURL(boolean fragFlag, boolean twoSlashFlag, boolean[] validParts ){
        //make valid schemes and valid Authrorities
        String[] validSchemes = new String[]{"http://", "ftp://", "https://"};
        String[] validAuthorities = new String[]{"www.google.com",
                                                 "go.com",
                                                 "go.au",
                                                 "0.0.0.0",
                                                 "255.255.255.255",
                                                 "255.com",
                                                 "go.cn"};
        //make invalid schemes and Authorities
        String[] inValidSchemes = new String[]{"http:/", "fttp://", "https//"};
        String[] inValidAuthorities = new String[]{"wwwgoogle<com",
                "go&&<com",
                "<",
                "1,2.<3.4$",
                "b@Q<dA4th!r1ty",
                "255<com",
                "go<aa"};

        //port numbers will be generated randomly
        char portColon = ':';

        //paths  need slashes and randomstrings
        String[] slash;
        String[] invalidSlashes;
        if(twoSlashFlag) {
            slash = new String[]{"", "/", "//"};
            invalidSlashes = new String[] {"///", "\\", "\\\\"};
        }
        else {
            slash = new String[]{"", "/"};
            invalidSlashes = new String[] {"///", "\\"};
        }

        //validQueries = ? string = string ; etc.
        char qMark = '?';
        char qEqual = '=';
        char qSemiC = ';';

        //valid fragment + string
        char fragSymbol = '#';

        //URL building algorithm
        String randomURL;

        //get random scheme and append

        //**BUG FOUND** URLValidator all schemes except http, produce error, so only http will be tested for validURL
        //int schemeChoice = (int)(Math.random() * 2); BUG CHECK
        //check for validParts[0] 1 = valid
        //if(validParts[0]) {
            randomURL = validSchemes[0];
       // }else {
         //   int invalidSchemeChoice = (int)(Math.random() * 3);
           // randomURL = inValidSchemes[invalidSchemeChoice];
        //}

        //check validParts
        int authoritityChoice = (int)(Math.random() * 6);
        if(validParts[1]) {
            //get valid Authority and append
            randomURL += validAuthorities[authoritityChoice];
        }else{
            randomURL += inValidAuthorities[authoritityChoice];
        }

        //**BUG FOUND** URLValidator. java LINE:318 file: changed to to http "special case" scheme bug prevents any testing of valid good ports or invalid ports
        //check validParts
        if (validParts[2]) {
            //add port number
            int addPortBool = (int) (Math.random() * 4);
            if (addPortBool > 2) {
                //add colon and random port numb
                randomURL += portColon;
                int validPortInt = ((int) (Math.random() * 65535));
                //cast portnum to string
                String validPortStr = Integer.toString(validPortInt);
                randomURL += validPortStr;
            }
        }

        //**BUG FOUND ** URLValidator.java LINE: 168, PATH_REGEX miss /~ all valid Paths return false
        //check validParts
        if(validParts[3]) {
            //add path with random number of iterations MAX = 4
            int addPathIterator = (int) (Math.random() * 4);
            while (addPathIterator > 0) {
                //add single slash
                randomURL += slash[1];
                //add string of random length
                int randomStringLength = (int) (Math.random() * 12 + 1);
                //characters a-z
                String validPathString = getRandomString(97, 122, randomStringLength);
                randomURL += validPathString;
                addPathIterator--;
            }


            //add a trailing slash(s)
            int trailingSlashType;
            if (twoSlashFlag) {
                trailingSlashType = (int) (Math.random() * 2); //0="", 1 = /, 2 = //
                randomURL += slash[trailingSlashType];
            } else {
                trailingSlashType = (int) (Math.random() * 1);
                randomURL += slash[trailingSlashType];
            }
        }

        //check validParts
        if(validParts[4]) {
            //add query with random number of interations
            int addQueryIterator = (int) (Math.random() * 4);
            if (addQueryIterator > 0) randomURL += qMark;
            while (addQueryIterator > 0) {
                int randomStringLength = (int) (Math.random() * 12 + 1);
                //characters a-z
                String randomQueryString = getRandomString(97, 122, randomStringLength);
                randomURL += randomQueryString;
                randomURL += qEqual;
                randomStringLength = (int) (Math.random() * 12 + 1);
                //characters a-z
                randomQueryString = getRandomString(97, 122, randomStringLength);
                randomURL += randomQueryString;
                if (addQueryIterator != 1) randomURL += qSemiC;
                addQueryIterator--;
            }
        }
        if (fragFlag) {
            //check valid parts
            if (validParts[5]) {
                //add fragment
                int addFragBool = (int) (Math.random() * 2);
                if (addFragBool > 0) {
                    //add colon and random port num
                    randomURL += fragSymbol;
                    int randomStringLength = (int) (Math.random() * 12 + 1);
                    //characters a-z
                    String randomFragString = getRandomString(97, 122, randomStringLength);
                    randomURL += randomFragString;
                }
            }
        }
        return randomURL;
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

    private void assertBooleanMatch(boolean expected, boolean actual) {
        System.out.println("Expected: " + expected + "     Actual: " + actual);

        if(expected == actual) {
            System.out.println("Test passed!");
        } else {
            System.out.println("Test failed!");
        }
        System.out.print("\n\n");
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
        //program based testing
        test.testisValid();

        //random testing
        test.testYourFirstPartition();
        test.testYourSecondPartition();

        //for manuel testing
        UrlValidator u = new UrlValidator(null, null, UrlValidator.ALLOW_ALL_SCHEMES);


        String result = u.isValid(args[0]) ? "valid" : "invalid";

        System.out.println(args[0] + " is " + result);
    }

}

