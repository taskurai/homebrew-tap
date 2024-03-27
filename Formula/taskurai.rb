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
	version "1.9.1"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/1.9.1/taskurai_1.9.1_osx-x64.zip"
		sha256 "311b9de7e0f339d963e6d455c9dc8f014f9f2c2c7666d54de30fa00df009b074"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/1.9.1/taskurai_1.9.1_osx-arm64.zip"
		sha256 "786974b0766692153ae7a4a120f658509b3384748f49df8dc8eb664e164372db"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/1.9.1/taskurai_1.9.1_linux-arm64.zip"
		sha256 "352ab4eaf13944d7d44658f021f1fe2e5008b8867ca0f10afba7a3d8e43f3c19"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/1.9.1/taskurai_1.9.1_linux-x64.zip"
		sha256 "513973923ef825255e2718013bf655e8689270b2491304106af069313717e540"
  
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
  