=begin
 File: taskurai-template.rb
 Author: Buildby BV
 Copyright (c) Buildby BV. All rights reserved.
=end

# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "2.5.4"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.4/taskurai_2.5.4_osx-x64.zip"
		sha256 "3f6e4901550b143c972255ba38cb962b9e270ea040a614971cbbd5477c95e78e"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/2.5.4/taskurai_2.5.4_osx-arm64.zip"
		sha256 "8db612eee5958a8ba9d65654c0e850e66be8bd4abe740a1a85cfedfab86a4edf"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/2.5.4/taskurai_2.5.4_linux-arm64.zip"
		sha256 "78b8e8ff5fe56c78b3655095e2a234c38a290c0f1792ceb7096ee958438d0ffd"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.4/taskurai_2.5.4_linux-x64.zip"
		sha256 "83d62b85bae54f4eb95659f651ea6952b2ad04cbd4870cbc1080f11290f68e78"
  
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
  