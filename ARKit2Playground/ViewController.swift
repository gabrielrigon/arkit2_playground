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
    
    self.configurePlaneDetection()
    self.defineSceneView()
  }
  
  // - MARK: Methods
  
  func configurePlaneDetection() {
    self.configuration.worldAlignment = .camera
    self.configuration.planeDetection = .vertical
  }
  
  func defineSceneView() {
    self.sceneView.debugOptions = [.showFeaturePoints, .showWorldOrigin]
    self.sceneView.delegate = self
    self.sceneView.session.run(self.configuration)
  }
}

extension ViewController: ARSCNViewDelegate {
  func renderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {
    print("found something 🤘🏼")
    
    print(node)
    print(anchor)
  }
}
