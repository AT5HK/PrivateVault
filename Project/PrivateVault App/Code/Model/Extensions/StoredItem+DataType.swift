//
//  StoredItem+DataType.swift
//  PrivateVault
//
//  Created by Emilio Peláez on 20/2/21.
//

extension StoredItem {
	enum DataType: Int16 {
		case file
		case image
		case video
	}

	var dataType: DataType {
		get { DataType(rawValue: dataTypeValue) ?? .file }
		set { dataTypeValue = newValue.rawValue }
	}
}

extension StoredItem.DataType {
	var systemImageName: String {
		switch self {
		case .file: return "doc.fill"
		case .image: return "photo.fill"
		case .video: return "video.fill"
		}
	}
}
