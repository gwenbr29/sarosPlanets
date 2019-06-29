//
//  ViewController.swift
//  saros_planets
//
//  Created by Gwen Riemenschneider on 6/23/19.
//  Copyright © 2019 Gwen Riemenschneider. All rights reserved.
//

import UIKit
import SceneKit

class ViewController: UIViewController {
    
    override func viewDidLoad(){
        super.viewDidLoad()
        let scene = SCNScene()
        
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        
        cameraNode.position = SCNVector3(x:0,y:0,z:5)
        
        scene.rootNode.addChildNode(cameraNode)
        
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light?.type = .omni
        lightNode.position = SCNVector3(x:0, y:10, z:2)
        
        scene.rootNode.addChildNode(lightNode)
        
        let stars = SCNParticleSystem(named: "stars.scnp", inDirectory: nil)!
        scene.rootNode.addParticleSystem(stars)
        
        let planetNode = PlanetNode()
        scene.rootNode.addChildNode(planetNode)
        
        let sceneView = self.view as! SCNView
        sceneView.scene = scene
        
        sceneView.showsStatistics = true
        sceneView.backgroundColor = UIColor.black
        sceneView.allowsCameraControl = true
        
    }

    override func didReceiveMemoryWarning() {
       super.didReceiveMemoryWarning()
        // Do any additional setup after loading the view.
    }
    


}

