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
	version "2.5.25"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.25/taskurai_2.5.25_osx-x64.zip"
		sha256 "b0bbf3e3e0f44197066d1ee048d1eaaef01904d34b69f5954f99fae9322d2c67"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/2.5.25/taskurai_2.5.25_osx-arm64.zip"
		sha256 "ea8084680fd65b1a222af40b63c4e33489cd3ab4e1f9ffb6f600f965110b3d45"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/2.5.25/taskurai_2.5.25_linux-arm64.zip"
		sha256 "e5a683ae2beb8522bb3f474a1ab210d8ee3e0f46f4d6a18a9353e2024cb120e9"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.25/taskurai_2.5.25_linux-x64.zip"
		sha256 "aafde3194dc065ba682c637941a5efa2509bf1216279f27147b259c55ce24185"
  
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
  