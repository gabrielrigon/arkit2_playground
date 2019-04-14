//
//  ViewController.swift
//  ARKit 2 Playground
//
//  Created by Gabriel on 14/04/19.
//  Copyright © 2019 Gabriel. All rights reserved.
//

import UIKit
import ARKit

class ViewController: UIViewController {
  let configuration = ARWorldTrackingConfiguration()
  
  @IBOutlet weak var sceneView: ARSCNView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.defineSceneView()
  }
  
  // - MARK: Methods
  
  func defineSceneView() {
    self.sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints, ARSCNDebugOptions.showWorldOrigin]
    self.sceneView.session.run(self.configuration)
  }
}
