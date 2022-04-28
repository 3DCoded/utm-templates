//
//  MainView.swift
//  UTM Templates
//
//  Created by Christopher Mattar on 3/25/22.
//

import SwiftUI
import CoreData

struct MainView: View {
    
    @Environment(\.openURL) var openURL
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: HomeView()) {
                    Label("Home", systemImage: "house")
                }
                NavigationLink(destination: {
                    DetailView(title: "Windows 10", link: "https://api.onedrive.com/v1.0/shares/u!aHR0cHM6Ly8xZHJ2Lm1zL3UvcyFBbzNpSVRXZV9FWmdwdElidHBEQV8tVmk4NlJhTmc_ZT1nZFFiUlo/root", attributes: [
                        VMAttribute(key: "Memory", value: "8GB"),
                        VMAttribute(key: "Disk", value: "64GB"),
                        VMAttribute(key: "Password", value: "windows"),
                        VMAttribute(key: "SPICE Guest Tools", value: "Installed")
                    ])
                }) {
                    HStack {
                        Image("windows")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20)
                        Text("Windows 10")
                    }
                }
                NavigationLink(destination: {
                    DetailView(title: "Windows 11", link: "https://api.onedrive.com/v1.0/shares/u!aHR0cHM6Ly8xZHJ2Lm1zL3UvcyFBbzNpSVRXZV9FWmdwdEljZVR2RTN0WTB2eUdVWFE_ZT1MOGFmMEk/root", attributes: [
                        VMAttribute(key: "Memory", value: "8GB"),
                        VMAttribute(key: "Disk", value: "64GB"),
                        VMAttribute(key: "Password", value: "windows"),
                        VMAttribute(key: "SPICE Guest Tools", value: "Installed")
                    ])
                }) {
                    Image("windows-11")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20)
                    Text("Windows 11")
                    
                }
                NavigationLink(destination: {
                    DetailView(title: "macOS 12", link: "https://api.onedrive.com/v1.0/shares/u!aHR0cHM6Ly8xZHJ2Lm1zL3UvcyFBbzNpSVRXZV9FWmdwdElmU29IeXczbmRKZEFGQlE_ZT0xNmFia1c/root", attributes: [
                        VMAttribute(key: "Memory", value: "8GB"),
                        VMAttribute(key: "Disk", value: "64GB"),
                        VMAttribute(key: "Password", value: "macos"),
                        VMAttribute(key: "SPICE Guest Tools", value: "Not Installed")
                    ])
                }) {
                    Image("mac")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20)
                    Text("macOS 12")
                }
                NavigationLink(destination: {
                    DetailView(title: "Ubuntu Linux", link: "https://api.onedrive.com/v1.0/shares/u!aHR0cHM6Ly8xZHJ2Lm1zL3UvcyFBbzNpSVRXZV9FWmdwdElkTmhWQ0ZmZzV3aFpiSVE_ZT1NVGdXUlA/root", attributes: [
                        VMAttribute(key: "Memory", value: "8GB"),
                        VMAttribute(key: "Disk", value: "64GB"),
                        VMAttribute(key: "Username", value: "ubuntu"),
                        VMAttribute(key: "Password", value: "ubuntu"),
                        VMAttribute(key: "SPICE Guest Tools", value: "Installed")
                    ])
                }) {
                    Image("ubuntu")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20)
                    Text("Ubuntu Linux")
                }
                NavigationLink(destination: {
                    DetailView(title: "Fedora Linux", link: "https://api.onedrive.com/v1.0/shares/u!aHR0cHM6Ly8xZHJ2Lm1zL3UvcyFBbzNpSVRXZV9FWmdwdEllVmM0NUFHSkdRdkZKTnc_ZT10cmZEOVk/root", attributes: [
                        VMAttribute(key: "Memory", value: "8GB"),
                        VMAttribute(key: "Disk", value: "64GB"),
                        VMAttribute(key: "Username", value: "fedora"),
                        VMAttribute(key: "Password", value: "fedora"),
                        VMAttribute(key: "SPICE Guest Tools", value: "Installed")
                    ])
                }) {
                    Image("fedora")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20)
                    Text("Fedora Linux")
                }
                NavigationLink(destination: {
                    DetailView(title: "OpenSUSE Linux", link: "https://api.onedrive.com/v1.0/shares/u!aHR0cHM6Ly8xZHJ2Lm1zL3UvcyFBbzNpSVRXZV9FWmdwdEloZUxCUlV6d09ZdTRJbnc_ZT1Ea3hORG0/root", attributes: [
                        VMAttribute(key: "Memory", value: "8GB"),
                        VMAttribute(key: "Disk", value: "64GB"),
                        VMAttribute(key: "Username", value: "opensuse"),
                        VMAttribute(key: "Password", value: "opensuse"),
                        VMAttribute(key: "SPICE Guest Tools", value: "Installed")
                    ])
                }) {
                    Image("suse")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20)
                    Text("OpenSuse Linux")
                }
            }
            .navigationTitle("UTM Templates")
            .listStyle(.sidebar)
            .frame(minWidth: 180)
            
            HomeView()
        }
        .frame(minWidth: 800, minHeight: 600)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
