# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "0.2.16"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.16/taskurai_0.2.16_osx-x64.zip"
		sha256 "4d1aaacce077d13228fd4fe7fb72ea8df57a1832c0465377b45c0caae99de66f"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/0.2.16/taskurai_0.2.16_osx-arm64.zip"
		sha256 "b9b4e71a5334c6cf0bd3a5240204df0b4bc9c2d57d86822d304a5d0b1f7c9530"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/0.2.16/taskurai_0.2.16_linux-arm64.zip"
		sha256 "b9850b79f9ab991e4fb7047d5eeb3c31d79904ba11cdbf4cb0e3f3a9e67823ee"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.16/taskurai_0.2.16_linux-x64.zip"
		sha256 "aa3f83c9dec810542e81caa92175d19ba31c1f930a105872b75c94b8b288065b"
  
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
  