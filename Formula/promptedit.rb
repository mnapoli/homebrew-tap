class Promptedit < Formula
  desc "Lightweight prompt editor for Claude Code"
  homepage "https://github.com/mnapoli/PromptEdit"
  url "https://github.com/mnapoli/PromptEdit/releases/download/v0.4.1/PromptEdit_0.4.1_aarch64.dmg"
  sha256 "0eff756ca2e7a3ace18ec5e09bd3363dd81db589f1c4580e1a649f176109b2f4"
  version "0.4.1"

  depends_on macos: :ventura

  def install
    app = "PromptEdit.app"
    prefix.install app
    (bin/"promptedit").write_exec_script "#{prefix}/#{app}/Contents/MacOS/PromptEdit"
  end
end
