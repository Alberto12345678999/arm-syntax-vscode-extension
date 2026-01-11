LATEST_VERSION=$(curl -s https://api.github.com/repos/URV-teacher/arm-syntax-vscode-extension/releases/latest | grep "tag_name" | cut -d '"' -f 4)
LATEST_VERSION=${VERSION:1}
wget -O arm-syntax-vscode-extension.vsix \
  https://github.com/URV-teacher/arm-syntax-vscode-extension/releases/download/v${LATEST_VERSION}/arm-syntax-vscode-extension-${LATEST_VERSION}.vsix  # Download latest release
code --install-extension arm-syntax-vscode-extension.vsix  # Install extension
