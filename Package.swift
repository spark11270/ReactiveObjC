// swift-tools-version: 6.1

import PackageDescription

let package = Package(
	name: "ReactiveObjC",
	platforms: [
		.iOS(.v14)
	],
	products: [
		.library(
			name: "ReactiveObjC",
			targets: ["ReactiveObjC"]
		)
	],
	targets: [
		.target(
			name: "ReactiveObjC",
			path: "Sources/ReactiveObjC",
			exclude: ["Deprecations+Removals.swift"],
			publicHeadersPath: "include"
		)
	]
)
