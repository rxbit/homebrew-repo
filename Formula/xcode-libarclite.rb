class XcodeLibarclite < Formula
  desc ""
  homepage ""
  license ""
  url "https://github.com/kamyarelyasi/Libarclite-Files.git", branch: "main"
  version "1.0.0"

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
    To install symlink it with
      sudo ln -s #{opt_prefix} /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/arc
    EOS
  end

  test do
    system "true"
  end

end
