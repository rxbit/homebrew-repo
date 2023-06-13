cask "ios-app-signer" do
  version "1.14.2"
  sha256 "45a4f171cac0a7bdefc5f669083cc785c8b887cc0b484e94f68270a8a1e8c94e"

  url "https://github.com/rxbit/ios-app-signer/releases/download/#{version}/#{version}.zip"
  name "iOS App Signer"
  desc "App for (re)signing iOS apps and bundling them"
  homepage "https://dantheman827.github.io/ios-app-signer/"

  depends_on formula: "p7zip"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "iOS App Signer.app"

  zap trash: [
    "~/Library/Caches/com.DanTheMan827.AppSigner",
    "~/Library/Preferences/com.DanTheMan827.AppSigner.plist",
  ]
end
