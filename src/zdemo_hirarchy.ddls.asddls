@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Hierarchy: Read Only: Employee Hierarchy'
define hierarchy zdemo_hirarchy
  as parent child hierarchy (
    source zdemo_tree
   child to parent association _Manager
    start where
      Manager is initial
    siblings order by
      LastName ascending
  )
{
  key Employee,
      Manager
}

