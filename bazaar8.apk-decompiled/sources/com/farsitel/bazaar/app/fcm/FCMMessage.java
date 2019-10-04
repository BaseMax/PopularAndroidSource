package com.farsitel.bazaar.app.fcm;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import c.c.a.b.c.a;
import h.f.b.j;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: FCMMessage.kt */
public final class FCMMessage {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f12120a;

    /* renamed from: b  reason: collision with root package name */
    public final String f12121b;

    /* renamed from: c  reason: collision with root package name */
    public final String f12122c;

    /* renamed from: d  reason: collision with root package name */
    public final String f12123d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f12124e;

    /* renamed from: f  reason: collision with root package name */
    public String f12125f;

    /* renamed from: g  reason: collision with root package name */
    public String f12126g;

    /* renamed from: h  reason: collision with root package name */
    public ActionType f12127h;

    /* renamed from: i  reason: collision with root package name */
    public String f12128i;

    /* renamed from: j  reason: collision with root package name */
    public String f12129j;

    /* renamed from: k  reason: collision with root package name */
    public final Bundle f12130k;

    /* compiled from: FCMMessage.kt */
    public enum ActionType {
        ACTIVITY
    }

    public FCMMessage(Map<String, String> map) {
        j.b(map, "data");
        this.f12120a = Boolean.parseBoolean(map.get("n") == null ? "false" : map.get("n"));
        ActionType actionType = null;
        this.f12121b = map.get("t") == null ? null : map.get("t");
        this.f12122c = map.get("x") == null ? null : map.get("x");
        this.f12123d = map.get("k") == null ? null : map.get("k");
        this.f12124e = Boolean.parseBoolean(map.get("hasSound") == null ? "false" : map.get("hasSound"));
        this.f12125f = map.get("bx") == null ? this.f12122c : map.get("bx");
        this.f12126g = map.get("bp") == null ? null : map.get("bp");
        this.f12130k = new Bundle();
        if (map.containsKey("ay")) {
            String str = map.get("ay");
            if (str != null && str.hashCode() == 65 && str.equals("A")) {
                actionType = ActionType.ACTIVITY;
            }
            this.f12127h = actionType;
            this.f12128i = map.get("aa");
            this.f12129j = map.get("ad");
            if (map.containsKey("ab")) {
                try {
                    JSONObject jSONObject = new JSONObject(map.get("ab"));
                    Iterator<String> keys = jSONObject.keys();
                    j.a((Object) keys, "jsonObject.keys()");
                    while (keys.hasNext()) {
                        String next = keys.next();
                        Object obj = jSONObject.get(next);
                        if (obj instanceof Integer) {
                            this.f12130k.putInt(next, ((Number) obj).intValue());
                        } else if (obj instanceof Boolean) {
                            this.f12130k.putBoolean(next, ((Boolean) obj).booleanValue());
                        } else if (obj instanceof Byte) {
                            this.f12130k.putByte(next, ((Number) obj).byteValue());
                        } else if (obj instanceof Character) {
                            this.f12130k.putChar(next, ((Character) obj).charValue());
                        } else if (obj instanceof String) {
                            this.f12130k.putString(next, (String) obj);
                        } else if (obj instanceof Long) {
                            this.f12130k.putLong(next, ((Number) obj).longValue());
                        }
                    }
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public final String a() {
        return this.f12128i;
    }

    public final String b() {
        return this.f12129j;
    }

    public final Intent c() {
        Intent intent = new Intent();
        String str = this.f12129j;
        if (str != null) {
            intent.setData(Uri.parse(str));
        }
        String str2 = this.f12128i;
        if (str2 != null) {
            intent.setAction(str2);
        }
        intent.putExtras(this.f12130k);
        return intent;
    }

    public final ActionType d() {
        return this.f12127h;
    }

    public final String e() {
        return this.f12126g;
    }

    public final String f() {
        return this.f12125f;
    }

    public final boolean g() {
        return this.f12124e;
    }

    public final String h() {
        return this.f12122c;
    }

    public final String i() {
        return this.f12123d;
    }

    public final String j() {
        return this.f12121b;
    }

    public final boolean k() {
        return (!this.f12120a || this.f12123d == null || this.f12121b == null || this.f12122c == null) ? false : true;
    }

    public final PendingIntent a(Context context, Intent intent) {
        j.b(context, "application");
        j.b(intent, "intent");
        ActionType actionType = this.f12127h;
        if (actionType != null && a.f4556a[actionType.ordinal()] == 1) {
            return PendingIntent.getActivity(context, 0, intent, 0);
        }
        return null;
    }
}
