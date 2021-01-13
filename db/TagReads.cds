namespace biofiredx.sc.rfid;

entity TagReads {
    reader: String(255);
    antenna : Integer;
    tagID : String(255);
    rssi : Integer;
    timeRead : DateTime;
}