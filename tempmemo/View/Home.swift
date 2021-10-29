//
//  Home.swift
//  tempmemo
//
//  Created by 구민준 on 2021/10/29.
//

import SwiftUI
import SDWebImageSwiftUI

struct Home: View {
  
  @State var offset: CGFloat = 0
  
  var body: some View {
    GeometryReader { proxy in
      
      let rect = proxy.frame(in: .global)
      ScrollableTabBar(tabs: tabs, rect: rect, offset: $offset) {
        HStack(spacing: 0) {
          

        }
        .ignoresSafeArea()
      }
      
      
    }
    .ignoresSafeArea()
    .onChange(of: offset) { newValue in print(newValue) } /* delegate 값오는거 확인 */
  }
}

struct Home_Previews: PreviewProvider {
  static var previews: some View {
    Home()
  }
}

var tabs = ["Record", "Home", "Setting"]
