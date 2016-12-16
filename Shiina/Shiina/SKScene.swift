//
//  SKScene.swift
//  Shiina
//
//  Created by 史　翔新 on 2016/12/08.
//  Copyright © 2016年 Crazism. All rights reserved.
//

import SpriteKit

extension SKScene {
	
	public var onScreenFrame: CGRect {
		
		switch self.camera {
		case .none:
			return CGRect(origin: .zero, size: self.size)
			
		case .some(let camera):
			let scaledWidth = self.size.width * camera.xScale
			let scaledHeight = self.size.height * camera.yScale
			let originX = camera.position.x - (scaledWidth / 2)
			let originY = camera.position.y - (scaledHeight / 2)
			return CGRect(x: originX, y: originY, width: scaledWidth, height: scaledHeight)
		}
		
	}
	
}
