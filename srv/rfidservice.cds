using biofiredx.sc.rfid from '../db/TagReads';

service rfidservice {
    @readonly entity TagReads as projection on rfid.TagReads;
    entity InsertTagReadsWithHeader as projection on rfid.TagReadsHeader;
};