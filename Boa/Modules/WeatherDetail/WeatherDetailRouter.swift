import UIKit
import Cobra


final class WeatherDetailRouter {
    
    weak var controller: UIViewController!
    
    init(controller: UIViewController) {
        self.controller = controller
    }
}

protocol WeatherDetailRouterType: class {
    func dismiss()
}

// MARK: - WeatherDetailRouterType
extension WeatherDetailRouter: WeatherDetailRouterType {    
    func dismiss() {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
}
