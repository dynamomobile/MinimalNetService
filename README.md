# MinimalNetService

This is a small demo using NetService (Bonjour) to send short messages from one app to another only by updating the bonjour TXT record.

It all started with a question in a CocoaHeads Sthlm slack channel. How to send a value from one device to another with cheapest-to-implement tech.

This example uses the TXT record in Bonjour to send and update from a Mac app to an iOS app. See the ViewControllers for the code to do this.

Mac [ViewController.swift](/NetServiceMac/NetServiceMac/ViewController.swift)

iOS [ViewController.swift](/NetService/NetService/ViewController.swift)

Have fun.
