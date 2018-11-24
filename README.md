# YoutubeVideoUrlExtract
A youtube video extractor from videoid (Swift 4)

# Install :
include "YoutubeVideoExtractor.swift" to your project

# How to use :

```swift
let videoId = "iol8n3m88SA" // your youtube video id here
extractVideos(from: videoId) { (dic) -> (Void) in 
    
    // dic is a Dictionary of available video quality 
    // the url of the video with hd720 quality (if available) is : dic["hd720"]
    // to print all available qualities use :
    print(dic.keys)
    
    // use dic here
}
```
