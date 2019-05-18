//
//  ViewController.swift
//  ARMeasure
//
//  Created by Muhammet Mehmet Emin Kartal on 5/17/19.
//  Copyright © 2019 Buradan Gonder Yazılım Hizmetleri Taşımacılık ve Ticaret Anonim Şirketi. All rights reserved.
//

import UIKit

#if !targetEnvironment(simulator)
import SSKitCore
#endif


class ViewController: UIViewController {

	@IBOutlet weak var measurementResults: UILabel!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	@IBAction func startMeasurement(_ sender: Any) {

		#if !targetEnvironment(simulator)
		let view = SSViewController.getClass()
		view.resultDelegate = self
		view.massClassification = false
		self.present(view, animated: true, completion: nil)
		#else

		print("AR In Simulators are not supported")
		#endif
	}

}


#if !targetEnvironment(simulator)
extension ViewController: SSViewControllerDelegate {
	func arresutlt(didReceiveResut result: ARResult) {
		measurementResults.text = "\(result)"
		// Do anything with the result
	}
}
#endif
