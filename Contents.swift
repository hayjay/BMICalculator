import UIKit

func bmiCalculate (weight : Double, height : Double) -> String{
//    let bmiResult = weight/(height * height);
    var interpretation = ""
    
    
    let bmiResult = weight/pow(height, 2);
    
    let shortenedBMI = String(format: "%.2f", bmiResult)
    
    if bmiResult > 25 {
        interpretation = " Your BMI result is \(bmiResult), You are overwight!"
    }else if bmiResult > 18.5  {
        interpretation = " You have a normal weight!"
    }else{
        interpretation = " You are underweight"
    }
    return "Your BMI is " + String(shortenedBMI) + interpretation
}

print(bmiCalculate(weight: 63, height: 1.8))
