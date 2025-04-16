@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'demo tree'

@OData.hierarchy.recursiveHierarchy:[{ entity.name: 'zdemo_hirarchy' }]
@Metadata.allowExtensions: true

define root view entity zdemo_tree as select from ztreedemo

association of many to one zdemo_tree as _Manager on $projection.Manager = _Manager.Employee
{
  key employee        as Employee,
      first_name      as FirstName,
      last_name       as LastName,
      
      @Semantics.amount.currencyCode: 'SalaryCurrency'
      salary          as Salary,
      salary_currency as SalaryCurrency,
      
      @EndUserText.label: 'Manager'
      manager         as Manager,

      _Manager
}   
