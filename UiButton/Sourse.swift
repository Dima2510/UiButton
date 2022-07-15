//
//  Sourse.swift
//  UiButton
//
//  Created by Дмитрий Процак on 16.07.2022.
//

import Foundation


struct Sourse {
    enum SourceType {
        case word
        case action
    }
    
    private static let trueSource = [
    "Расскажи 5 фактов о себе",
    "Как выглядело первое свидание и первый поцелуй",
    "За что до сих пор стыдно",
    "О чем ьы мечтаешь"]
    
    private static let actionSourse = [
    "Потанцуй под музыку,которую выбрали другие игроки",
    "Изобрази свой дьяволський смех",
    "Отожмись 10 раз",
    "Спарадируй любого человека",
    "Изобрази известную личность"]
    
    static func getInfo(type:SourceType) -> String {
        switch type {
        case .word:
            return trueSource[Int.random(in: 0..<trueSource.count)]
        case .action:
            return actionSourse[Int.random(in: 0..<actionSourse.count)]
        }
    }
}
