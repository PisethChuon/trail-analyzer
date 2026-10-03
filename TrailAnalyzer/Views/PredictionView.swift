//
//  PredictionView.swift
//  TrailAnalyzer
//
//  Created by chuonpiseth on 3/10/26.
//

import SwiftUI

struct PredictionView: View {
    @State var predictionRisk: Risk
    
    var body: some View {
        VStack {
            RiskCard(risk: predictionRisk)
            Spacer()
        }
        .navigationTitle("Results")
        .navigationBarTitleDisplayMode(.large)
        .toolbar {

            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink {
                    riskSummaryView
                } label: {
                    Image(systemName: "info.circle")
                }
            }
        }
        .trailTheme()
    }
    
    var riskSummaryView: some View {
        ScrollView {
            ForEach(Risk.allCases) {
                RiskCard(risk: $0)
            }
        }
    }
}

#Preview {
    NavigationStack {
        PredictionView(predictionRisk: .moderate)
    }
}
