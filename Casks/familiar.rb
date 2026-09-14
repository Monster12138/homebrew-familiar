cask "familiar" do
  version "2.4.0"
  sha256 arm: "beff1d49b26935e3f025dc94f278a5b88e3815e1f13c77f6d9574a7c0143bc91", intel: "83f4f18ad4a3206788555271c660fa602ca874f3d6bde26025d9954ca7b9df2f"

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
