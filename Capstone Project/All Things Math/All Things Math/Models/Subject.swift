//
//  SubjectController.swift
//  All Things Math
//
//  Created by Justin Herzog on 2/4/19.
//  Copyright © 2019 Justin Herzog. All rights reserved.
//

import Foundation
import UIKit

struct Subjects {
    
    var subjects: [String : [SecondarySubject]] =
        ["Algebra" : [], "Arithmetic" : [], "Calculus" : [], "Geometry" : [], "Trigonometry" : [], "Statistics and Probability" : []]
    
    func setUpSubjects() {
        getFormulas { (secondarySubjectArray) in
            guard let unwrappedSecondarySubjectArray = secondarySubjectArray else { return }
            
            for value in unwrappedSecondarySubjectArray {
                if value.subjectIdentifier == "Algebra" {
                    
                    var justAlgebraBranch = self.subjects["Algebra"]
                    justAlgebraBranch?.append(value)
                }
                if value.subjectIdentifier == "Arithmetic" {
                    
                    var justArithmeticBranch = self.subjects["Arithmetic"]
                    justArithmeticBranch?.append(value)
                }
                if value.subjectIdentifier == "Calculus" {
                    
                    var justCalculusBranch = self.subjects["Calculus"]
                    justCalculusBranch?.append(value)
                }
                if value.subjectIdentifier == "Geometry" {
                    
                    var justGeometryBranch = self.subjects["Geometry"]
                    justGeometryBranch?.append(value)
                }
                if value.subjectIdentifier == "Trigonometry" {
                    
                    var justTrigonometry = self.subjects["Trigonometry"]
                    justTrigonometry?.append(value)
                }
                if value.subjectIdentifier == "Statistics and Probability" {
                    
                    var justStats = self.subjects["Statistics and Probability"]
                    justStats?.append(value)
                }
            }
        }
    }
    
    
    
    
    
    //    let subjects: [String : [SecondarySubject]] =
    //        ["Algebra" : ["Linear Equations", "Functions", "Graphs", "Sequences", "System of Equations", "Two-Variable Inequalities", "Absolute Value Equations", "Absolute Value Functions", "Absolute Value Inequalities", "Quadratic Equation", "Quadratic Functions", "Polynomial Expressions", "Polynomial Equations", "Polynomial Functions", "Exponential Functions", "Logarithmic Functions", "Radical Equations", "Radical Functions", "Radical Expressions", "Trigonometric Functions", "Complex Numbers", "Imaginary Numbers", "Conic Sections", "Series and Induction", "Vectors", "Matrices"],
    //         "Arithmetic" : ["Addition", "Subtraction", "Multiplication", "Division", "Negative Numbers", "Fractions", "Decimals", "Place Value"],
    //         "Calculus" : ["Rates of Change and Limits", "Limits to Infinity", "Continuity", "Tangent Lines", "Derivative of a Function", "Differentiability", "Rules for Differentiation", "Velocity and Other Rates of Change", "Derivatives of Trigonometric Functions", "Chain Rule", "Implicit Differentiation", "Derivatives of Inverse Trigonometric Functions", "Derivatives of Exponential and Logarithmic Functions", "Finding Extreme Values of Functions", "Mean Value Theorem", "Connecting f' and f'' with the graph of f", "Modeling and Optimization", "Linerization and Newton's Method", "Related Rates", "Estimating with Finite Sums", "Definite Integrals", "Definite Integrals and Anti-derivatives", "Fundamental Theorem of Calculus", "Trapezoidal Rule", "Slope Fields and Euler's Method", "Anti-differentiation by Substitution", "Anti-differentiation by Parts", "Exponential Growth and Decay", "Logistic Growth", "Integral as Net Change", "Areas in the Plane", "Volumes", "Lengths of Curves", "Applications from Science and Statistics", "Sequences", "L'Hopital's Rule", "Relative Rates of Growth", "Improper Integrals", "Power Series", "Taylor Series", "Taylor's Theorem", "Radius of Convergence", "Testing Convergence at Endpoints", "Parametric Functions", "Vectors in the Plane", "Polar Functions"],
    //         "Geometry" : ["Lines", "Angles", "Shapes", "Triangles", "Quadrilaterals", "Geometric Constructions", "Coordinate Plane", "Area", "Perimeter", "Volume", "Surface Area", "Pythagorean Theorem", "Transformations", "Congruence", "Similarity", "Solid Geometry", "Analytic Geometry", "Circles", "misc..."],
    //         "Trigonometry" : ["Unit Circle", "Graphs of Trigonometric Functions", "Trigonometric Identities", "Trigonometric Equations", "Trigonometry with Triangles"],
    //         "Statistics and Probability" : []]
    
    //    func setupFormulas() {
    //        let foo = Formula.init(formulaName: "", actualFormula: "", variableExplanation: "", description: "")
    //    }
}
