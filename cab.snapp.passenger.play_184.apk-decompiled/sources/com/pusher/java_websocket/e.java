package com.pusher.java_websocket;

import com.pusher.java_websocket.b.b;
import com.pusher.java_websocket.c.a;
import com.pusher.java_websocket.c.f;
import com.pusher.java_websocket.c.h;
import com.pusher.java_websocket.c.i;
import com.pusher.java_websocket.drafts.Draft;
import com.pusher.java_websocket.framing.Framedata;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;

public interface e {
    String getFlashPolicy(WebSocket webSocket) throws b;

    InetSocketAddress getLocalSocketAddress(WebSocket webSocket);

    InetSocketAddress getRemoteSocketAddress(WebSocket webSocket);

    void onWebsocketClose(WebSocket webSocket, int i, String str, boolean z);

    void onWebsocketCloseInitiated(WebSocket webSocket, int i, String str);

    void onWebsocketClosing(WebSocket webSocket, int i, String str, boolean z);

    void onWebsocketError(WebSocket webSocket, Exception exc);

    void onWebsocketHandshakeReceivedAsClient(WebSocket webSocket, a aVar, h hVar) throws b;

    i onWebsocketHandshakeReceivedAsServer(WebSocket webSocket, Draft draft, a aVar) throws b;

    void onWebsocketHandshakeSentAsClient(WebSocket webSocket, a aVar) throws b;

    void onWebsocketMessage(WebSocket webSocket, String str);

    void onWebsocketMessage(WebSocket webSocket, ByteBuffer byteBuffer);

    void onWebsocketMessageFragment(WebSocket webSocket, Framedata framedata);

    void onWebsocketOpen(WebSocket webSocket, f fVar);

    void onWebsocketPing(WebSocket webSocket, Framedata framedata);

    void onWebsocketPong(WebSocket webSocket, Framedata framedata);

    void onWriteDemand(WebSocket webSocket);
}
