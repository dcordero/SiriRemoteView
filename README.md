# SiriRemoteView

Simple View representing a Siri Remote device to provide a more visual context to hint views.

![](preview.png)

## Description

SiriRemoteView is a subclass of UIView, which allows representing a Siri Remote Device and its actions.

Customizable properties:

- lineColor: Color used to draw the shape line
- lineWidth: Width of the line
- hightlightColor: Color of the highlighted button
- highlightedButton: Optional, if present a Siri Remote key is highlighted


## Requirements

- tvOS 9.0+
- Xcode 8.2

## Usage

All you need is to create an instance of SiriRemoteView and add it on the screen:

```swift
let siriRemote = SiriRemoteView()
siriRemote.backgroundColor = .clear
siriRemote.lineColor = .black
siriRemote.hightlightColor = .black
siriRemote.highlightedButton = .menu

view.addSubview(siriRemote)
```

## Installation

### Cocoapods

To integrate SiriRemoteView into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :tvos, '9.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'SiriRemoteView', '~> 0.0.1'
end
```
