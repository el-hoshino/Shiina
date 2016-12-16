//
//  SKNode.swift
//  Shiina
//
//  Created by 史　翔新 on 2016/12/08.
//  Copyright © 2016年 Crazism. All rights reserved.
//

import SpriteKit
import Eltaso

extension SKNode {
	
	public var origin: CGPoint {
		
		set {
			let size = self.frame.size
			let halfWidth = size.width / 2
			let halfHeight = size.height / 2
			let position = newValue + CGPoint(x: halfWidth, y: halfHeight)
			self.position = position
		}
		
		get {
			let size = self.frame.size
			let halfWidth = size.width / 2
			let halfHeight = size.height / 2
			return self.position - CGPoint(x: halfWidth, y: halfHeight)
		}
		
	}
	
	public func isInCamera(_ camera: SKCameraNode) -> Bool {
		return camera.contains(self)
	}
	
}
