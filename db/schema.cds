namespace biofiredx.sc.rfid.schema;

using { cuid, managed } from '@sap/cds/common';

entity TagReadsHeader : cuid, managed {
    tagReads : Composition of many TagReads on tagReads.tagReadsHeader = $self;
}

entity TagReads : cuid {
    tagReadsHeader   : Association to TagReadsHeader;
    reader : String(255);
    antenna : Integer;
    tagID : String(255);
    rssi : Integer;
    timeRead : DateTime;
}

/* entity Readers : cuid {
    hostName : String(255);
    serialNumber : String(255);
    mode : Association to ReaderModes;
}

entity ReaderModes : cuid {
    name : String;
} */