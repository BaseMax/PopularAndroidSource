package org.eclipse.paho.a.a;

public interface j {
    void connectionLost(Throwable th);

    void deliveryComplete(f fVar);

    void messageArrived(String str, q qVar) throws Exception;
}
