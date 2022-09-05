//
//  Model.swift
//  UpworkApp-1
//
//  Created by Caner Çağrı on 5.09.2022.
//

import Foundation

struct Model {
    let title: String
    let answer: Bool
    let description: String
}

struct MockData {
    static var dataArray: [Model] = [
        Model(title: "The Earth Is Flat", answer: false, description: "By around 500 B.C., most ancient Greeks believed that Earth was round, not flat. But they had no idea how big the planet is until about 240 B.C., when Eratosthenes devised a clever method of estimating its circumference."),
        Model(title: "Edison Find Electricity", answer: true, description: "By January 1879, at his laboratory in Menlo Park, New Jersey, Edison had built his first high resistance, incandescent electric light. It worked by passing electricity through a thin platinum filament in the glass vacuum bulb, which delayed the filament from melting."),
        Model(title: "January 1, 1981 is considered the official birthday of the Internet", answer: false, description: "A new communications protocol was established called Transfer Control Protocol/Internetwork Protocol (TCP/IP). This allowed different kinds of computers on different networks to talk to each other. ARPANET and the Defense Data Network officially changed to the TCP/IP standard on January 1, 1983, hence the birth of the Internet. All networks could now be connected by a universal language."),
        Model(title: "International Space Station was launched in 1998", answer: true, description: "The process of assembling the International Space Station (ISS) has been under way since the 1990s. Zarya, the first ISS module, was launched by a Proton rocket on 20 November 1998")
    ]
}
