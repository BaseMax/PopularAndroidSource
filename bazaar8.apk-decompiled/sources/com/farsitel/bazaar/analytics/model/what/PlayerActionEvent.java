package com.farsitel.bazaar.analytics.model.what;

import com.crashlytics.android.core.CrashlyticsController;
import h.a.A;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: OtherEvent.kt */
public final class PlayerActionEvent extends WhatType {
    public final PlayerAction action;
    public final String adUrl;
    public final String entity_id;
    public final boolean isOffline;
    public final String name;
    public final Map<String, String> otherInfo;
    public final long playerMillisecond;
    public final String referrer;
    public final String url;
    public final long videoLength;

    /* compiled from: OtherEvent.kt */
    public enum PlayerAction {
        SUBTITLE_CHANGED("subtitle_changed"),
        QUALITY_CHANGED("quality_changed"),
        FULL_SCREEN("full_screen"),
        EXIT_FULL_SCREEN("exit_full_screen"),
        SEEK("seek"),
        LOADING("loading"),
        PLAYING("playing"),
        PAUSED("paused"),
        ERROR(CrashlyticsController.EVENT_TYPE_LOGGED),
        ENDED("ended");
        
        public final String actionLogValue;

        /* access modifiers changed from: public */
        PlayerAction(String str) {
            this.actionLogValue = str;
        }

        public final String f() {
            return this.actionLogValue;
        }
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public /* synthetic */ PlayerActionEvent(com.farsitel.bazaar.analytics.model.what.PlayerActionEvent.PlayerAction r16, java.lang.String r17, java.lang.String r18, boolean r19, long r20, long r22, java.lang.String r24, java.lang.String r25, java.util.Map r26, int r27, h.f.b.f r28) {
        /*
            r15 = this;
            r0 = r27
            r1 = r0 & 128(0x80, float:1.794E-43)
            r2 = 0
            if (r1 == 0) goto L_0x0009
            r13 = r2
            goto L_0x000b
        L_0x0009:
            r13 = r25
        L_0x000b:
            r0 = r0 & 256(0x100, float:3.59E-43)
            if (r0 == 0) goto L_0x0011
            r14 = r2
            goto L_0x0013
        L_0x0011:
            r14 = r26
        L_0x0013:
            r3 = r15
            r4 = r16
            r5 = r17
            r6 = r18
            r7 = r19
            r8 = r20
            r10 = r22
            r12 = r24
            r3.<init>(r4, r5, r6, r7, r8, r10, r12, r13, r14)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.analytics.model.what.PlayerActionEvent.<init>(com.farsitel.bazaar.analytics.model.what.PlayerActionEvent$PlayerAction, java.lang.String, java.lang.String, boolean, long, long, java.lang.String, java.lang.String, java.util.Map, int, h.f.b.f):void");
    }

    public String a() {
        return this.name;
    }

    public Map<String, Object> b() {
        Map<String, Object> c2 = A.c(f.a("action", this.action.f()), f.a("referrer", this.referrer), f.a("entity_id", this.entity_id), f.a("action", this.action), f.a("url", this.url), f.a("downloaded_video", Boolean.valueOf(this.isOffline)), f.a("player_millisec", Long.valueOf(this.playerMillisecond)), f.a("video_length", Long.valueOf(this.videoLength)));
        String str = this.adUrl;
        if (str != null) {
            c2.put("adUrl", str);
        }
        Map<String, String> map = this.otherInfo;
        if (map != null) {
            for (Map.Entry next : map.entrySet()) {
                c2.put(next.getKey(), next.getValue());
            }
        }
        return c2;
    }

    public PlayerActionEvent(PlayerAction playerAction, String str, String str2, boolean z, long j2, long j3, String str3, String str4, Map<String, String> map) {
        j.b(playerAction, "action");
        j.b(str, "entity_id");
        j.b(str2, "url");
        j.b(str3, "referrer");
        this.action = playerAction;
        this.entity_id = str;
        this.url = str2;
        this.isOffline = z;
        this.videoLength = j2;
        this.playerMillisecond = j3;
        this.referrer = str3;
        this.adUrl = str4;
        this.otherInfo = map;
        this.name = "player";
    }
}
