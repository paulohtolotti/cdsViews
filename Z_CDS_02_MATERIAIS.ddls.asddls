@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS de materiais com case'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_PTOLOTTI_02 as select from mara
{
    key matnr as IdMaterial,
    ersda as DataCriacao,
    created_at_time as HoraCriacao,
    mtart as TipoMaterial,
    
    case mtart
         when 'FERT' then 'Produto Acabado'
         when 'HALB' then 'Produto semiacabado'
         when 'ROH'  then 'Materia-prima'
         else 'Outros'
   end as CategoriaMaterial
   
 }