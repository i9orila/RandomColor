//
//  ColorsTableVC.swift
//  RandomColor
//
//  Created by I9orila on 17.01.2023.
//

import UIKit

class ColorsTableVC: UIViewController {
    //массив цветов дальше передадим в таблицу
    var colors: [UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
        }
    
    
    func addRandomColors() {
        for _ in 0..<50 {
            colors.append(createRandomColor())
        }
    }
     
    
    func createRandomColor() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha:.random(in: 0.4...1))
        return randomColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC
        destVC.color = sender as? UIColor
    }
}
    

    // MARK: - Extensions
    
    extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
        // количество строк порказывает
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return colors.count
        }
            //
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else {
              return UITableViewCell()
            }
            cell.backgroundColor = colors[indexPath.row]
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let color = colors[indexPath.row]
            performSegue(withIdentifier: "ToColorsDetailVC", sender: color )
        }
    }
 
