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
	version "2.5.18"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.18/taskurai_2.5.18_osx-x64.zip"
		sha256 "a73955940ecfaa9806175206e7776b8c2851bfc7d0442c9d70a3fb8436a3ade8"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/2.5.18/taskurai_2.5.18_osx-arm64.zip"
		sha256 "9b40ecf5abe4e3faf57aa254c464c01fabecbbe18dafef67097c554aa2b3fefd"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/2.5.18/taskurai_2.5.18_linux-arm64.zip"
		sha256 "8ba4c04d25e8cc7c248d9afd301a0d92019ed9a6fb1126a1dbd9274f854e58a9"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/2.5.18/taskurai_2.5.18_linux-x64.zip"
		sha256 "e7724912ffe3d6b87b1a957a7dc1e72e7f76ffd8d33155a2855b3122d619d344"
  
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
  