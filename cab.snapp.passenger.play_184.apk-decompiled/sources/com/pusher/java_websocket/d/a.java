package com.pusher.java_websocket.d;

import com.pusher.java_websocket.d;
import com.pusher.java_websocket.d.b;
import com.pusher.java_websocket.drafts.Draft;
import com.pusher.java_websocket.e;
import java.net.Socket;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;
import java.util.List;

public final class a implements b.a {
    public final SocketChannel wrapChannel(SocketChannel socketChannel, SelectionKey selectionKey) {
        return socketChannel;
    }

    public final d createWebSocket(com.pusher.java_websocket.b bVar, Draft draft, Socket socket) {
        return new d((e) bVar, draft);
    }

    public final d createWebSocket(com.pusher.java_websocket.b bVar, List<Draft> list, Socket socket) {
        return new d((e) bVar, list);
    }
}
