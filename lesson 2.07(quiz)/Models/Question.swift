//
//  Question.swift
//  lesson 2.07(quiz)
//
//  Created by Феликс Антонович on 08.11.2024.
//

struct Question {
    let title: String
    let type: ResponseType
    let answer: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(
            title: "Какую пищу вы предпочитаете?",
            type: .single,
            answer: [
                Answer(title: "Стейк", animal: .dog),
                Answer(title: "Рыба", animal: .cat),
                Answer(title: "Морковь", animal: .rabbit),
                Answer(title: "Кукуруза", animal: .turtle)
            ]
        ),
            Question(
            title: "Что вам нравится больше?",
            type: .multiple,
            answer: [
                Answer(title: "Плавать", animal: .dog),
                Answer(title: "Спать", animal: .cat),
                Answer(title: "Обниматься", animal: .rabbit),
                Answer(title: "Есть", animal: .turtle)
            ]
        ),
            Question(
            title: "Любите ли вы поездки на машине?",
            type: .ranged,
            answer: [
                Answer(title: "Ненавижу", animal: .cat),
                Answer(title: "Нервничаю", animal: .rabbit),
                Answer(title: "Не замечаю", animal: .turtle),
                Answer(title: "Обожаю", animal: .dog)
            ]
        )
        ]
    }
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Answer {
    let title: String
    let animal: Animal
}

enum Animal: Character {
    case cat = "🐱"
    case dog = "🐶"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .cat:
            "Вы себе на уме. Любите гулять сами по себе. Вы цените одиночество."
        case .dog:
            "Вам нравится быть с друзьями. Вы окружаете себя людьми, которые вам нравятся и всегда готовы помочь."
        case .rabbit:
            "Вам нравится всё мягкое. Вы здоровы и полны энергии."
        case .turtle:
            "Ваша сила в мудрости. Медленный и вдумчивый выигрывает на больших дистанциях"
        }
    }
}
