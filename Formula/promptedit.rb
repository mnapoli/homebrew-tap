class Promptedit < Formula
  desc "Lightweight prompt editor for Claude Code"
  homepage "https://github.com/mnapoli/PromptEdit"
  url "https://github.com/mnapoli/PromptEdit/releases/download/v0.3.3/PromptEdit_0.3.3_aarch64.dmg"
  sha256 "c4219b99102aec449eb1befa774ca6f9250796fce3b18841b3b2a2334183be24"
  version "0.3.3"

  depends_on macos: :ventura

  def install
    app = "PromptEdit.app"
    prefix.install app
    (bin/"promptedit").write_exec_script "#{prefix}/#{app}/Contents/MacOS/PromptEdit"
  end
end
