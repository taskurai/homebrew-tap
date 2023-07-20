# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "1.3.4"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/1.3.4/taskurai_1.3.4_osx-x64.zip"
		sha256 "b419c1d65dab7ee97204d6ec24a9e962b7109913d6b8e33fbcfac15402bb80ff"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/1.3.4/taskurai_1.3.4_osx-arm64.zip"
		sha256 "2c8291533e23c677047e8c34a2085bca02410b183153e6ed9d0e1fcdd6c0c1f5"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/1.3.4/taskurai_1.3.4_linux-arm64.zip"
		sha256 "2ac83867fd77c1f1a34a8d87277a7c37c73a205dcc1db4adc3018cb019b54abc"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/1.3.4/taskurai_1.3.4_linux-x64.zip"
		sha256 "7762a8a87f70a6c32dbceac62d1fbc89d5b21ef89f583a0b62db3c50eb9d3ab8"
  
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
  