class MacosxSdksAT1013 < Formula
  desc "A collection of those pesky SDK folders: MacOSX10.1.5.sdk thru MacOSX10.15.sdk"
  homepage ""
  url "https://github.com/phracker/MacOSX-SDKs/releases/download/10.15/MacOSX10.13.sdk.tar.xz"
  sha256 "a3a077385205039a7c6f9e2c98ecdf2a720b2a819da715e03e0630c75782c1e4"
  version "10.13"

  # depends_on "cmake" => :build

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
    To install symlink it with
      sudo ln -s #{opt_prefix} /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.13.sdk
    EOS
  end

  test do
    system "true"
  end
end
