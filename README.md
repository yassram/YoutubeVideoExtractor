# YoutubeVideoExtractor

<p align="center">
    <img src="https://img.shields.io/badge/iOS-swift-orange.svg">
    <img src="https://img.shields.io/badge/Swift-4.2-blue.svg">
    <img src="https://img.shields.io/badge/YouTube-API-red.svg">
    <img src="https://img.shields.io/badge/Example-Included-green.svg">
</p>

## Motivation :
**YouTube** provides an *API to developers* (https://developers.google.com/youtube/) allowing them to use **YouTube**'s data (videos stats, comments, playlists, account management, auth, ...) in their own apps. 

However in order to **stream videos** there are *only 2 options* : 
1) Using a youtube library that uses **UIWebView** to use the **Javascript player**.

2) **Embed html** video integration (really html ????) like in websites. 

Both ways offer **very few customization** options to 3rd-party applications ! and **DO NOT ALLOW TO DOWNLOAD** videos.

## Solution :
The solution is to extract **videos files urls'** (mp4) from youtube **VideoId**. And with the url you can handle the video as you want (*download, stream, custom player, convert to mp3, music downloaders apps ...*).


# Install :
include ```YoutubeVideoExtractor.swift``` to your project

# How to use :
YoutubeVideoExtractor offers a function with that takes a YouTube **VideoId** and a **completion handler** to perform actions on urls extracted from the given *videoId*.


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

# Example
You can find in this repo a very basic example of using **YoutubeVideoExtractor** with a simple **AVPlayer**.
<p align="center">
    <img width="200" src="https://github.com/yassram/YoutubeVideoExtractor/blob/master/Simulator%20Screen%20Shot%20-%20iPhone%20XR%20-%202018-12-02%20at%2000.54.18.png?raw=true">
</p>
   
# Applications using YoutubeVideoExtractor :
*if you are using **YoutubeVideoExtractor** please contact as to add you to the list.*

*(comming soon)*
