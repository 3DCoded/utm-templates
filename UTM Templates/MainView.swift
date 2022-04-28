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
                Section(header: Text("Official")) {
                    NavigationLink(destination: {
                        DetailView(title: "ArchLinux ARM", link: "https://api.onedrive.com/v1.0/shares/u!aHR0cHM6Ly8xZHJ2Lm1zL3UvcyFBbzNpSVRXZV9FWmdwdnAweWJlY2FQNTQ0c3VreXc_ZT1SbWNleHU/root", attributes: [
                            VMAttribute(key: "Memory", value: "2GB"),
                            VMAttribute(key: "Disk", value: "10GB"),
                            VMAttribute(key: "Username", value: "root"),
                            VMAttribute(key: "Password", value: "root"),
                            VMAttribute(key: "SPICE Guest Tools", value: "Not Installed")
                        ])
                    }) {
                        HStack {
                            Image("arch-linux")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20)
                            Text("ArchLinux ARM")
                        }
                    }
                    NavigationLink(destination: {
                        DetailView(title: "Debian ARM 10.4 i3", link: "https://api.onedrive.com/v1.0/shares/u!aHR0cHM6Ly8xZHJ2Lm1zL3UvcyFBbzNpSVRXZV9FWmdwdnAzekxSUkZkSHpIaGowNUE_ZT1aaWlMa2E/root", attributes: [
                            VMAttribute(key: "Memory", value: "1GB"),
                            VMAttribute(key: "Disk", value: "10GB"),
                            VMAttribute(key: "Username", value: "debian"),
                            VMAttribute(key: "Password", value: "debian"),
                            VMAttribute(key: "Root Username", value: "root"),
                            VMAttribute(key: "Root Password", value: "password"),
                            VMAttribute(key: "SPICE Guest Tools", value: "Installed")
                        ])
                    }) {
                        HStack {
                            Image("debian")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20)
                            Text("Debian ARM 10.4 LDXE")
                        }
                    }
                    NavigationLink(destination: {
                        DetailView(title: "Debian ARM 10.4 LDXE", link: "https://api.onedrive.com/v1.0/shares/u!aHR0cHM6Ly8xZHJ2Lm1zL3UvcyFBbzNpSVRXZV9FWmdwdnA1Z3d1eFhhSS1TdWJJeFE_ZT0xS1JpN0g/root", attributes: [
                            VMAttribute(key: "Memory", value: "1GB"),
                            VMAttribute(key: "Disk", value: "10GB"),
                            VMAttribute(key: "Username", value: "debian"),
                            VMAttribute(key: "Password", value: "debian"),
                            VMAttribute(key: "Root Username", value: "root"),
                            VMAttribute(key: "Root Password", value: "password"),
                            VMAttribute(key: "SPICE Guest Tools", value: "Installed")
                        ])
                    }) {
                        HStack {
                            Image("debian")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20)
                            Text("Debian ARM 10.4 i3")
                        }
                    }
                }
                Section(header: Text("Custom")) {
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
                Section(header: Text("Community Uploaded")) {
                    
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
