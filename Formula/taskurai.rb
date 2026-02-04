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
	version "2.5.3"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.3/taskurai_2.5.3_osx-x64.zip"
		sha256 "a36590a58747039c3796c853e49524b01847f4317c81e46368397282cb9232f7"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/2.5.3/taskurai_2.5.3_osx-arm64.zip"
		sha256 "b76395fcb1378f8253892263a238c250906c6e3afcabc02174d7f15ed2680f5a"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/2.5.3/taskurai_2.5.3_linux-arm64.zip"
		sha256 "228146eed4f0b87196a795fc780d9b9c0bf9e961b40be0d03616cd186e394685"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.3/taskurai_2.5.3_linux-x64.zip"
		sha256 "e800add9cd7f051979f208551dc6b6188f7d5e8389ed2e4d0fd5b5d69e749ebc"
  
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
  