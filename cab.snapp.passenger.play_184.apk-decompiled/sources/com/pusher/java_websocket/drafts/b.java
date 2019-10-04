package com.pusher.java_websocket.drafts;

import com.pusher.java_websocket.b.d;
import com.pusher.java_websocket.c.a;
import com.pusher.java_websocket.drafts.Draft;

public final class b extends a {
    public final Draft.HandshakeState acceptHandshakeAsServer(a aVar) throws d {
        if (readVersion(aVar) == 13) {
            return Draft.HandshakeState.MATCHED;
        }
        return Draft.HandshakeState.NOT_MATCHED;
    }

    public final com.pusher.java_websocket.c.b postProcessHandshakeRequestAsClient(com.pusher.java_websocket.c.b bVar) {
        super.postProcessHandshakeRequestAsClient(bVar);
        bVar.put("Sec-WebSocket-Version", "13");
        return bVar;
    }

    public final Draft copyInstance() {
        return new b();
    }
}
