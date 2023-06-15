# typed: false
# frozen_string_literal: true

class Taskurai < Formula
	desc "Taskurai - provides an easy to setup scalable platform to run background tasks or jobs. Taskurai provides a convenient way to offload workload to asynchronic tasks, resulting in more scalable and responsive systems."
	homepage "https://taskurai.com"
	version "0.3.1"
	license "commercial"

	on_macos do
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.3.1/taskurai_0.3.1_osx-x64.zip"
		sha256 "3ff5b72c9b2460a796730a2f9ad90ac2a936110c8c1ad8dd57c73dd409da1d59"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.arm?
		url "https://get.taskurai.com/releases/0.3.1/taskurai_0.3.1_osx-arm64.zip"
		sha256 "093b8772955f3baff5881d92ab080674b96b51e90f77d9b057eccd29b2311c5f"
  
		def install
		  bin.install "taskurai"
		end
	  end
	end
  
	on_linux do
	  if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
		url "https://get.taskurai.com/releases/0.3.1/taskurai_0.3.1_linux-arm64.zip"
		sha256 "72d32d4dcc83e3223d168ad1c50dee01a8267a759bcd97cd6b27ddac5a7aba5e"
  
		def install
		  bin.install "taskurai"
		end
	  end
	  if Hardware::CPU.intel?
		url "https://get.taskurai.com/releases/0.3.1/taskurai_0.3.1_linux-x64.zip"
		sha256 "96198588180b51a2b1abd68ed7eb01610e70a45e2bfc28d5f5b8e6d0307d3a11"
  
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
  