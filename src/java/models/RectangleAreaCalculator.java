
package models;

/**
 *
 * @author Michael
 */
public class RectangleAreaCalculator {
    
    public String getCalculateRecTangleArea(String length, String width) {
        String sAnswer = "";
        
        try {
        double answer = Double.valueOf(length) * Double.valueOf(width);
        answer = Math.round( answer * 100.0) / 100.0;
        sAnswer = "" + answer;
        } catch(NumberFormatException nfe) {
            sAnswer = "Sorry, there was an error - try again";
        }
    
    return sAnswer;
    }
}
