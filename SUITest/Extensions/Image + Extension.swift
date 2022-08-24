//
//  Image + Extension.swift
//  SUITest
//
//  Created by Nikita Batrakov on 23.08.2022.
//

import SwiftUI

extension Image {
    
    /// Resize an image with fill aspect ratio and specified frame dimensions.
    ///   - parameters:
    ///     - width: Frame width.
    ///     - height: Frame height.
    func resizedToFill(width: CGFloat, height: CGFloat) -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: width, height: height)
    }
    
}
