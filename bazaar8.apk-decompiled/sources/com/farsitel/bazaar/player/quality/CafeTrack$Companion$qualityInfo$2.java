package com.farsitel.bazaar.player.quality;

import android.util.SparseArray;
import h.f.a.a;
import kotlin.jvm.internal.Lambda;

/* compiled from: CafeTrack.kt */
final class CafeTrack$Companion$qualityInfo$2 extends Lambda implements a<SparseArray<String>> {

    /* renamed from: a  reason: collision with root package name */
    public static final CafeTrack$Companion$qualityInfo$2 f12320a = new CafeTrack$Companion$qualityInfo$2();

    public CafeTrack$Companion$qualityInfo$2() {
        super(0);
    }

    public final SparseArray<String> invoke() {
        SparseArray<String> sparseArray = new SparseArray<>();
        sparseArray.put(144, "144p");
        sparseArray.put(240, "240p");
        sparseArray.put(360, "360p");
        sparseArray.put(480, "480p");
        sparseArray.put(720, "720p");
        sparseArray.put(1080, "1080p");
        return sparseArray;
    }
}
