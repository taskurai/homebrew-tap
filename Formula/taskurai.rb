# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "1.4.3"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/1.4.3/taskurai_1.4.3_osx-x64.zip"
		sha256 "78a687aabffa7c01b127b7a87d518c6b979169e6f2a2cff134df0cd60ca8c3b3"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/1.4.3/taskurai_1.4.3_osx-arm64.zip"
		sha256 "205cef68e3a3d36fc4d300292b678270f4c27104fce0c0f8f2cbbcf8f4a3cf75"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/1.4.3/taskurai_1.4.3_linux-arm64.zip"
		sha256 "b5c75e6ca90e15efbf5deb09af9e73dc02ef5cd81cb0275b9bf8e22d2810b786"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/1.4.3/taskurai_1.4.3_linux-x64.zip"
		sha256 "c3255dd3462acd9796ec2184688aaa9b9bf186ef6eb8a79914e728653e5f5e53"
  
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
  