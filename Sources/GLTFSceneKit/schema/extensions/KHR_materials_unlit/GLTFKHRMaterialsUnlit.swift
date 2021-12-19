//
// GLTFKHRMaterialsUnlit.swift
//

import Foundation
import SceneKit

struct GLTFKHRMaterialsUnlit_GLTFKHRMaterialsUnlitExtension: GLTFCodable {
	struct GLTFKHRMaterialsUnlit: Codable {}

	enum CodingKeys: String, CodingKey {
		case data = "KHR_materials_unlit"
	}

	let data: GLTFKHRMaterialsUnlit?

	func didLoad(by object: Any, unarchiver: GLTFUnarchiver) {
		guard data != nil,
			let material = object as? SCNMaterial
		else {
			return
		}

		material.lightingModel = .constant
	}
}
