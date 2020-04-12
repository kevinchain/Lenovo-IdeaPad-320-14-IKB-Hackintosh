// WARNING: this patch is only for Lenovo IdeaPad 320-14IKB
// May not work for your device.
// Lenovo IdeaPad 320 14-IKB keyboard remap PrtSc to F13
// Could then be mapped to one of the image capture functions via SysPrefs->Keyboard->Shortcuts. 

DefinitionBlock ("", "SSDT", 2, "Lenovo", "_F13", 0)
{
    Name(_SB.PCI0.LPCB.PS2K.RMCF, Package()
    {
        "Keyboard", Package()
        {
            "Custom PS2 Map", Package()
            {
                Package(){},
                "e037=64", // PrtSc=F13
            },
        },
    })
}