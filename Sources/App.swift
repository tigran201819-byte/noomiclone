import SwiftUI

@main
struct NoomiOfflineApp: App {
    var body: some Scene {
        WindowGroup {
            VStack(spacing: 20) {
                Text("NoomiOffline")
                    .font(.largeTitle)
                    .bold()
                Text("Тестовый IPA собран без ПК")
                    .foregroundColor(.gray)
            }
        }
    }
}
