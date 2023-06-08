# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "0.2.22"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.22/taskurai_0.2.22_osx-x64.zip"
		sha256 "97fbd0bc29215d2e54cf72fe550bbf26f8693508944c306b7e5a7cd3dfaf2b9b"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/0.2.22/taskurai_0.2.22_osx-arm64.zip"
		sha256 "c3869c067dfaee66d107350be2f8c94ff68f54d6e0dadfe2de2be3ae6662e5c0"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/0.2.22/taskurai_0.2.22_linux-arm64.zip"
		sha256 "183a6365295e528693ebbc16eaf51542940e0d767d72e08207b6869e9b3955b7"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.22/taskurai_0.2.22_linux-x64.zip"
		sha256 "2e17758b192cc111d7ebcc5f3f86667263252714fb4a1ec2714b1616aecb14f6"
  
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
  