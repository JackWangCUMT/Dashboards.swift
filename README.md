# Dashboards.swift

[![Twitter](https://img.shields.io/badge/twitter-@hoorace-blue.svg?style=flat)](https://twitter.com/hoorace)
[![eMail](https://img.shields.io/badge/email-longtask@gmail.com-blue.svg?style=flat)](mailto:longtask@gmail.com)

Dashboards.swift is a simple and beautiful ios dashboard which written in Swift.

## Snapshots
<p align="center"  style="background-color:#cccccc">
  <img width="375" height="668" src="https://github.com/hoorace/Dashboards.swift/blob/master/snapshots/dashboard.gif"/>
</p>


## Requirements

- iOS 8.0+ / Mac OS X 10.9+
- Xcode 6.1

## Communication

- If you **need help**, mail to: longtask@gmail.com

## Installation

copy "Source" floder files to you porject.


## Usage

### UILable

```swift
var dashboard: Dashboard?
override func viewDidLoad() {
        ......
        dashboard = Dashboard(frame: CGRectMake(0, 68, 300, 300), title: "Left", left: 95,
            total: 100, suffix: "GB")
        self.view.addSubview(dashboard!)
        ......
}

OR
......
dashboard = Dashboard(frame: CGRectMake(0, 68, 300, 300))
dashboard!.change(95, total: 100, suffix: "GB")
dashboard!.title = "Left"
self.view.addSubview(dashboard!)
......

<b>and you can change it like this</b>

self.dashboard!.change(50, total: 100, suffix: "GB")

```


## License

Alamofire is released under the MIT license. See LICENSE for details.
