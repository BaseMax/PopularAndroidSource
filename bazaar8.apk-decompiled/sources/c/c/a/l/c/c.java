package c.c.a.l.c;

import com.farsitel.bazaar.player.view.PlaybackState;

public final /* synthetic */ class c {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f6107a = new int[PlaybackState.values().length];

    static {
        f6107a[PlaybackState.LOADING.ordinal()] = 1;
        f6107a[PlaybackState.PLAYING.ordinal()] = 2;
        f6107a[PlaybackState.PAUSED.ordinal()] = 3;
        f6107a[PlaybackState.ERROR.ordinal()] = 4;
        f6107a[PlaybackState.ENDED.ordinal()] = 5;
    }
}
