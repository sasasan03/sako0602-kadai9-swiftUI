//import SwiftUI
import Foundation
//stringは先頭へ入れる
//CaseIterableは配列として扱えるようになる。
enum Prefectures: String, CaseIterable {//, Identifiable {
    case tokyo //= "東京"
    case kanagawa //= "神奈川"
    case saitama //= "埼玉"
    case chiba //= "千葉"
    
//    var id: Self { self }
    
    var name: String {
        //selfがないと、（　Expected expression in 'switch' statement　）
        switch self {
        case .tokyo: return "東京"
        case .kanagawa: return "神奈川"
        case .saitama: return "埼玉"
        case . chiba : return "千葉"
        }
    }
    
//    var size: Int {
//        switch self {
//        case .tokyo: return 100
//        case .kanagawa: return 200
//        }
//    }
}

Prefectures.allCases.forEach { prefectures in
    print(prefectures.name)//.rawValue)
}
let aaa = Prefectures.allCases
let number = [1,2,3,4,5]

number.forEach { number in
    print(number)
}
//ForEach(Prefectures.allCases) { prefecture in
//    Text(prefecture.rawValue)
//} Viewで試す

var selecedPrefecture = "未選択"


