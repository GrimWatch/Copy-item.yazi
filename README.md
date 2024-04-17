# Copy-item.yazi
A [Yazi](https://github.com/sxyazi/yazi) plugin to copy files to the Clipboard in Windows 


https://github.com/GrimWatch/Copy-item.yazi/assets/69395353/cb18d789-8eaa-4d69-85af-aa36806afbeb


# Dependencies 
- Powershell 7.0 >
- [SetClipboard](https://github.com/Yevrag35/SetClipboard7)

> [!NOTE]
> Make sure ``pwsh`` is in your ``path``
>
> Due to ``SetClipboard`` being unlisted from PSGallery you need to manually install it 
# Installation
```
# Windows
git clone https://github.com/GrimWatch/Copy-item.yazi ~/AppData/Roaming/yazi/config/plugins/Copy-item.yazi/ 
```
# Usage
```
# keymap.toml
[manager]
prepend_keymap = [
    on = ["c","i", run = "plugin copy-item", desc = "Copy item to clipboard"]
]
```
