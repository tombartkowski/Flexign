//
//  Elevation.swift
//  Flexign
//
//  Created by Tomasz Bartkowski on 28/04/2021.
//

public enum ElevationLevel: Elevatable {
    case one
    case two
    case three

    // MARK: Public

    public var shadow: Shadow? {
        switch self {
        case .one:
            return Shadow(color: UIColor.black.withAlphaComponent(0.18), offset: CGSize(width: 0, height: 8), blur: 10)
        case .two:
            return Shadow(color: UIColor.black.withAlphaComponent(0.24), offset: CGSize(width: 0, height: 10), blur: 16)
        case .three:
            return Shadow(
                color: UIColor.black.withAlphaComponent(0.28),
                offset: CGSize(width: 0, height: 14),
                blur: 20
            )
        }
    }
}
