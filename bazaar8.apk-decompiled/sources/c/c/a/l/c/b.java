package c.c.a.l.c;

import com.farsitel.bazaar.player.view.PlaybackState;

public final /* synthetic */ class b {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f6106a = new int[PlaybackState.values().length];

    static {
        f6106a[PlaybackState.PLAYING.ordinal()] = 1;
        f6106a[PlaybackState.PAUSED.ordinal()] = 2;
        f6106a[PlaybackState.LOADING.ordinal()] = 3;
        f6106a[PlaybackState.ERROR.ordinal()] = 4;
        f6106a[PlaybackState.ENDED.ordinal()] = 5;
    }
}
