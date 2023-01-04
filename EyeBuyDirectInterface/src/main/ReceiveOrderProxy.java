package main;

public class ReceiveOrderProxy implements main.ReceiveOrder {
  private String _endpoint = null;
  private main.ReceiveOrder receiveOrder = null;
  
  public ReceiveOrderProxy() {
    _initReceiveOrderProxy();
  }
  
  public ReceiveOrderProxy(String endpoint) {
    _endpoint = endpoint;
    _initReceiveOrderProxy();
  }
  
  private void _initReceiveOrderProxy() {
    try {
      receiveOrder = (new main.ReceiveOrderServiceLocator()).getReceiveOrder();
      if (receiveOrder != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)receiveOrder)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)receiveOrder)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (receiveOrder != null)
      ((javax.xml.rpc.Stub)receiveOrder)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public main.ReceiveOrder getReceiveOrder() {
    if (receiveOrder == null)
      _initReceiveOrderProxy();
    return receiveOrder;
  }
  
  public java.lang.String addOrderInfo(int customerID, int orderqty, int unitPrice, int productid) throws java.rmi.RemoteException{
    if (receiveOrder == null)
      _initReceiveOrderProxy();
    return receiveOrder.addOrderInfo(customerID, orderqty, unitPrice, productid);
  }
  
  
}