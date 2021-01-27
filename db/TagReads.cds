namespace biofiredx.sc.rfid;
using { cuid, managed } from '@sap/cds/common';

entity TagReadsHeader : cuid, managed {
    tagReads : Composition of many TagReads on tagReads.tagReadsHeader = $self;
}

entity TagReads : cuid {
    tagReadsHeader   : Association to TagReadsHeader;
    reader: String(255);
    antenna : Integer;
    tagID : String(255);
    rssi : Integer;
    timeRead : DateTime;
}