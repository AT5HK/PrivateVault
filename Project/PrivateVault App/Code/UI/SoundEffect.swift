//
//  SoundEffect.swift
//  PrivateVault
//
//  Created by Daniel Behar on 2/20/21.
//

import Foundation
import AVFoundation

enum SoundEffect {
	case success
	case failure
	case none
	
	func play() -> Void {
		switch self {
		case .success:
			AudioServicesPlaySystemSound(1026)
		case .failure:
			AudioServicesPlaySystemSound(1027)
		case .none:
			break;
		}
	}
}
