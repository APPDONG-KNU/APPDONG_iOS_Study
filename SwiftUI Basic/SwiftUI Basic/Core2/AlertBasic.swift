//
//  AlertBasic.swift
//  SwiftUI Basic
//
//  Created by Bokyung on 2023/04/09.
//

import SwiftUI

struct AlertBasic: View {
    // alert:  pop-up 창으로 UI화면에 메세지를 나타냄
    // property
    @State var showAlert1: Bool = false
    @State var showAlert2: Bool = false
    @State var showAlert3: Bool = false
    @State var showAlert4: Bool = false
    
    @State var backgroundColor: Color = Color.yellow
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var alertType: AlterCase? = nil
    
    enum AlterCase {
        case success
        case error
    }
    
    func getAlert2() -> Alert {
        return Alert(title: Text("메세지 삭제"),
                     message: Text("정말로 메세지 삭제 하시겠습니까?"),
                     primaryButton: .destructive(Text("delete"), action: {
            backgroundColor = .red
        }),
                     secondaryButton:   .cancel())
    }
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                // 1번
                Button {
                    showAlert1.toggle()
                } label: {
                    Text("1번 Alert")
                }.alert(isPresented: $showAlert1) {
                    Alert(title: Text("패스워드 에러입니다. 다시 확인하세요."))
                }
                
                 // 2번
                Button {
                    showAlert2.toggle()
                } label: {
                    Text("2번 Alert")
                }.alert(isPresented: $showAlert2) {
                    getAlert2()
                }

                // 3번
                

            }
        } // : VStack
    }
}

struct AlertBasic_Previews: PreviewProvider {
    static var previews: some View {
        AlertBasic()
    }
}
