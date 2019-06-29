//
//  PlanetNode.swift
//  saros_planets
//
//  Created by Gwen Riemenschneider on 6/23/19.
//  Copyright © 2019 Gwen Riemenschneider. All rights reserved.
//

import SceneKit

class PlanetNode: SCNNode {

    override init() {
        super.init()
        self.geometry = SCNSphere(radius: 1)
        self.geometry?.firstMaterial?.diffuse.contents = UIImage(named:"Abstract_001_COLOR")
        self.geometry?.firstMaterial?.specular.contents = UIImage(named:"Abstract_001_DISP")
        self.geometry?.firstMaterial?.normal.contents = UIImage(named:"Abstract_001_NRM")
        
        self.geometry?.firstMaterial?.shininess = 50
        
        let action = SCNAction.rotate(by: 360 * CGFloat (Double.pi / 180), around: SCNVector3(x:0,y:1,z:0), duration: 8)
        
        let repeatAction = SCNAction.repeatForever(action)
        self.runAction(repeatAction)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init (coder: aDecoder)
    }
    
    
}
