cask "familiar" do
  version "2.4.1"
  sha256 arm: "5376ff7fff11641d6803e9f87ebb85e5cc13ecde99d49532c30ddf1eded03e33", intel: "bbe3b4c4403e722919896625edc986c338a849f3833a73236c4ce54bf4ffc668"

  on_arm do
    url "https://github.com/Monster12138/familiar/releases/download/v#{version}/Familiar_#{version}_macos_aarch64.dmg"
  end

  on_intel do
    url "https://github.com/Monster12138/familiar/releases/download/v#{version}/Familiar_#{version}_macos_x64.dmg"
  end

  name "Familiar"
  desc "Local-first desktop companion for coding agents"
  homepage "https://github.com/Monster12138/familiar"

  app "Familiar.app"
  binary "#{appdir}/Familiar.app/Contents/Resources/bin/familiar-cli", target: "familiar-cli"
end
