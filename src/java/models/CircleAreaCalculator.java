
package models;

/**
 *
 * @author Michael
 */
public class CircleAreaCalculator {
    
    public String getCircleArea(String radius) {
        String sAnswer = "";
        double dRadius = Double.valueOf(radius);
        
        try {
        double answer = Math.pow(dRadius, 2) * Math.PI;
        answer = Math.round( answer * 100.0) / 100.0;
        sAnswer = "" + answer;
        } catch(NumberFormatException nfe) {
            sAnswer = "Sorry, there was an error - try again";
        }
        
        return sAnswer;
    }
    
}
