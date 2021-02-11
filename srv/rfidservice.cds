using biofiredx.sc.rfid.schema as schema from '../db/schema';

service rfidservice {

    entity InsertTagReadsWithHeader as projection on schema.TagReadsHeader;

};

service rfidserviceapp {
   
    @readonly
    entity GetTagReadHeaders as projection on schema.TagReadsHeader;

    @readonly
    entity GetTagReads       as projection on schema.TagReads;
};