//
//  Transition.swift
//  SwiftUI Basic
//
//  Created by Bokyung on 2023/04/04.
//
/**
 transition: 화면 전환 효과, animation과 비슷
 move: 단방향 이동 transition
 opacity: 투명도 조절 transition
 scale: 크기 조절 transition
 asymmetric: 비대칭 방향 이동 transition
 */

import SwiftUI

struct Transition: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct Transition_Previews: PreviewProvider {
    static var previews: some View {
        Transition()
    }
}
