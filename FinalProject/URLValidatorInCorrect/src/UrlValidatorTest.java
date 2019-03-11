
import java.util.*;
import junit.framework.TestCase;

//You can use this as a skeleton for your 3 different test approach
//It is an optional to use this file, you can generate your own test file(s) to test the target function!
// Again, it is up to you to use this file or not!





public class UrlValidatorTest extends TestCase {


    public UrlValidatorTest(String testName) {
        super(testName);
    }


    public void testManualTest() {
//You can use this function to implement your manual testing	   

    }


    public void testYourFirstPartition() {
    //first partition will test random good URLs made from some arrays of different parts
        //make good schemes and good Authrorities
        String[] goodSchemes = new String[]{"http://", "ftp://", "https://"};
        String[] goodAuthorities = new String[]{"www.google.com",
                                                "go.com",
                                                "go.au",
                                                "0.0.0.0",
                                                "255.255.255.255",
                                                "255.com",
                                                "go.cn"};

        //ports number will be generated randomly
        String portColon = ":";

        //goodpaths just need slashes and randomstrings
        String[] slash = new String[] {"", "/", "/"};

        //goodQueries = ? string = string ; etc.
        char qMark = '?';
        char qEqual = '=';

        //good URL building algorithm
        String goodURL;
        //get random scheme and append
        int schemeChoice = (int)(Math.random() * 2);
        goodURL = goodSchemes[schemeChoice];
        //get good Authority and append
        int authoritityChoice = (int)(Math.random() * 6);
        goodURL += goodAuthorities[authoritityChoice];
        //add port?
        int addPortBool = (int)(Math.random() * 1);
        if(addPortBool > 0){
            //add colon and random port num
            goodURL += portColon;
            int goodPortInt = ((int)(Math.random() * 65535));
            //cast portnum to string
            String goodPortStr = Integer.toString(goodPortInt);
            goodURL += goodPortStr;
        }

        //add path with random number of interations MAX = 4
        int addPathIterator = (int)(Math.random() * 4);
        while(addPathIterator > 0) {
            //add single slash
            goodURL += slash;
            //add string of random length
            int randomStringLength = (int) (Math.random() * 12);
            //characters a-z
            String goodPathString = getRandomString(97, 122, randomStringLength);
            goodURL += goodPathString;
            addPathIterator--;
        }
        //add a trailing slash(s)
        int trailingSlashType = (int)(Math.random() * 2); //0="", 1 = /, 2 = //
        goodURL += slash[trailingSlashType];

            //add query with random number of interations
        int randomStringLength = (int) (Math.random() * 12);
        //characters a-z
        String randomQueryString = getRandomString(97, 122, randomStringLength);
            System.out.println(goodURL);
    }
    public void testYourSecondPartition() {
        //You can use this function to implement your Second Partition testing

    }
    //You need to create more test cases for your Partitions if you need to

    public void testIsValid() {
        //You can use this function for programming based testing

    }

    /*
    The following code is modified version of the code found here:
    https://www.baeldung.com/java-random-string
    @param: leftLimit and rightLimit is ASCII code for char to used, length is length of string returned
    */
    private String getRandomString(int leftLimit, int righLimit, int length) {

        int lLimit = leftLimit; // letter 'a'
        int rLimit = righLimit; // letter 'z'
        int targetStringLength = length;
        Random random = new Random();
        StringBuilder buffer = new StringBuilder(targetStringLength);
        for (int i = 0; i < targetStringLength; i++) {
            int randomLimitedInt = lLimit + (int)
                    (random.nextFloat() * (rLimit - lLimit + 1));
            buffer.append((char) randomLimitedInt);
        }
        String generatedString = buffer.toString();

        return generatedString;
    }

    public static void main(String[] args){

        String testTest = "TestName";
        UrlValidatorTest test = new UrlValidatorTest(testTest);

        test.testYourFirstPartition();
    }

}

