package com.pusher.java_websocket;

import com.pusher.java_websocket.c.a;
import com.pusher.java_websocket.c.e;
import com.pusher.java_websocket.c.h;
import com.pusher.java_websocket.c.i;
import com.pusher.java_websocket.drafts.Draft;
import com.pusher.java_websocket.framing.Framedata;
import com.pusher.java_websocket.framing.d;
import java.net.InetSocketAddress;

public abstract class b implements e {
    public void onWebsocketHandshakeReceivedAsClient(WebSocket webSocket, a aVar, h hVar) throws com.pusher.java_websocket.b.b {
    }

    public void onWebsocketHandshakeSentAsClient(WebSocket webSocket, a aVar) throws com.pusher.java_websocket.b.b {
    }

    public void onWebsocketMessageFragment(WebSocket webSocket, Framedata framedata) {
    }

    public void onWebsocketPong(WebSocket webSocket, Framedata framedata) {
    }

    public i onWebsocketHandshakeReceivedAsServer(WebSocket webSocket, Draft draft, a aVar) throws com.pusher.java_websocket.b.b {
        return new e();
    }

    public void onWebsocketPing(WebSocket webSocket, Framedata framedata) {
        d dVar = new d(framedata);
        dVar.setOptcode(Framedata.Opcode.PONG);
        webSocket.sendFrame(dVar);
    }

    public String getFlashPolicy(WebSocket webSocket) throws com.pusher.java_websocket.b.b {
        InetSocketAddress localSocketAddress = webSocket.getLocalSocketAddress();
        if (localSocketAddress != null) {
            StringBuffer stringBuffer = new StringBuffer(90);
            stringBuffer.append("<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\"");
            stringBuffer.append(localSocketAddress.getPort());
            stringBuffer.append("\" /></cross-domain-policy>\u0000");
            return stringBuffer.toString();
        }
        throw new com.pusher.java_websocket.b.d("socket not bound");
    }
}
