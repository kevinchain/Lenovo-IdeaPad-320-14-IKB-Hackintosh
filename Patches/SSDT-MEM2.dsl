// WARNING: this patch is only for Lenovo IdeaPad 320-14IKB
// May not work for your device.
// Fake ambient light sensor device for Lenovo IdeaPad 320-14IKB.

DefinitionBlock ("", "SSDT", 2, "Lenovo", "_MEM2", 0)
{
    Device (MEM2)
    {
        Name (_HID, EisaId ("PNP0C01"))
        Name (_UID, 0x02)
        Name (CRS, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite,
                0x20000000,         // Address Base
                0x00200000,         // Address Length
                )
            Memory32Fixed (ReadWrite,
                0x40000000,         // Address Base
                0x00200000,         // Address Length
                )
        })
        Method (_CRS, 0, NotSerialized)
        {
            Return (CRS)
        }
        
        Method (_STA, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }
    }
}

