package c.c.a.l;

import com.farsitel.bazaar.player.view.PlaybackState;

public final /* synthetic */ class o {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f6127a = new int[PlaybackState.values().length];

    static {
        f6127a[PlaybackState.PLAYING.ordinal()] = 1;
        f6127a[PlaybackState.PAUSED.ordinal()] = 2;
        f6127a[PlaybackState.LOADING.ordinal()] = 3;
        f6127a[PlaybackState.ERROR.ordinal()] = 4;
        f6127a[PlaybackState.ENDED.ordinal()] = 5;
    }
}
