
package models;

/**
 *
 * @author Michael
 */
public class TriangleAreaCalculator {
    
    public String getMissingTriangleSide(String side1, String side2) {
        String sAnswer = "";
        double dSide1 = Double.valueOf(side1);
        double dSide2 = Double.valueOf(side2);
        
        try {
        double answer = Math.sqrt((Math.pow(dSide1, 2)) + (Math.pow(dSide2, 2)));
        answer = Math.round( answer * 100.0) / 100.0;
        sAnswer = "" + answer;
        } catch(NumberFormatException nfe) {
            sAnswer = "Sorry, there was an error - try again";
        }
        
        return sAnswer;
    }
    
}
