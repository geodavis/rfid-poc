using biofiredx.sc.rfid from '../db/TagReads';

service rfidservice {

    @readonly entity TagReadsSRV as projection on rfid.TagReads;
    entity InsertTagReads as projection on rfid.TagReads;
    
    function test(msg:String) returns String;
};