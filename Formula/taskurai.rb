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
	version "2.5.23"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.23/taskurai_2.5.23_osx-x64.zip"
		sha256 "03eff46b32b35cce02ea544a91206ecb3e78f942717afce5a7378234b8390bad"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/2.5.23/taskurai_2.5.23_osx-arm64.zip"
		sha256 "d5017b5435986c91cea1023a99912b5edecf63bd01875bc7c9bb5fe187127b6b"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/2.5.23/taskurai_2.5.23_linux-arm64.zip"
		sha256 "0478f75219ec0df8110b68ac0a4c289e94dd9b8970ec2b2690f9fd6cb601adae"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.23/taskurai_2.5.23_linux-x64.zip"
		sha256 "98d059be342f31736907d776a61ef6d1171413b176f85d2ef89b5d27f891e392"
  
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
  