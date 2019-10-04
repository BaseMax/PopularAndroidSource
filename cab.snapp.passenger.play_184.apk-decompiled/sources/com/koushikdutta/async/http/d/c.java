package com.koushikdutta.async.http.d;

import androidx.appcompat.widget.ActivityChooserView;
import com.koushikdutta.async.l;
import com.koushikdutta.async.q;
import com.koushikdutta.async.w;
import java.nio.ByteBuffer;

public final class c extends w {
    public c(q qVar) {
        super(qVar);
    }

    public final l filter(l lVar) {
        lVar.addFirst(ByteBuffer.wrap((Integer.toString(lVar.remaining(), 16) + "\r\n").getBytes()));
        lVar.add(ByteBuffer.wrap("\r\n".getBytes()));
        return lVar;
    }

    public final void end() {
        setMaxBuffer(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        write(new l());
        setMaxBuffer(0);
    }
}
