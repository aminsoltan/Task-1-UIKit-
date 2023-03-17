

import UIKit

class DetailsViewController: UIViewController {
    
    var stringPassed: String?
    let descriptionDic : [String:String] = [
        "Spinach":"Spinach (Spinacia oleracea) is a herbaceous plant whose leaves, green and arranged in rosette, are eaten raw or cooked.",
        "lavender":"Lavenders are small evergreen shrubs with gray-green hoary linear leaves. The purple flowers are sparsely arranged on spikes at the tips of long bare stalks and produce small nutlet fruits.",
        "Rosemary":"Rosemary is described as a woody, perennial herb that can become a bushy shrub. The leaves are evergreen and needlelike in shape, and they produce the essential oil that gives rosemary its characteristic scent.",
        "Basil":"Basil is an aromatic plant that encompasses scores of species of herb and shrub species belonging to the genus Ocimum L. (Lamiaceae). ",
        "Mint":"Mint or mentha belongs to the Lamiaceae family, which contains around 15 to 20 plant species, including peppermint and spearmint.",
        "Sage":"Sage is native to the Mediterranean region and is used fresh or dried as a flavouring in many foods, particularly in stuffings for poultry and pork and in sausages.",
    ]
    
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var decriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if stringPassed != nil{
            mainLabel.text = stringPassed
            decriptionLabel.text = descriptionDic[stringPassed!]
            
        }
        
        view.backgroundColor = .systemGreen
        
    }
}
