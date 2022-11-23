//
//  HomeView.swift
//  SwiggyComponents
//
//  Created by htcuser on 23/11/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack{
                CarouselView()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
