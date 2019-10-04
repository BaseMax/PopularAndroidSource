package a.a.b.b.a;

import android.media.session.PlaybackState;
import android.os.Bundle;
import java.util.Iterator;
import java.util.List;

/* compiled from: PlaybackStateCompatApi22 */
public class s {
    public static Bundle a(Object obj) {
        return ((PlaybackState) obj).getExtras();
    }

    public static Object a(int i2, long j2, long j3, float f2, long j4, CharSequence charSequence, long j5, List<Object> list, long j6, Bundle bundle) {
        PlaybackState.Builder builder = new PlaybackState.Builder();
        builder.setState(i2, j2, f2, j5);
        long j7 = j3;
        builder.setBufferedPosition(j3);
        long j8 = j4;
        builder.setActions(j4);
        builder.setErrorMessage(charSequence);
        Iterator<Object> it = list.iterator();
        while (it.hasNext()) {
            builder.addCustomAction((PlaybackState.CustomAction) it.next());
        }
        builder.setActiveQueueItemId(j6);
        builder.setExtras(bundle);
        return builder.build();
    }
}
