package c.c.a.l.c;

import com.farsitel.bazaar.player.view.PlaybackState;

public final /* synthetic */ class a {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f6105a = new int[PlaybackState.values().length];

    static {
        f6105a[PlaybackState.PLAYING.ordinal()] = 1;
        f6105a[PlaybackState.PAUSED.ordinal()] = 2;
        f6105a[PlaybackState.LOADING.ordinal()] = 3;
        f6105a[PlaybackState.ERROR.ordinal()] = 4;
        f6105a[PlaybackState.ENDED.ordinal()] = 5;
    }
}
