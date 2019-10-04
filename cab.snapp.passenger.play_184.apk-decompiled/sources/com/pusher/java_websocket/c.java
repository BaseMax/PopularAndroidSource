package com.pusher.java_websocket;

import com.pusher.java_websocket.drafts.Draft;
import java.net.Socket;
import java.util.List;

public interface c {
    WebSocket createWebSocket(b bVar, Draft draft, Socket socket);

    WebSocket createWebSocket(b bVar, List<Draft> list, Socket socket);
}
