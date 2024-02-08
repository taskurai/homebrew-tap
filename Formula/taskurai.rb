=begin
 This is the default license template.
 
 File: taskurai-template.rb
 Author: bartpappyn
 Copyright (c) 2024 bartpappyn
 
 To edit this license information: Press Ctrl+Shift+P and press 'Create new License Template...'.
=end

# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "1.4.4"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/1.4.4/taskurai_1.4.4_osx-x64.zip"
		sha256 "6d1b02a4962cf67f2cffaaf1cadc20cfe66d3f0151949c7a60d66469f2504eab"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/1.4.4/taskurai_1.4.4_osx-arm64.zip"
		sha256 "71bdef1c57bc399694bf7e1018137a0937ed1f3f9320feba9ede1d8b4529624f"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/1.4.4/taskurai_1.4.4_linux-arm64.zip"
		sha256 "c11b44c7a22992de9125a99a628518bdfb3db20baab08fde632da0199dc285f2"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/1.4.4/taskurai_1.4.4_linux-x64.zip"
		sha256 "7023178cb478669114f42b8b5aebc771825a59225945d8847da625702f518001"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	conflicts_with "taskurai"
  
	test do
	  system "#{bin}/taskurai",  "--version"
	end
  end
  