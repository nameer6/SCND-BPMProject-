/**
 * ReceiveOrderServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package main;

public class ReceiveOrderServiceLocator extends org.apache.axis.client.Service implements main.ReceiveOrderService {

    public ReceiveOrderServiceLocator() {
    }


    public ReceiveOrderServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public ReceiveOrderServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for ReceiveOrder
    private java.lang.String ReceiveOrder_address = "http://localhost:8080/EyeByeDirect/services/ReceiveOrder";

    public java.lang.String getReceiveOrderAddress() {
        return ReceiveOrder_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String ReceiveOrderWSDDServiceName = "ReceiveOrder";

    public java.lang.String getReceiveOrderWSDDServiceName() {
        return ReceiveOrderWSDDServiceName;
    }

    public void setReceiveOrderWSDDServiceName(java.lang.String name) {
        ReceiveOrderWSDDServiceName = name;
    }

    public main.ReceiveOrder getReceiveOrder() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(ReceiveOrder_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getReceiveOrder(endpoint);
    }

    public main.ReceiveOrder getReceiveOrder(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            main.ReceiveOrderSoapBindingStub _stub = new main.ReceiveOrderSoapBindingStub(portAddress, this);
            _stub.setPortName(getReceiveOrderWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setReceiveOrderEndpointAddress(java.lang.String address) {
        ReceiveOrder_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (main.ReceiveOrder.class.isAssignableFrom(serviceEndpointInterface)) {
                main.ReceiveOrderSoapBindingStub _stub = new main.ReceiveOrderSoapBindingStub(new java.net.URL(ReceiveOrder_address), this);
                _stub.setPortName(getReceiveOrderWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("ReceiveOrder".equals(inputPortName)) {
            return getReceiveOrder();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://main", "ReceiveOrderService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://main", "ReceiveOrder"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("ReceiveOrder".equals(portName)) {
            setReceiveOrderEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
