public class NewCaseListController {
    public list<Case > getNewCases (){
        list<case> filterlist =[Select Id,caseNumber from case where status ='New'];
        return filterlist;
    }}