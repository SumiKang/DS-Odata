
using {ds.api.cards as dsentity} from '../db/data-model';

service DSOdataService @(requires:'any'){

    annotate dsentity.DS01 with @odata.draft.enabled;

    entity DS_01 as projection on dsentity.DS01;

    annotate dsentity.DS01 with @(UI : {

    SelectionFields #DemoSF : [

      qcode,

      cost1,

      cost2

    ],

    LineItem             : {

      /*![@UI.Criticality] : qcode,*/

      $value             : [

        {Value : qcode, Label : 'Q코드', ![@HTML5.CssDefaults] : {width : 'auto'}},

        {Value : cost1, Label : '금액_1', ![@HTML5.CssDefaults] : {width : 'auto'}},

        {Value : curr1, Label : '통화_1', ![@HTML5.CssDefaults] : {width : 'auto'}},

        {Value : cost2, Label : '금액_2', ![@HTML5.CssDefaults] : {width : 'auto'}},

        {Value : curr2, Label : '통화_2', ![@HTML5.CssDefaults] : {width : 'auto'}},

        {Value : date1, Label : '일자', ![@HTML5.CssDefaults] : {width : 'auto'}}

      ]

    }

  });
  
   
    }



