//
//  SharedDataManager.swift
//  Sample Pressage App
//
//  Created by Bill Vivino on 4/4/24.
//

import Foundation
import Combine
import UIKit

class SharedDataManager: ObservableObject {
    static let shared = SharedDataManager()
    @Published public var pulsePleth: [(time: Double, value: Double)] = []
    @Published public var breathingPleth: [(time: Double, value: Double)] = []
    @Published public var hrValues: [(time: Double, value: Double)] = []
    @Published public var hrConfidence: [(time: Double, value: Double)] = []
    @Published public var rrValues: [(time: Double, value: Double)] = []
    @Published public var rrConfidence: [(time: Double, value: Double)] = []
    @Published public var rrl: [(time: Double, value: Double)] = []
    @Published public var apnea: [(time: Double, value: Double)] = []
    @Published public var ie: [(time: Double, value: Double)] = []
    @Published public var amplitude: [(time: Double, value: Double)] = []
    @Published public var baseline: [(time: Double, value: Double)] = []
    @Published public var phasic: [(time: Double, value: Double)] = []
    @Published var strictPulseRate: Double = 0.0
    @Published var strictBreathingRate: Double = 0.0
    @Published var jsonMetrics: [String: Any]?

    @Published var resultView : SmartSpectraResultView = {
        let res = SmartSpectraResultView()
        res.translatesAutoresizingMaskIntoConstraints = false
        return res
    }()

//    @Published var resultView: SmartSpectraResultView = SmartSpectraResultView()

    private init() {} // Private initializer to ensure singleton usage
}

