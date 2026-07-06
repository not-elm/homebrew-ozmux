cask "orzma" do
  version "0.1.0"
  sha256 "94f2bb27bb794712bb02412b8faafb1ad6a51caed9259a21e4629d4e75ecfd89"

  url "https://github.com/not-elm/orzma/releases/download/v#{version}/orzma-#{version}-arm64.zip"
  name "orzma"
  desc "Terminal multiplexer as a native GUI app"
  homepage "https://github.com/not-elm/orzma"

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"
  depends_on formula: "tmux"

  app "orzma.app"
  binary "#{appdir}/orzma.app/Contents/Resources/orzbrowser"
  binary "#{appdir}/orzma.app/Contents/Resources/orzmd"

  caveats do
    "If macOS blocks the app (un-notarized build), clear quarantine:\n" \
    "  xattr -dr com.apple.quarantine \"#{appdir}/orzma.app\""
  end
end
