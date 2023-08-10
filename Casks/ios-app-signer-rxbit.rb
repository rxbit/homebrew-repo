cask "ios-app-signer-rxbit" do
  version "1.14.3"
  sha256 "6425b9eb6749c7e52246e29ce451f01f68e77ab343b886c4cbc84ec88203756e"

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
