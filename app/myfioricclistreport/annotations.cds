using CatalogService as service from '../../srv/costcenter_srv';

annotate service.CCenter with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'CC_NAME',
            Value : CC_NAME,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CC_CODE',
            Value : CC_CODE,
        },
    ]
);
annotate service.CCenter with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'CC_CODE',
                Value : CC_CODE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CC_NAME',
                Value : CC_NAME,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
annotate service.CCenter with @(
    UI.SelectionPresentationVariant #table : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
    }
);
