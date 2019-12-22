public class JavaBasic {
    public static void main (String [] arg){
        String programme = "This is very easy programme";
        String programme1 = "This $300 is equivalent of £200 but not for @100";
        String sample = "The cost of iPhone is £1,250";
        String sample1 ="125";
        Double sample2 = 123.45;
        String sample3 = "560.25";
        String sample4 = "$250.00";

        System.out.println(programme.replace("s","")); //Removed all occurrences of character “s”
        System.out.println("The length of the string is: " + programme.length()); //length of string
        System.out.println(programme.replaceAll( "\\s+","")); // removed space
        System.out.println(programme1.replaceAll("[$,£,@]","")); //extracted special characters
        System.out.println(sample.replaceAll("\\D+","")); // extracted numbers from string
        System.out.println(Integer.parseInt(sample1)); // string to integer
        System.out.println(Double.toString(sample2)); // double to string
        System.out.println(Double.parseDouble(sample3)); //string to double
        System.out.println(sample4.replaceAll("[$]","£")); // replaced $ with £

    }

}
