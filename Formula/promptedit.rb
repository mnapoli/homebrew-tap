class Promptedit < Formula
  desc "Lightweight prompt editor for Claude Code"
  homepage "https://github.com/mnapoli/PromptEdit"
  url "https://github.com/mnapoli/PromptEdit/releases/download/v0.4.3/PromptEdit_0.4.3_aarch64.dmg"
  sha256 "0fb5b8ef1b6a8f889d39372526f28846e412c0ead0931d68dae1aae4bb8378ff"
  version "0.4.3"

  depends_on macos: :ventura

  def install
    app = "PromptEdit.app"
    prefix.install app
    (bin/"promptedit").write_exec_script "#{prefix}/#{app}/Contents/MacOS/PromptEdit"
  end
end
