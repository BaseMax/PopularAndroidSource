package com.farsitel.bazaar.player.view;

import c.c.a.l.c.c;
import com.farsitel.bazaar.analytics.model.what.PlayerActionEvent;
import kotlin.NoWhenBranchMatchedException;

/* compiled from: PlaybackState.kt */
public enum PlaybackState {
    LOADING,
    PLAYING,
    PAUSED,
    ERROR,
    ENDED;

    public final PlayerActionEvent.PlayerAction f() {
        int i2 = c.f6107a[ordinal()];
        if (i2 == 1) {
            return PlayerActionEvent.PlayerAction.LOADING;
        }
        if (i2 == 2) {
            return PlayerActionEvent.PlayerAction.PLAYING;
        }
        if (i2 == 3) {
            return PlayerActionEvent.PlayerAction.PAUSED;
        }
        if (i2 == 4) {
            return PlayerActionEvent.PlayerAction.ERROR;
        }
        if (i2 == 5) {
            return PlayerActionEvent.PlayerAction.ENDED;
        }
        throw new NoWhenBranchMatchedException();
    }
}
