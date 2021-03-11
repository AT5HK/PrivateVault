//
//  ItemPreview.swift
//  PrivateVault
//
//  Created by Emilio Peláez on 25/2/21.
//

import SwiftUI

struct ItemPreview: View {
	let item: StoredItem
	
	var body: some View {
		if let image = PreviewCache.shared.cachedImage(for: item) {
			switch item.dataType {
			case .file: FilePreview(image: image)
			case .image, .url:
				image
					.resizable()
					.aspectRatio(contentMode: .fit)
			case .video: VideoPreview(image: image)
			}
		} else {
			GenericPreview(imageName: item.dataType.systemImageName)
		}
	}
}

struct ItemPreview_Previews: PreviewProvider {
	static var previews: some View {
		ItemPreview(item: PreviewEnvironment().item)
	}
}
