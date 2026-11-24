import Foundation
import SwiftUI
import UIKit

enum GameMapType: String, CaseIterable, Identifiable, Codable {
    case classic = "Classic"
    case doubleBar = "Double Bar"
    case trampoline = "Trampoline"
    case tumbling = "Tumbling"
    case lagoon = "Lagoon"

    var id: String { rawValue }

    var title: String {
        switch self {
        case .classic: return "Classic (Турник)"
        case .doubleBar: return "Double Bar (2 турника)"
        case .trampoline: return "Trampoline (Батут)"
        case .tumbling: return "Tumbling (Акробатика)"
        case .lagoon: return "Lagoon (Вода)"
        }
    }
}

enum GenderOption: String, CaseIterable, Identifiable, Codable {
    case male = "Мужской"
    case female = "Женский"
    case mannequin = "Манекен"

    var id: String { rawValue }
}

enum HatStyle: String, CaseIterable, Identifiable, Codable {
    case none = "Нет"
    case cap = "Кепка"
    case wizard = "Шляпа мага"
    case crown = "Корона"
    case helmet = "Шлем"

    var id: String { rawValue }
}

enum CapeStyle: String, CaseIterable, Identifiable, Codable {
    case none = "Нет"
    case hero = "Плащ"
    case spiderweb = "Паутина"
    case flag = "Флаг"

    var id: String { rawValue }
}

enum ShoeStyle: String, CaseIterable, Identifiable, Codable {
    case none = "Босиком"
    case sneakers = "Кроссовки"
    case bunny = "Тапки-зайцы"
    case boots = "Ботинки"

    var id: String { rawValue }
}

enum WeatherPreset: String, CaseIterable, Identifiable, Codable {
    case clearDay = "Ясный день"
    case sunset = "Закат"
    case starryNight = "Звёздная ночь"
    case rainyDays = "Rainy Days"
    case thickFog = "Thick Fog"
    case storm = "Гроза"
    case halloween = "Хэллоуин"
    case staticSky = "Неподвижное небо"

    var id: String { rawValue }

    var skyGradient: [Color] {
        switch self {
        case .clearDay:
            return [Color(red: 0.16, green: 0.48, blue: 0.85), Color(red: 0.56, green: 0.82, blue: 0.98)]
        case .sunset:
            return [Color(red: 0.18, green: 0.12, blue: 0.36), Color(red: 0.92, green: 0.42, blue: 0.25)]
        case .starryNight:
            return [Color(red: 0.03, green: 0.05, blue: 0.14), Color(red: 0.09, green: 0.14, blue: 0.28)]
        case .rainyDays:
            return [Color(red: 0.16, green: 0.21, blue: 0.27), Color(red: 0.34, green: 0.40, blue: 0.47)]
        case .thickFog:
            return [Color(red: 0.54, green: 0.58, blue: 0.62), Color(red: 0.76, green: 0.79, blue: 0.82)]
        case .storm:
            return [Color(red: 0.07, green: 0.09, blue: 0.14), Color(red: 0.20, green: 0.23, blue: 0.31)]
        case .halloween:
            return [Color(red: 0.12, green: 0.05, blue: 0.20), Color(red: 0.46, green: 0.16, blue: 0.10)]
        case .staticSky:
            return [Color(red: 0.12, green: 0.14, blue: 0.18), Color(red: 0.12, green: 0.14, blue: 0.18)]
        }
    }
}

enum ColorOption: String, CaseIterable, Identifiable, Codable {
    case white = "Белый"
    case black = "Чёрный"
    case gray = "Серый"
    case skinLight = "Светлая кожа"
    case skinMedium = "Средняя кожа"
    case skinDark = "Тёмная кожа"
    case blue = "Синий"
    case cyan = "Голубой"
    case red = "Красный"
    case orange = "Оранжевый"
    case yellow = "Жёлтый"
    case gold = "Золотой"
    case green = "Зелёный"
    case purple = "Фиолетовый"
    case pink = "Розовый"

    var id: String { rawValue }

    var uiColor: UIColor {
        switch self {
        case .white: return UIColor(red: 0.96, green: 0.96, blue: 0.98, alpha: 1)
        case .black: return UIColor(red: 0.12, green: 0.12, blue: 0.15, alpha: 1)
        case .gray: return UIColor(red: 0.55, green: 0.58, blue: 0.63, alpha: 1)
        case .skinLight: return UIColor(red: 0.96, green: 0.80, blue: 0.68, alpha: 1)
        case .skinMedium: return UIColor(red: 0.82, green: 0.60, blue: 0.44, alpha: 1)
        case .skinDark: return UIColor(red: 0.46, green: 0.30, blue: 0.21, alpha: 1)
        case .blue: return UIColor(red: 0.15, green: 0.48, blue: 0.95, alpha: 1)
        case .cyan: return UIColor(red: 0.15, green: 0.80, blue: 0.92, alpha: 1)
        case .red: return UIColor(red: 0.90, green: 0.22, blue: 0.24, alpha: 1)
        case .orange: return UIColor(red: 0.98, green: 0.54, blue: 0.16, alpha: 1)
        case .yellow: return UIColor(red: 0.98, green: 0.85, blue: 0.20, alpha: 1)
        case .gold: return UIColor(red: 0.96, green: 0.76, blue: 0.18, alpha: 1)
        case .green: return UIColor(red: 0.20, green: 0.78, blue: 0.42, alpha: 1)
        case .purple: return UIColor(red: 0.62, green: 0.30, blue: 0.94, alpha: 1)
        case .pink: return UIColor(red: 0.96, green: 0.38, blue: 0.66, alpha: 1)
        }
    }

    var swiftUIColor: Color {
        Color(uiColor)
    }
}

struct OutfitPreset: Codable, Equatable {
    var gender: GenderOption
    var skinColor: ColorOption
    var torsoColor: ColorOption
    var patternColor: ColorOption
    var legsColor: ColorOption
    var hat: HatStyle
    var hatColor: ColorOption
    var cape: CapeStyle
    var capeColor: ColorOption
    var shoes: ShoeStyle
    var shoeColor: ColorOption
    var auraEnabled: Bool
    var auraColor: ColorOption

    static let defaultPreset = OutfitPreset(
        gender: .mannequin,
        skinColor: .skinLight,
        torsoColor: .blue,
        patternColor: .white,
        legsColor: .black,
        hat: .none,
        hatColor: .purple,
        cape: .none,
        capeColor: .red,
        shoes: .sneakers,
        shoeColor: .white,
        auraEnabled: false,
        auraColor: .gold
    )

    static let presetSlotsDefault: [OutfitPreset] = [
        .defaultPreset,
        OutfitPreset(
            gender: .female,
            skinColor: .skinLight,
            torsoColor: .purple,
            patternColor: .cyan,
            legsColor: .black,
            hat: .wizard,
            hatColor: .purple,
            cape: .hero,
            capeColor: .cyan,
            shoes: .bunny,
            shoeColor: .pink,
            auraEnabled: true,
            auraColor: .cyan
        ),
        OutfitPreset(
            gender: .male,
            skinColor: .skinMedium,
            torsoColor: .red,
            patternColor: .gold,
            legsColor: .gray,
            hat: .crown,
            hatColor: .gold,
            cape: .spiderweb,
            capeColor: .black,
            shoes: .boots,
            shoeColor: .orange,
            auraEnabled: true,
            auraColor: .gold
        )
    ]
}

struct StoryQuest: Identifiable, Codable, Equatable {
    let id: String
    let chapter: Int
    let chapterTitle: String
    let title: String
    let description: String
    let recommendedMap: GameMapType
    var isCompleted: Bool

    static let initialQuests: [StoryQuest] = [
        StoryQuest(id: "q_first_regrab", chapter: 1, chapterTitle: "Глава 1. База гимнаста", title: "Первый перехват", description: "Отпусти турник и снова поймай его руками.", recommendedMap: .classic, isCompleted: false),
        StoryQuest(id: "q_first_flip", chapter: 1, chapterTitle: "Глава 1. База гимнаста", title: "Первое сальто", description: "Сделай полный переворот (360°) в воздухе.", recommendedMap: .classic, isCompleted: false),

        StoryQuest(id: "q_streak_3", chapter: 2, chapterTitle: "Глава 2. Серии перехватов", title: "Серия x3", description: "Выполни 3 перехвата подряд без падения.", recommendedMap: .classic, isCompleted: false),
        StoryQuest(id: "q_tuck_regrab", chapter: 2, chapterTitle: "Глава 2. Серии перехватов", title: "Группировка и хват", description: "Сделай сальто с кнопкой TUCK и поймай турник.", recommendedMap: .classic, isCompleted: false),

        StoryQuest(id: "q_double_flip", chapter: 3, chapterTitle: "Глава 3. Акробатика и батут", title: "Двойное сальто", description: "Выполни 2 полных оборота за один полёт.", recommendedMap: .trampoline, isCompleted: false),
        StoryQuest(id: "q_trampoline_flip", chapter: 3, chapterTitle: "Глава 3. Акробатика и батут", title: "Прыжок с батута", description: "Оттолкнись от батута и крутани сальто в воздухе.", recommendedMap: .trampoline, isCompleted: false),

        StoryQuest(id: "q_water_dive", chapter: 4, chapterTitle: "Глава 4. Водный каскад", title: "Нырок в Lagoon", description: "Прыгни в бассейн на карте Lagoon.", recommendedMap: .lagoon, isCompleted: false),
        StoryQuest(id: "q_water_swim", chapter: 4, chapterTitle: "Глава 4. Водный каскад", title: "Заплыв на Arch", description: "Проплыви дистанцию в воде, удерживая ARCH.", recommendedMap: .lagoon, isCompleted: false),

        StoryQuest(id: "q_bar_transfer", chapter: 5, chapterTitle: "Глава 5. Мастер воркаута", title: "Перелёт между турниками", description: "Перелети с одного турника на другой на Double Bar.", recommendedMap: .doubleBar, isCompleted: false),
        StoryQuest(id: "q_streak_5", chapter: 5, chapterTitle: "Глава 5. Мастер воркаута", title: "Серия x5", description: "Выполни 5 перехватов подряд без сброса.", recommendedMap: .doubleBar, isCompleted: false)
    ]
}

struct SavePayload: Codable {
    var coins: Int
    var totalEarnedFromQuests: Int
    var infiniteCoins: Bool
    var regrabs: Int
    var regrabMultiplier: Int
    var activeMap: GameMapType
    var outfit: OutfitPreset
    var savedOutfits: [OutfitPreset]
    var weather: WeatherPreset
    var skyMovement: Bool
    var skyEffects: Bool
    var windStrength: Double
    var fogDensity: Double
    var slowMoScale: Double
    var gravityScale: Double
    var ragdollGrabsBars: Bool
    var buttonEndsRagdoll: Bool
    var highFrameRate: Bool
    var showTaps: Bool
    var showDebugHUD: Bool
    var buttonScale: Double
    var leftHanded: Bool
    var bgBlur: Double
    var bgDim: Double
    var completedQuestIDs: [String]
}

final class ModStore: ObservableObject {
    @Published var coins: Int = 500
    @Published var totalEarnedFromQuests: Int = 0
    @Published var infiniteCoins: Bool = true
    @Published var regrabs: Int = 0
    @Published var regrabMultiplier: Int = 1

    // Статистика текущей попытки
    @Published var currentStreak: Int = 0
    @Published var currentFlips: Int = 0
    @Published var isHoldingBar: Bool = true
    @Published var isRagdollLimp: Bool = false

    // Карта и персонаж
    @Published var activeMap: GameMapType = .classic
    @Published var outfit: OutfitPreset = .defaultPreset
    @Published var savedOutfits: [OutfitPreset] = OutfitPreset.presetSlotsDefault

    // Погода и фото-фон
    @Published var weather: WeatherPreset = .clearDay
    @Published var skyMovement: Bool = true
    @Published var skyEffects: Bool = true
    @Published var windStrength: Double = 0.0
    @Published var fogDensity: Double = 0.35
    @Published var bgBlur: Double = 0.0
    @Published var bgDim: Double = 0.25
    @Published var customBackgroundImage: UIImage? = nil

    // Физика и мод-настройки
    @Published var slowMoScale: Double = 1.0
    @Published var gravityScale: Double = 1.0
    @Published var ragdollGrabsBars: Bool = true
    @Published var buttonEndsRagdoll: Bool = true
    @Published var highFrameRate: Bool = true
    @Published var showTaps: Bool = true
    @Published var showDebugHUD: Bool = false
    @Published var buttonScale: Double = 1.0
    @Published var leftHanded: Bool = false

    // Сюжет и баннер уведомлений
    @Published var quests: [StoryQuest] = StoryQuest.initialQuests
    @Published var bannerMessage: String? = nil

    private var bannerWorkItem: DispatchWorkItem?

    private var documentsURL: URL {
        FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }

    private var saveFileURL: URL {
        documentsURL.appendingPathComponent("noomi_offline_save.json")
    }

    private var bgImageURL: URL {
        documentsURL.appendingPathComponent("custom_bg.jpg")
    }

    init() {
        loadFromDisk()
        loadBackgroundPhoto()
    }

    var completedQuestCount: Int {
        quests.filter { $0.isCompleted }.count
    }

    func completeQuest(id: String) {
        guard let index = quests.firstIndex(where: { $0.id == id }), !quests[index].isCompleted else { return }
        quests[index].isCompleted = true
        coins += 100
        totalEarnedFromQuests += 100
        showBanner("🏆 \(quests[index].title) — +100 монет!")
        saveToDisk()
    }

    func registerRegrab(transferredBar: Bool, flipWithTuck: Bool) {
        regrabs += max(1, regrabMultiplier)
        currentStreak += 1

        completeQuest(id: "q_first_regrab")
        if currentStreak >= 3 {
            completeQuest(id: "q_streak_3")
        }
        if currentStreak >= 5 {
            completeQuest(id: "q_streak_5")
        }
        if flipWithTuck {
            completeQuest(id: "q_tuck_regrab")
        }
        if transferredBar {
            completeQuest(id: "q_bar_transfer")
        }
        saveToDisk()
    }

    func registerFlightFlip(flightFlips: Int, fromTrampoline: Bool) {
        currentFlips += 1
        completeQuest(id: "q_first_flip")
        if flightFlips >= 2 {
            completeQuest(id: "q_double_flip")
        }
        if fromTrampoline {
            completeQuest(id: "q_trampoline_flip")
        }
    }

    func showBanner(_ text: String) {
        bannerWorkItem?.cancel()
        withAnimation(.easeInOut(duration: 0.2)) {
            bannerMessage = text
        }
        let item = DispatchWorkItem { [weak self] in
            withAnimation(.easeInOut(duration: 0.25)) {
                self?.bannerMessage = nil
            }
        }
        bannerWorkItem = item
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: item)
    }

    func saveOutfitToSlot(_ slot: Int) {
        guard slot >= 0 && slot < savedOutfits.count else { return }
        savedOutfits[slot] = outfit
        showBanner("Образ сохранён в слот \(slot + 1)")
        saveToDisk()
    }

    func loadOutfitFromSlot(_ slot: Int) {
        guard slot >= 0 && slot < savedOutfits.count else { return }
        outfit = savedOutfits[slot]
        showBanner("Загружен образ \(slot + 1)")
        saveToDisk()
    }

    func setCustomBackground(_ image: UIImage) {
        let resized = resizeImageIfNeeded(image, maxDimension: 1600)
        customBackgroundImage = resized
        if let data = resized.jpegData(compressionQuality: 0.85) {
            try? data.write(to: bgImageURL, options: .atomic)
        }
        showBanner("Фото-фон установлен")
        saveToDisk()
    }

    func removeCustomBackground() {
        customBackgroundImage = nil
        try? FileManager.default.removeItem(at: bgImageURL)
        saveToDisk()
    }

    func resetSettingsToDefaults() {
        infiniteCoins = true
        regrabMultiplier = 1
        weather = .clearDay
        skyMovement = true
        skyEffects = true
        windStrength = 0.0
        fogDensity = 0.35
        bgBlur = 0.0
        bgDim = 0.25
        removeCustomBackground()
        slowMoScale = 1.0
        gravityScale = 1.0
        ragdollGrabsBars = true
        buttonEndsRagdoll = true
        highFrameRate = true
        showTaps = true
        showDebugHUD = false
        buttonScale = 1.0
        leftHanded = false
        outfit = .defaultPreset
        showBanner("Параметры сброшены до стандартных")
        saveToDisk()
    }

    func resetAllProgress() {
        coins = 0
        totalEarnedFromQuests = 0
        regrabs = 0
        currentStreak = 0
        currentFlips = 0
        quests = StoryQuest.initialQuests
        showBanner("Прогресс и сюжет обнулены")
        saveToDisk()
    }

    func saveToDisk() {
        let payload = SavePayload(
            coins: coins,
            totalEarnedFromQuests: totalEarnedFromQuests,
            infiniteCoins: infiniteCoins,
            regrabs: regrabs,
            regrabMultiplier: regrabMultiplier,
            activeMap: activeMap,
            outfit: outfit,
            savedOutfits: savedOutfits,
            weather: weather,
            skyMovement: skyMovement,
            skyEffects: skyEffects,
            windStrength: windStrength,
            fogDensity: fogDensity,
            slowMoScale: slowMoScale,
            gravityScale: gravityScale,
            ragdollGrabsBars: ragdollGrabsBars,
            buttonEndsRagdoll: buttonEndsRagdoll,
            highFrameRate: highFrameRate,
            showTaps: showTaps,
            showDebugHUD: showDebugHUD,
            buttonScale: buttonScale,
            leftHanded: leftHanded,
            bgBlur: bgBlur,
            bgDim: bgDim,
            completedQuestIDs: quests.filter { $0.isCompleted }.map { $0.id }
        )
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        if let data = try? encoder.encode(payload) {
            try? data.write(to: saveFileURL, options: .atomic)
        }
    }

    private func loadFromDisk() {
        guard let data = try? Data(contentsOf: saveFileURL),
              let payload = try? JSONDecoder().decode(SavePayload.self, from: data) else { return }

        coins = payload.coins
        totalEarnedFromQuests = payload.totalEarnedFromQuests
        infiniteCoins = payload.infiniteCoins
        regrabs = payload.regrabs
        regrabMultiplier = payload.regrabMultiplier
        activeMap = payload.activeMap
        outfit = payload.outfit
        if payload.savedOutfits.count == 3 {
            savedOutfits = payload.savedOutfits
        }
        weather = payload.weather
        skyMovement = payload.skyMovement
        skyEffects = payload.skyEffects
        windStrength = payload.windStrength
        fogDensity = payload.fogDensity
        slowMoScale = payload.slowMoScale
        gravityScale = payload.gravityScale
        ragdollGrabsBars = payload.ragdollGrabsBars
        buttonEndsRagdoll = payload.buttonEndsRagdoll
        highFrameRate = payload.highFrameRate
        showTaps = payload.showTaps
        showDebugHUD = payload.showDebugHUD
        buttonScale = payload.buttonScale
        leftHanded = payload.leftHanded
        bgBlur = payload.bgBlur
        bgDim = payload.bgDim

        let doneSet = Set(payload.completedQuestIDs)
        quests = StoryQuest.initialQuests.map { q in
            var copy = q
            copy.isCompleted = doneSet.contains(q.id)
            return copy
        }
    }

    private func loadBackgroundPhoto() {
        if let data = try? Data(contentsOf: bgImageURL), let img = UIImage(data: data) {
            customBackgroundImage = img
        }
    }

    private func resizeImageIfNeeded(_ image: UIImage, maxDimension: CGFloat) -> UIImage {
        let maxSide = max(image.size.width, image.size.height)
        guard maxSide > maxDimension else { return image }
        let ratio = maxDimension / maxSide
        let newSize = CGSize(width: image.size.width * ratio, height: image.size.height * ratio)
        let renderer = UIGraphicsImageRenderer(size: newSize)
        return renderer.image { _ in
            image.draw(in: CGRect(origin: .zero, size: newSize))
        }
    }
}
