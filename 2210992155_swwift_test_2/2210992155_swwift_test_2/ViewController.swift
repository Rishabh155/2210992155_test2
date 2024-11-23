//
//  ViewController.swift
//  2210992155_swwift_test_2
//
//  Created by student-2 on 23/11/24.
//
import UIKit
struct Meal {
    let name: String
    let calories: Int
    let preparationTime: Int
    let thumbnail: UIImage
}

class RecipesViewController: UITableViewController {
    
    var recipes: [(name: String, calories: String, prepTime: String, imageName: String)] = [
        ("Spaghetti", "400 kcal", "30 mins", "spaghetti.jpg"),
        ("Salad", "150 kcal", "10 mins", "salad.jpg")
    ]
    @IBOutlet weak var recipeNameTextField: UITextField!
    @IBAction func recipeNameTextField(_ sender: Any) {
    }
    @IBOutlet weak var ingredientsTextView: UITextView!
    @IBAction func ingredientsTextView(_ sender: Any) {
    }
   
    @IBAction func preparationInstructionsTextView(_ sender: Any) {
    }
    @IBOutlet weak var categoryPicker: UIPickerView!
    @IBAction func categoryPicker(_ sender: Any) {
    }
    @IBOutlet weak var fatTextField: UITextField!
    @IBAction func dismissButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func close(_ sender: Any) {
    }

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Register the custom cell
        tableView.register(RecipeTableViewCell.self, forCellReuseIdentifier: "RecipeCell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Meal Name", for: indexPath) as! RecipeTableViewCell
        let recipe = recipes[indexPath.row]
        cell.recipeNameLabel.text = recipe.name
        cell.calorieLabel.text = recipe.calories
        cell.preparationTimeLabel.text = recipe.prepTime
        cell.thumbnailImageView.image = UIImage(named: recipe.imageName)
        
        return cell
    }
}

