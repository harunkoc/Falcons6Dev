@isTest
public with sharing class CalculatorCalloutMockAdd implements WebServiceMock{
    public void doInvoke(Object stub, Object request, 
    Map<string, object> response, string endpoint, string soapAction, string requestName,
    string responseNS, string responseName, string responseType){
        calculatorServices.doAddResponse response_x= new  calculatorServices.doAddResponse();
        response_x.return_x = 3.0;
        response.put('Response_x', response_x);
        
    }
    
}