package org.eclipse.paho.a.a;

public interface d extends AutoCloseable {
    void close() throws p;

    h connect() throws p, u;

    h connect(Object obj, c cVar) throws p, u;

    h connect(n nVar) throws p, u;

    h connect(n nVar, Object obj, c cVar) throws p, u;

    h disconnect() throws p;

    h disconnect(long j) throws p;

    h disconnect(long j, Object obj, c cVar) throws p;

    h disconnect(Object obj, c cVar) throws p;

    void disconnectForcibly() throws p;

    void disconnectForcibly(long j) throws p;

    void disconnectForcibly(long j, long j2) throws p;

    String getClientId();

    f[] getPendingDeliveryTokens();

    String getServerURI();

    boolean isConnected();

    void messageArrivedComplete(int i, int i2) throws p;

    f publish(String str, q qVar) throws p, s;

    f publish(String str, q qVar, Object obj, c cVar) throws p, s;

    f publish(String str, byte[] bArr, int i, boolean z) throws p, s;

    f publish(String str, byte[] bArr, int i, boolean z, Object obj, c cVar) throws p, s;

    void reconnect() throws p;

    boolean removeMessage(f fVar) throws p;

    void setCallback(j jVar);

    void setManualAcks(boolean z);

    h subscribe(String str, int i) throws p;

    h subscribe(String str, int i, Object obj, c cVar) throws p;

    h subscribe(String str, int i, Object obj, c cVar, g gVar) throws p;

    h subscribe(String str, int i, g gVar) throws p;

    h subscribe(String[] strArr, int[] iArr) throws p;

    h subscribe(String[] strArr, int[] iArr, Object obj, c cVar) throws p;

    h subscribe(String[] strArr, int[] iArr, Object obj, c cVar, g[] gVarArr) throws p;

    h subscribe(String[] strArr, int[] iArr, g[] gVarArr) throws p;

    h unsubscribe(String str) throws p;

    h unsubscribe(String str, Object obj, c cVar) throws p;

    h unsubscribe(String[] strArr) throws p;

    h unsubscribe(String[] strArr, Object obj, c cVar) throws p;
}
