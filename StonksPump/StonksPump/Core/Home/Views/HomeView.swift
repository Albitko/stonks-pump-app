//
//  HomeView.swift
//  StonksPump
//
//  Created by Alex on 17.08.2021.
//

import SwiftUI

struct HomeView: View {
    @State private var showPortfolio = false
    
    var body: some View {
        ZStack{
            // Background layer
            Color.theme.background
                .ignoresSafeArea()
            
            // Content layer
            VStack{
                homeHeader
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            } 
        }
    }
}

extension HomeView {
    private var homeHeader: some View {
        HStack{
            CircleButtonView(iconName: showPortfolio ? "plus" : "info")
                .animation(.none)
                .background(CircleButtonAnimationView(animate: $showPortfolio))
            Spacer()
            Text(showPortfolio ? "Portfolio" : "Live Pumps")
                .font(.headline)
                .foregroundColor(Color.theme.accent)
                .fontWeight(.heavy)
                .animation(.none)
            Spacer()
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(Animation.spring()){
                        showPortfolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            HomeView()
                .navigationBarHidden(true)
        }
    }
}
