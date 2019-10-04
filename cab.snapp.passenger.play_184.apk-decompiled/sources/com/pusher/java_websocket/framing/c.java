package com.pusher.java_websocket.framing;

import com.pusher.java_websocket.b.b;
import com.pusher.java_websocket.framing.Framedata;
import java.nio.ByteBuffer;

public interface c extends Framedata {
    void setFin(boolean z);

    void setOptcode(Framedata.Opcode opcode);

    void setPayload(ByteBuffer byteBuffer) throws b;

    void setTransferemasked(boolean z);
}
