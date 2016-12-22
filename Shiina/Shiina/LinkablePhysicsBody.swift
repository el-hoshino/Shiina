//
//  LinkablePhysicsBody.swift
//  Shiina
//
//  Created by 史　翔新 on 2016/12/19.
//  Copyright © 2016年 Crazism. All rights reserved.
//

import SpriteKit

public class LinkablePhysicsBody: SKPhysicsBody {
	
	fileprivate var linkedPhysicsBody: [SKPhysicsBody] = []
	
	override public var isDynamic: Bool {
		willSet {
			self.linkedPhysicsBody.forEach { (body) in
				body.isDynamic = newValue
			}
		}
	}
	
	public override var usesPreciseCollisionDetection: Bool {
		willSet {
			self.linkedPhysicsBody.forEach { (body) in
				body.usesPreciseCollisionDetection = newValue
			}
		}
	}
	
	public override var allowsRotation: Bool {
		willSet {
			self.linkedPhysicsBody.forEach { (body) in
				body.allowsRotation = newValue
			}
		}
	}
	
	public override var pinned: Bool {
		willSet {
			self.linkedPhysicsBody.forEach { (body) in
				body.pinned = newValue
			}
		}
	}
	
	public override var isResting: Bool {
		willSet {
			self.linkedPhysicsBody.forEach { (body) in
				body.isResting = newValue
			}
		}
	}
	
	public override var friction: CGFloat {
		willSet {
			self.linkedPhysicsBody.forEach { (body) in
				body.friction = newValue
			}
		}
	}
	
	public override var charge: CGFloat {
		willSet {
			self.linkedPhysicsBody.forEach { (body) in
				body.charge = newValue
			}
		}
	}
	
	public override var restitution: CGFloat {
		willSet {
			self.linkedPhysicsBody.forEach { (body) in
				body.restitution = newValue
			}
		}
	}
	
	public override var linearDamping: CGFloat {
		willSet {
			self.linkedPhysicsBody.forEach { (body) in
				body.linearDamping = newValue
			}
		}
	}
	
	public override var angularDamping: CGFloat {
		willSet {
			self.linkedPhysicsBody.forEach { (body) in
				body.angularDamping = newValue
			}
		}
	}
	
	public override var density: CGFloat {
		willSet {
			self.linkedPhysicsBody.forEach { (body) in
				body.density = newValue
			}
		}
	}
	
	public override var mass: CGFloat {
		willSet {
			self.linkedPhysicsBody.forEach { (body) in
				body.mass = newValue
			}
		}
	}
	
	public override var affectedByGravity: Bool {
		willSet {
			self.linkedPhysicsBody.forEach { (body) in
				body.affectedByGravity = newValue
			}
		}
	}
	
	public override var fieldBitMask: UInt32 {
		willSet {
			self.linkedPhysicsBody.forEach { (body) in
				body.fieldBitMask = newValue
			}
		}
	}
	
	public override var categoryBitMask: UInt32 {
		willSet {
			self.linkedPhysicsBody.forEach { (body) in
				body.categoryBitMask = newValue
			}
		}
	}
	
	public override var collisionBitMask: UInt32 {
		willSet {
			self.linkedPhysicsBody.forEach { (body) in
				body.collisionBitMask = newValue
			}
		}
	}
	
	public override var contactTestBitMask: UInt32 {
		willSet {
			self.linkedPhysicsBody.forEach { (body) in
				body.contactTestBitMask = newValue
			}
		}
	}
	
}

extension LinkablePhysicsBody {
	
	public func linkBody(_ body: SKPhysicsBody) {
		if !self.linkedPhysicsBody.contains(body) {
			self.linkedPhysicsBody.append(body)
		}
	}
	
	public func unlinkBody(_ body: SKPhysicsBody) {
		if let index = self.linkedPhysicsBody.index(of: body) {
			self.linkedPhysicsBody.remove(at: index)
		}
	}
	
}
