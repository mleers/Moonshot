//
//  ListLayout.swift
//  Moonshot
//
//  Created by Mitch on 10/27/22.
//  Copyright © 2022 mleers. All rights reserved.
//

import SwiftUI

struct ListLayout: View {
    let missions: [Mission]
    let astronauts: [String: Astronaut]
    
    var body: some View {
        List {
            ForEach(missions) { mission in
                NavigationLink {
                    MissionView(mission: mission, astronauts: astronauts)
                } label: {
                    HStack {
                        Image(mission.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .accessibilityLabel("\(mission.imageName) mission badge")
                        VStack {
                            Text(mission.displayName)
                                .font(.headline)
                                .foregroundColor(.white)
                            Text(mission.formattedLaunchDate)
                                .font(.caption)
                                .foregroundColor(.white.opacity(0.5))
                        }
                        .accessibilityElement()
                        .accessibilityLabel(mission.displayName)
                        .accessibilityHint(mission.formattedLaunchDate)
//                        .padding(.vertical)
//                        .frame(maxWidth: .infinity)
//                        .background(.lightBackground)
                    }

//                    .clipShape(RoundedRectangle(cornerRadius: 10))
//                    .overlay(
//                        RoundedRectangle(cornerRadius: 10)
//                            .stroke(.lightBackground)
//                    )
                }
                .listRowBackground(Color.darkBackground)

            }
        }
        .listStyle(.plain)
    }
}

struct ListLayout_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        ListLayout(missions: missions, astronauts: astronauts)
            .preferredColorScheme(.dark)
    }
}
