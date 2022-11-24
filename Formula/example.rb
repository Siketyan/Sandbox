class Example < Formula
  desc "Example formula"
  homepage "https://github.com/siketyan/release-to-registry-action"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://api.github.com/repos/siketyan/ghr/releases/assets/85795570"
      sha256 "0aa2c77587ea4866ddb4f22b701ef03c10fe75446dd2df02e30a209bd5872646"
    else
      url ""
      sha256 ""
    end

    def install
      bin.install "example"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url ""
      sha256 ""

      def install
        bin.install "example"
      end
    end
  end

  test do
    system "#{bin}/example", "-V"
  end
end
