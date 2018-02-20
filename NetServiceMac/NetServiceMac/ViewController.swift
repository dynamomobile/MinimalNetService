import Cocoa

class ViewController: NSViewController, NetServiceDelegate {
    
    @IBOutlet var textField: NSTextField!
    
    var ns = NetService(domain: "", type: "_test._tcp.", name: "My Test", port: 0)

    override func viewDidLoad() {
        super.viewDidLoad()
        ns.delegate = self
        ns.setTXTRecord(NetService.data(fromTXTRecord: ["value": "Initial".data(using: .utf8)!]))
        ns.publish(options: [.listenForConnections, .noAutoRename])
    }

    @IBAction func buttonPressed(_ sender: Any!) {
        ns.setTXTRecord(NetService.data(fromTXTRecord: ["value": textField.stringValue.data(using: .utf8)!]))
    }
    
}
