package com.farsitel.bazaar.common.model.reviews;

import h.f.b.f;

/* compiled from: ReviewItem.kt */
public enum VoteState {
    UP_VOTE,
    DOWN_VOTE,
    NONE;
    
    public static final Companion Companion = null;

    /* compiled from: ReviewItem.kt */
    public static final class Companion {
        public Companion() {
        }

        public final VoteState fromVoteStatus(int i2) {
            if (i2 == 0) {
                return VoteState.NONE;
            }
            if (i2 == 1) {
                return VoteState.UP_VOTE;
            }
            if (i2 != 2) {
                return VoteState.NONE;
            }
            return VoteState.DOWN_VOTE;
        }

        public /* synthetic */ Companion(f fVar) {
            this();
        }
    }

    static {
        Companion = new Companion(null);
    }
}
