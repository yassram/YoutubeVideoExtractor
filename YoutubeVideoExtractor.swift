//
//  YoutubeVideoExtractor.swift
//  YoutubeVideoUrlExtract
//
//  Created by yassir ramdani on 24/11/2018.
//  Copyright © 2018 yassir ramdani. All rights reserved.
//

import Foundation

func getDictionnaryFrom(string: String) -> [String:String] {
    var dic = [String:String]()
    let parts = string.components(separatedBy: "&")
    for part in parts{
        let keyval = part.components(separatedBy: "=")
        if (keyval.count > 1 && keyval.first == "url_encoded_fmt_stream_map"){
            for video in keyval[1].removingPercentEncoding?.components(separatedBy: ",") ?? [] {
                let videoDetail = video.components(separatedBy: "&")
                var quality = ""
                var url = ""
                for v in videoDetail {
                    if v.starts(with: "quality") {
                        quality = v.components(separatedBy: "=")[1]
                    }
                    if v.starts(with: "url") {
                        url = v.components(separatedBy: "=")[1].removingPercentEncoding!
                    }
                }
                dic[quality] = url
            }
            
        }
    }
    return dic
}

func extractVideos(from youtubeId : String, completion: @escaping (([String:String]) -> (Void)))
{
    let strUrl = "http://www.youtube.com/get_video_info?video_id=\(youtubeId)&el=embedded&ps=default&eurl=&gl=US&hl=en"
    let url = URL(string: strUrl)!
    
    URLSession.shared.dataTask(with: url) { (datatmp, response, error) in
        if let error = error {
            print(error.localizedDescription)
            return
        }
        guard (response as? HTTPURLResponse) != nil else {
            print(response as Any)
            return
        }
        
        if let data = datatmp,
            let string = String(data: data, encoding: .utf8) {
            let dic = getDictionnaryFrom(string: string)
            completion(dic)
            print()
        }
        }.resume()
    
}

