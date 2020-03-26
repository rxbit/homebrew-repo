class Clangd < Formula
  desc "clangd understands your C++ code and adds smart features to your editor: code completion, compile errors, go-to-definition and more."
  homepage "https://clangd.llvm.org/"
  url "https://github.com/clangd/clangd/releases/download/10rc3/clangd-mac-10rc3.zip"
  sha256 "7d8137f8c19d1464ce9a292942fa11672a7abacd5e7218159ae8eae22c2f784e"

  def install
    bin.install "bin/clangd"
    lib.install Dir["lib/clang"]
  end

end
