using app.costcenter from '../db/costcenter';
service CatalogService {

 entity CCenter
    as projection on costcenter.CCenter;

}