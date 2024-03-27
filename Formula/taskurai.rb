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
	version "1.9.0"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/1.9.0/taskurai_1.9.0_osx-x64.zip"
		sha256 "a248517147c432d8f7454c7f5aacc03acda85050de38166e9e653738ab572d42"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/1.9.0/taskurai_1.9.0_osx-arm64.zip"
		sha256 "e60bbac9ce8508a66b835617cbb94110321eeb04e82b7d978a68201d5fb93c25"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/1.9.0/taskurai_1.9.0_linux-arm64.zip"
		sha256 "6257f1e7ba9b74d53d915ac9c3ffe009cf365e60d946781dfec890774eeef510"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/1.9.0/taskurai_1.9.0_linux-x64.zip"
		sha256 "7924672eb8493057226dc2e1ead29fc000dd86b61c1d39a8f94c3f8370ef1fed"
  
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
  