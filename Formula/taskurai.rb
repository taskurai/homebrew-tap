# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "0.2.20"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.20/taskurai_0.2.20_osx-x64.zip"
		sha256 "ef8c0d63efcee517d49f50f2c8f79dfe9bc4fccf3de567e388a75f5d40f8a2b0"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/0.2.20/taskurai_0.2.20_osx-arm64.zip"
		sha256 "468b9544190c7e1b0720867bd13ace9c70fd0c21fa46e831cddab072ee3003f9"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/0.2.20/taskurai_0.2.20_linux-arm64.zip"
		sha256 "509dea18cd70c74d45aa105df69ac0239e2467b7f18f9951fbc58bd03d6d42a3"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.2.20/taskurai_0.2.20_linux-x64.zip"
		sha256 "48a1b0fc7026d005f68b72663cdd2716ce90a03eca05cf8dd1eec378f9743f33"
  
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
  