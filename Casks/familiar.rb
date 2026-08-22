cask "familiar" do
  version "2.0.1"
  sha256 arm: "e3fdd575aca1d9059072d812e81c035b3d6d6f486df1487876349230c09364f4", intel: "3e69bf4edf77751f1ab1a75db782271f594a0b997809812da50979cf49fb2bbf"

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
