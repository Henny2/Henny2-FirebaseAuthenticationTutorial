//
//  ProfileView.swift
//  FirebaseAuthTutorial
//
//  Created by Henrieke Baunack on 10/26/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        List {
            // no title for this section
            Section{
                HStack {
                    Text(User.MOCK_USER.initials)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 72, height: 72)
                        .background(Color(.systemGray3))
                        .clipShape(.circle)
                    VStack(alignment: .leading, spacing: 4){
                        Text(User.MOCK_USER.fullName)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .padding(.top, 4)
                        Text(User.MOCK_USER.email)
                            .font(.footnote)
                            .accentColor(.gray) // because it recognizes it as an email, only works with a direct string, not with a variable/parameter
                            .foregroundColor(.gray)
                    }
                }

            }
            Section("General"){
                HStack {
                    SettingsRowView(imageName: "gear", title: "Version", tintColor: Color(.systemGray))
                    Spacer()
                    Text("1.0.0")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            Section("Account"){
                Button {
                    print("logging out")
                } label: {
                    SettingsRowView(imageName: "arrow.left.circle.fill",
                                    title: "Sign Out",
                                    tintColor: .red)
                }
                Button {
                    print("delete account")
                } label: {
                    SettingsRowView(imageName: "xmark.circle.fill",
                                    title: "Delete Account",
                                    tintColor: .red)
                }


            }
        }
    }
}

#Preview {
    ProfileView()
}
