import UIKit

class HistoryViewController : UIViewController {
    
    @IBOutlet weak var historyTableView: UITableView!
    let historyItems = Array(HistoryStorage.sharedInstance.history.reversed())
    override func viewDidLoad() {
        super.viewDidLoad()
        historyTableView.delegate = self
        historyTableView.dataSource = self
    }
    
}

extension HistoryViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Cell selected")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return historyItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = historyTableView.dequeueReusableCell(withIdentifier: "historyItemCell", for: indexPath)
        cell.textLabel?.text = historyItems[indexPath.row]
        return cell
    }
}
