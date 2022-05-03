//
//  VersionController.swift
//  UTM Templates
//
//  Created by Christopher Mattar on 4/29/22.
//

import Foundation
import Version

struct Release {
    var version: Version
    var body: String
    var downloadURL: URL
}

class VersionController: ObservableObject {
    
    static let shared = VersionController()
    
    @Published var latest: Release? = nil
    
    func check() {
        if let url = URL(string: "https://api.github.com/repos/smattar2020/utm-templates/releases") {
            if let data = try? Data(contentsOf: url) {
                if let jsonVersions = try? JSONSerialization.jsonObject(with: data) as? [[String:Any]] {
                    var versions: [Version:[String:Any]] = [:]
                    for jsonVersion in jsonVersions {
                        if var jsonVersionName = jsonVersion["name"] as? String, jsonVersionName.count > 0 {
                            jsonVersionName.remove(at: jsonVersionName.startIndex)
                            if let version = try? Version(jsonVersionName) {
                                versions[version] = jsonVersion
                            }
                        }
                    }
                    if var newestVersion = versions.keys.first, var newestVersionData = versions.values.first {
                        for (version, data) in versions {
                            if version > newestVersion {
                                newestVersion = version
                                newestVersionData = data
                            }
                        }
                        if let body = newestVersionData["body"] as? String {
                            if let assets = newestVersionData["assets"] as? [[String:Any]] {
                                if let firstAsset = assets.first {
                                    if let downloadURLString = firstAsset["browser_download_url"] as? String {
                                        if let downloadURL = URL(string: downloadURLString) {
                                            latest = Release(version: newestVersion, body: body, downloadURL: downloadURL)
                                            // TODO: show the user the release notes and version, and allow them to click download.
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
