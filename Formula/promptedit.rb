class Promptedit < Formula
  desc "Lightweight prompt editor for Claude Code"
  homepage "https://github.com/mnapoli/PromptEdit"
  url "https://github.com/mnapoli/PromptEdit/releases/download/v0.3.2/PromptEdit_0.3.2_aarch64.dmg"
  sha256 "42b82e6afabf2086ce7ff542510916675330f7ea7abcba91607815f07b92eaff"
  version "0.3.2"

  depends_on macos: :ventura

  def install
    app = "PromptEdit.app"
    prefix.install app
    # Create a symlink so `promptedit` is in PATH
    (bin/"promptedit").write_exec_script "#{prefix}/#{app}/Contents/MacOS/PromptEdit"
  end
end
