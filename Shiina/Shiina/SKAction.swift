//
//  SKAction.swift
//  Shiina
//
//  Created by 史　翔新 on 2016/12/15.
//  Copyright © 2016年 Crazism. All rights reserved.
//

import SpriteKit
import Eltaso

extension SKAction {
	
	public static func moveUnderSineWave(around center: CGFloat, inDimension dimension: CGPoint.Dimension, amplitude: CGFloat, frequency: CGFloat, phase: CGFloat = 0, repeatingTime: Int? = nil) -> SKAction {
		
		let waveDuration = 1 / TimeInterval(frequency)
		let angularFrequency = CGFloat.pi * 2 * frequency
		let waveAction = SKAction.customAction(withDuration: waveDuration) { (node, elapsedTime) in
			
			let position = (amplitude * sin((angularFrequency * elapsedTime) - phase)) + center
			switch dimension {
			case .horizontal:
				node.position.x = position
				
			case .vertical:
				node.position.y = position
			}
			
		}
		
		let repeatedAction: SKAction
		if let repeatingTime = repeatingTime {
			repeatedAction = SKAction.repeat(waveAction, count: repeatingTime)
			
		} else {
			repeatedAction = SKAction.repeatForever(waveAction)
		}
		
		return repeatedAction
		
	}
	
}
