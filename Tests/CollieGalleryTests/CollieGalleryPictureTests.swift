import UIKit
import XCTest
@testable import CollieGallery

final class CollieGalleryPictureTests: XCTestCase {
    func testImageInitializerStoresProperties() {
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 10, height: 10))
        let image = renderer.image { context in
            UIColor.red.setFill()
            context.fill(CGRect(origin: .zero, size: CGSize(width: 10, height: 10)))
        }

        let picture = CollieGalleryPicture(image: image, title: "Title", caption: "Caption")

        XCTAssertEqual(picture.image, image)
        XCTAssertEqual(picture.title, "Title")
        XCTAssertEqual(picture.caption, "Caption")
        XCTAssertNil(picture.url)
    }

    func testURLInitializerStoresProperties() {
        let placeholderRenderer = UIGraphicsImageRenderer(size: CGSize(width: 5, height: 5))
        let placeholder = placeholderRenderer.image { context in
            UIColor.blue.setFill()
            context.fill(CGRect(origin: .zero, size: CGSize(width: 5, height: 5)))
        }

        let picture = CollieGalleryPicture(url: "https://example.com/image.jpg", placeholder: placeholder, title: "Remote", caption: "Remote caption")

        XCTAssertEqual(picture.url, "https://example.com/image.jpg")
        XCTAssertEqual(picture.placeholder, placeholder)
        XCTAssertEqual(picture.title, "Remote")
        XCTAssertEqual(picture.caption, "Remote caption")
        XCTAssertNil(picture.image)
    }
}
