using biofiredx.sc.rfid.schema as schema from '../db/schema';

service rfidservice {
    /*     @readonly
        entity TagReadsHeader           as projection on schema.TagReadsHeader;

        @readonly
        entity TagReads                 as projection on schema.TagReads;

        entity InsertTagReadsWithHeader as projection on schema.TagReadsHeader; */

    @readonly
    entity GetTagReadHeaders as projection on schema.TagReadsHeader;

    @readonly
    entity GetTagReads       as projection on schema.TagReads;
};