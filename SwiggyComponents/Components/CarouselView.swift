//
//  CarouselView.swift
//  SwiggyComponents
//
//  Created by htcuser on 23/11/22.
//

import SwiftUI

struct CarouselView: View {
    @Namespace var namespace
    var banners = ["s1","s2","s3","s4","s5"]
    @State var index = 0
    
    var body: some View {
        VStack{
            TabView(selection: $index) {
                ForEach(0...4,id: \.self) { index in
                    Image(banners[index])
                        .resizable()
                        .scaledToFill()
                        .frame(width:UIScreen.main.bounds.size.width*0.9,height: 200)
                        .cornerRadius(12)
                        .clipped()
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            HStack(spacing: 2) {
                ForEach((0..<banners.count), id: \.self) { index in
                    if index == self.index{
                        Text("\(index+1)/\(banners.count)")
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.horizontal,8)
                            .padding(.vertical,2)
                            .background(.black)
                            .clipShape(Capsule())
                    }else{
                        Circle()
                            .fill(.orange)
                            .frame(width: 16, height: 16)
                    }
                }
            }
            
        }
        .padding()
        .frame(height: 260)
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView()
    }
}
