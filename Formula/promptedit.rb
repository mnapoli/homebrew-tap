class Promptedit < Formula
  desc "Lightweight prompt editor for Claude Code"
  homepage "https://github.com/mnapoli/PromptEdit"
  url "https://github.com/mnapoli/PromptEdit/releases/download/v0.4.2/PromptEdit_0.4.2_aarch64.dmg"
  sha256 "5f8e90f2394e0ea27b9d6b6377443e48fb0f608e866856e37c36814469930cc5"
  version "0.4.2"

  depends_on macos: :ventura

  def install
    app = "PromptEdit.app"
    prefix.install app
    (bin/"promptedit").write_exec_script "#{prefix}/#{app}/Contents/MacOS/PromptEdit"
  end
end
