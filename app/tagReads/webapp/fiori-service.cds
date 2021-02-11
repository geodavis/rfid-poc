using rfidserviceapp as serviceRFID from '../../../srv/rfidservice';

annotate serviceRFID.GetTagReadHeaders with @(UI : {
    /* SelectionFields : [ID], */
    LineItem             : [
        {
            Label : 'ID',
            Value : ID
        },
        {
            Label : 'Creation Time',
            Value : createdAt
        }
    ],
    HeaderInfo           : {
        TypeName       : 'TagHeader',
        TypeNamePlural : 'TagHeaders',
        Title          : {Value : ID},
        Description    : {
            Value : createdAt,
            Label : 'CreatedAt'
        }
    },
    Facets               : [
        {
        $Type  : 'UI.ReferenceFacet',
        Label  : 'Header Information',
        Target : '@UI.FieldGroup#ReadHeaderData'
    },
    {
        $Type  : 'UI.ReferenceFacet',
        Label  : 'Read Information',
        Target : 'tagReads/@UI.LineItem'
    }
    ],

    FieldGroup #ReadHeaderData : {Data : [
        {
            Label : 'ID',
            Value : ID
        },
        {
            Label : 'Created At',
            Value : createdAt
        },
        {
            Label : 'Created By',
            Value : createdBy
        }
    ]}
});

annotate serviceRFID.GetTagReads with @(UI : {
    /*     SelectionFields : [reader], */
    LineItem             : [
        {
            Label : 'Reader',
            Value : reader
        },
        {
            Label : 'Tag ID',
            Value : tagID
        },
        {
            Label : 'Time Read',
            Value : timeRead
        }
    ],
    HeaderInfo           : {
        TypeName       : 'TagRead',
        TypeNamePlural : 'TagReads',
        Title          : {Value : ID},
        Description    : {
            Value : tagID,
            Label : 'Tag ID'
        }
    }
});