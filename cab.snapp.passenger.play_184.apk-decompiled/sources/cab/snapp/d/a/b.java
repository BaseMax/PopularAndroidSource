package cab.snapp.d.a;

import cab.snapp.d.a.b.c;
import cab.snapp.d.a.b.d;

public interface b {
    void connect();

    void destroy();

    void disconnect();

    boolean isConnected();

    void publish(String str, String str2, cab.snapp.d.a.b.b bVar);

    void reConnect();

    void setConnectionData(a aVar);

    void setupMQTTConnection();

    void subscribe(String str, c cVar);

    void unsubscribe(String str, d dVar);
}
