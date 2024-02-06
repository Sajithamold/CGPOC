namespace app.costcenter;

 
type CCText : String(10);
type CCode  : String(5);
 
entity CCenter {
 key CC_CODE : CCode ;
 CC_NAME  : CCText;
};
 