
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
        //You can use this function to implement your First Partition testin

        System.out.print(getrandomString(0, 200, 10));
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
    private String getrandomString(int leftLimit, int righLimit, int length) {

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
    }

}

