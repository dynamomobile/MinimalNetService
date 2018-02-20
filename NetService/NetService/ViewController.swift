import UIKit

class ViewController: UIViewController, NetServiceDelegate {

    @IBOutlet var label: UILabel!
    
    var ns = NetService(domain: "local.", type: "_test._tcp.", name: "My Test")

    func netService(_ sender: NetService, didUpdateTXTRecord data: Data) {
        let dict = NetService.dictionary(fromTXTRecord: data)
        if let valueData = dict["value"],
            let value = String(data: valueData, encoding: .utf8) {
            label.text = value
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ns.delegate = self
        ns.startMonitoring()
    }

}
