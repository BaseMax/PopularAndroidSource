package com.farsitel.bazaar.app.navigation.intenthandler;

import android.content.Intent;
import android.net.Uri;
import b.b.a.C0202m;
import b.w.C0313j;
import b.w.p;
import c.b.a.b.e;
import c.c.a.b.e.b;
import c.c.a.d;
import c.c.a.i.c;
import com.farsitel.bazaar.ui.home.MainActivity;
import com.farsitel.bazaar.ui.reviews.thirdparty.ThirdPartyReviewActivity;
import h.a.u;
import h.f.b.f;
import h.f.b.j;
import h.h;
import h.k.n;
import java.util.List;
import java.util.Locale;

/* compiled from: IntentHandlerImpl.kt */
public final class IntentHandlerImpl implements c.c.a.b.e.a.a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f12132a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final b f12133b;

    /* renamed from: c  reason: collision with root package name */
    public final Locale f12134c;

    /* compiled from: IntentHandlerImpl.kt */
    public enum SeriesType {
        SERIAL("s"),
        EPISODE(e.f3754a);
        
        public final String nameValue;

        /* access modifiers changed from: public */
        SeriesType(String str) {
            this.nameValue = str;
        }

        public final String f() {
            return this.nameValue;
        }
    }

    /* compiled from: IntentHandlerImpl.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public IntentHandlerImpl(b bVar, Locale locale) {
        j.b(bVar, "navManager");
        j.b(locale, "locale");
        this.f12133b = bVar;
        this.f12134c = locale;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:123:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:125:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:137:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:143:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:145:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:149:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x010e, code lost:
        b(r1, r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x011b, code lost:
        a(r5, r6, r1, r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x016e, code lost:
        i(r1, r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x0192, code lost:
        d(r1, r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:90:0x019e, code lost:
        g(r1, r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:96:0x01b6, code lost:
        a(r5, r6, r0);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(android.content.Intent r5, b.b.a.C0202m r6) {
        /*
            r4 = this;
            java.lang.String r0 = "intent"
            h.f.b.j.b(r5, r0)
            java.lang.String r0 = "activity"
            h.f.b.j.b(r6, r0)
            java.lang.String r0 = "referrerList"
            java.lang.String r0 = r5.getStringExtra(r0)
            r1 = 1
            if (r0 == 0) goto L_0x001c
            int r2 = r0.length()
            if (r2 != 0) goto L_0x001a
            goto L_0x001c
        L_0x001a:
            r2 = 0
            goto L_0x001d
        L_0x001c:
            r2 = 1
        L_0x001d:
            if (r2 == 0) goto L_0x002a
            c.c.a.c.d.a$b r0 = new c.c.a.c.d.a$b
            r0.<init>()
            r2 = 0
            java.lang.String r0 = c.c.a.c.d.d.a(r0, r2, r1, r2)
            goto L_0x0033
        L_0x002a:
            c.c.a.c.d.a$b r1 = new c.c.a.c.d.a$b
            r1.<init>()
            java.lang.String r0 = r1.a(r0)
        L_0x0033:
            java.lang.String r1 = "intent_source"
            boolean r2 = r5.hasExtra(r1)
            if (r2 == 0) goto L_0x0053
            java.lang.String r2 = r5.getStringExtra(r1)
            if (r2 == 0) goto L_0x0053
            c.c.a.c.d.b r2 = new c.c.a.c.d.b
            java.lang.String r1 = r5.getStringExtra(r1)
            java.lang.String r3 = "intent.getStringExtra(EXTRA_INTENT_SOURCE)"
            h.f.b.j.a((java.lang.Object) r1, (java.lang.String) r3)
            r2.<init>(r1)
            java.lang.String r0 = r2.a(r0)
        L_0x0053:
            android.net.Uri r1 = r5.getData()
            if (r1 == 0) goto L_0x01c5
            java.lang.String r2 = r1.getHost()
            if (r2 != 0) goto L_0x0061
            goto L_0x01c5
        L_0x0061:
            int r3 = r2.hashCode()
            switch(r3) {
                case -1999882166: goto L_0x01ba;
                case -1895874804: goto L_0x01ae;
                case -1854767153: goto L_0x01a2;
                case -1741312354: goto L_0x0196;
                case -1544438277: goto L_0x018a;
                case -1259907148: goto L_0x017e;
                case -906336856: goto L_0x0172;
                case -905839116: goto L_0x0166;
                case -816678056: goto L_0x015a;
                case -793736381: goto L_0x014d;
                case -710540674: goto L_0x0140;
                case -631092445: goto L_0x0136;
                case -244962306: goto L_0x012d;
                case -191501435: goto L_0x0120;
                case 96801: goto L_0x0113;
                case 98262: goto L_0x0106;
                case 3000946: goto L_0x00fc;
                case 3208415: goto L_0x00ef;
                case 3433103: goto L_0x00e5;
                case 28462918: goto L_0x00dc;
                case 63583611: goto L_0x00d3;
                case 105008833: goto L_0x00c6;
                case 106426308: goto L_0x00bc;
                case 110250375: goto L_0x00af;
                case 230662864: goto L_0x00a5;
                case 358048503: goto L_0x009b;
                case 622233327: goto L_0x008e;
                case 1312704747: goto L_0x0081;
                case 1434631203: goto L_0x0074;
                case 1557721666: goto L_0x006a;
                default: goto L_0x0068;
            }
        L_0x0068:
            goto L_0x01c5
        L_0x006a:
            java.lang.String r3 = "details"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L_0x01c5
            goto L_0x011b
        L_0x0074:
            java.lang.String r5 = "settings"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L_0x01c5
            r4.g()
            goto L_0x01c5
        L_0x0081:
            java.lang.String r5 = "downloads"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L_0x01c5
            r4.b()
            goto L_0x01c5
        L_0x008e:
            java.lang.String r5 = "download_videos"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L_0x01c5
            r4.a()
            goto L_0x01c5
        L_0x009b:
            java.lang.String r5 = "serial_details"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L_0x01c5
            goto L_0x016e
        L_0x00a5:
            java.lang.String r3 = "market.android.com"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L_0x01c5
            goto L_0x011b
        L_0x00af:
            java.lang.String r5 = "terms"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L_0x01c5
            r4.h()
            goto L_0x01c5
        L_0x00bc:
            java.lang.String r5 = "pages"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L_0x01c5
            goto L_0x019e
        L_0x00c6:
            java.lang.String r5 = "notes"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L_0x01c5
            r4.f()
            goto L_0x01c5
        L_0x00d3:
            java.lang.String r5 = "catslist"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L_0x01c5
            goto L_0x010e
        L_0x00dc:
            java.lang.String r3 = "play.google.com"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L_0x01c5
            goto L_0x011b
        L_0x00e5:
            java.lang.String r5 = "page"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L_0x01c5
            goto L_0x019e
        L_0x00ef:
            java.lang.String r5 = "home"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L_0x01c5
            r4.d()
            goto L_0x01c5
        L_0x00fc:
            java.lang.String r5 = "apps"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L_0x01c5
            goto L_0x019e
        L_0x0106:
            java.lang.String r5 = "cat"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L_0x01c5
        L_0x010e:
            r4.b(r1, r0)
            goto L_0x01c5
        L_0x0113:
            java.lang.String r3 = "app"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L_0x01c5
        L_0x011b:
            r4.a((android.content.Intent) r5, (b.b.a.C0202m) r6, (android.net.Uri) r1, (java.lang.String) r0)
            goto L_0x01c5
        L_0x0120:
            java.lang.String r5 = "feedback"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L_0x01c5
            r4.c()
            goto L_0x01c5
        L_0x012d:
            java.lang.String r5 = "episode_details"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L_0x01c5
            goto L_0x0192
        L_0x0136:
            java.lang.String r1 = "cafebazaar.ir"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L_0x01c5
            goto L_0x01b6
        L_0x0140:
            java.lang.String r5 = "video_details"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L_0x01c5
            r4.k(r1, r0)
            goto L_0x01c5
        L_0x014d:
            java.lang.String r5 = "review_reply"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L_0x01c5
            r4.c(r1)
            goto L_0x01c5
        L_0x015a:
            java.lang.String r5 = "videos"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L_0x01c5
            r4.i()
            goto L_0x01c5
        L_0x0166:
            java.lang.String r5 = "serial"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L_0x01c5
        L_0x016e:
            r4.i(r1, r0)
            goto L_0x01c5
        L_0x0172:
            java.lang.String r5 = "search"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L_0x01c5
            r4.d(r1)
            goto L_0x01c5
        L_0x017e:
            java.lang.String r5 = "season_episodes"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L_0x01c5
            r4.h(r1, r0)
            goto L_0x01c5
        L_0x018a:
            java.lang.String r5 = "episode"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L_0x01c5
        L_0x0192:
            r4.d(r1, r0)
            goto L_0x01c5
        L_0x0196:
            java.lang.String r5 = "collection"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L_0x01c5
        L_0x019e:
            r4.g(r1, r0)
            goto L_0x01c5
        L_0x01a2:
            java.lang.String r5 = "support"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L_0x01c5
            r4.c()
            goto L_0x01c5
        L_0x01ae:
            java.lang.String r1 = "www.cafebazaar.ir"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L_0x01c5
        L_0x01b6:
            r4.a(r5, r6, r0)
            goto L_0x01c5
        L_0x01ba:
            java.lang.String r5 = "my_bazaar"
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L_0x01c5
            r4.e()
        L_0x01c5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.app.navigation.intenthandler.IntentHandlerImpl.a(android.content.Intent, b.b.a.m):void");
    }

    public final void b(Uri uri) {
    }

    public final void b(Uri uri, String str) {
        String a2 = a(uri);
        if (a2 != null) {
            a(this, "category/?cat=" + a2, false, null, str, 6, null);
        }
    }

    public final void c(Uri uri) {
        String a2 = a(uri);
        if (a2 != null) {
            try {
                int parseInt = Integer.parseInt(a2);
                C0313j a3 = this.f12133b.a();
                if (a3 != null) {
                    c.a(a3, d.f4738a.a(parseInt));
                    h hVar = h.f14579a;
                }
            } catch (Exception e2) {
                c.c.a.c.c.a.f4699b.a((Throwable) e2);
                h hVar2 = h.f14579a;
            }
        }
    }

    public final void d(Uri uri) {
        String a2 = a(uri);
        if (a2 != null) {
            C0313j a3 = this.f12133b.a();
            if (a3 != null) {
                c.a(a3, d.l.b(d.f4738a, a2, null, 2, null));
            }
        }
    }

    public final void e(Uri uri, String str) {
        String a2 = a(uri);
        if (a2 != null) {
            a(a2, str);
        }
    }

    public final void f(Uri uri, String str) {
        String a2 = a(uri);
        if (a2 != null) {
            a(this, "dynamic?slug=" + a2, false, null, str, 6, null);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:46:0x0107  */
    /* JADX WARNING: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void g(android.net.Uri r12, java.lang.String r13) {
        /*
            r11 = this;
            java.lang.String r0 = r11.a(r12)
            if (r0 == 0) goto L_0x0110
            r1 = 2
            r2 = 0
            r3 = 0
            java.lang.String r4 = "by_author"
            boolean r4 = h.k.m.b(r0, r4, r2, r1, r3)
            if (r4 == 0) goto L_0x002b
            java.lang.String r0 = "aid"
            java.lang.String r12 = r12.getQueryParameter(r0)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "developer_apps/?slug="
            r0.append(r1)
            r0.append(r12)
            java.lang.String r0 = r0.toString()
        L_0x0028:
            r5 = r0
            goto L_0x0105
        L_0x002b:
            java.lang.String r4 = "by_category"
            boolean r4 = h.k.m.b(r0, r4, r2, r1, r3)
            if (r4 == 0) goto L_0x004b
            java.lang.String r0 = "cid"
            java.lang.String r12 = r12.getQueryParameter(r0)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "category/?cat="
            r0.append(r1)
            r0.append(r12)
            java.lang.String r0 = r0.toString()
            goto L_0x0028
        L_0x004b:
            java.lang.String r12 = "upgradable"
            boolean r12 = h.k.m.b(r0, r12, r2, r1, r3)
            if (r12 == 0) goto L_0x0067
            c.c.a.b.e.b r12 = r11.f12133b
            b.w.j r12 = r12.a()
            if (r12 == 0) goto L_0x0064
            c.c.a.n.A.e$a r0 = c.c.a.n.A.e.f6157a
            b.w.p r0 = r0.a()
            c.c.a.i.c.a(r12, r0)
        L_0x0064:
            r5 = r3
            goto L_0x0105
        L_0x0067:
            java.lang.String r12 = "bookmarked"
            boolean r12 = h.k.m.b(r0, r12, r2, r1, r3)
            if (r12 == 0) goto L_0x0081
            c.c.a.b.e.b r12 = r11.f12133b
            b.w.j r12 = r12.a()
            if (r12 == 0) goto L_0x0064
            c.c.a.n.d.a$a r0 = c.c.a.n.d.a.f6405a
            b.w.p r0 = r0.a()
            c.c.a.i.c.a(r12, r0)
            goto L_0x0064
        L_0x0081:
            java.lang.String r12 = "installed"
            boolean r12 = h.k.m.b(r0, r12, r2, r1, r3)
            if (r12 == 0) goto L_0x009b
            c.c.a.b.e.b r12 = r11.f12133b
            b.w.j r12 = r12.a()
            if (r12 == 0) goto L_0x0064
            c.c.a.d$l r0 = c.c.a.d.f4738a
            b.w.p r0 = r0.e()
            c.c.a.i.c.a(r12, r0)
            goto L_0x0064
        L_0x009b:
            java.lang.String r12 = "malicious"
            boolean r12 = h.k.m.b(r0, r12, r2, r1, r3)
            if (r12 == 0) goto L_0x00b5
            c.c.a.b.e.b r12 = r11.f12133b
            b.w.j r12 = r12.a()
            if (r12 == 0) goto L_0x0064
            c.c.a.n.q.c$a r0 = c.c.a.n.q.c.f6767a
            b.w.p r0 = r0.a()
            c.c.a.i.c.a(r12, r0)
            goto L_0x0064
        L_0x00b5:
            java.lang.String r12 = "bought"
            boolean r12 = h.k.m.b(r0, r12, r2, r1, r3)
            if (r12 == 0) goto L_0x00cf
            c.c.a.b.e.b r12 = r11.f12133b
            b.w.j r12 = r12.a()
            if (r12 == 0) goto L_0x0064
            c.c.a.n.e.a$a r0 = c.c.a.n.e.a.f6409a
            b.w.p r0 = r0.a()
            c.c.a.i.c.a(r12, r0)
            goto L_0x0064
        L_0x00cf:
            java.lang.String r12 = "last_played_videos"
            boolean r12 = h.k.m.b(r0, r12, r2, r1, r3)
            if (r12 == 0) goto L_0x00ea
            c.c.a.b.e.b r12 = r11.f12133b
            b.w.j r12 = r12.a()
            if (r12 == 0) goto L_0x0064
            c.c.a.n.j.f.a$a r0 = c.c.a.n.j.f.a.f6557a
            b.w.p r0 = r0.a()
            c.c.a.i.c.a(r12, r0)
            goto L_0x0064
        L_0x00ea:
            java.lang.String r12 = "offline"
            boolean r12 = h.k.m.b(r0, r12, r2, r1, r3)
            if (r12 == 0) goto L_0x0028
            c.c.a.b.e.b r12 = r11.f12133b
            b.w.j r12 = r12.a()
            if (r12 == 0) goto L_0x0064
            c.c.a.n.j.c.e$a r0 = c.c.a.n.j.c.e.f6489a
            b.w.p r0 = r0.a()
            c.c.a.i.c.a(r12, r0)
            goto L_0x0064
        L_0x0105:
            if (r5 == 0) goto L_0x0110
            r6 = 0
            r7 = 0
            r9 = 6
            r10 = 0
            r4 = r11
            r8 = r13
            a(r4, r5, r6, r7, r8, r9, r10)
        L_0x0110:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.app.navigation.intenthandler.IntentHandlerImpl.g(android.net.Uri, java.lang.String):void");
    }

    public final void h(Uri uri, String str) {
        String a2 = a(uri);
        if (a2 != null) {
            List a3 = n.a((CharSequence) a2, new String[]{"|"}, false, 0, 6, (Object) null);
            String str2 = (String) u.g(a3);
            Integer num = null;
            try {
                String str3 = (String) u.c(a3, 1);
                if (str3 != null) {
                    num = Integer.valueOf(Integer.parseInt(str3));
                }
            } catch (NumberFormatException e2) {
                c.c.a.c.c.a.f4699b.a((Throwable) e2);
            }
            if (str2 != null && num != null) {
                int intValue = num.intValue();
                C0313j a4 = this.f12133b.a();
                if (a4 != null) {
                    c.a(a4, d.f4738a.b(str2, intValue, str));
                }
            }
        }
    }

    public final void i(Uri uri, String str) {
        String a2 = a(uri);
        if (a2 != null) {
            C0313j a3 = this.f12133b.a();
            if (a3 != null) {
                c.a(a3, d.l.a(d.f4738a, a2, 0, str, 2, (Object) null));
            }
        }
    }

    public final void j(Uri uri, String str) {
        p pVar;
        String a2 = a(uri);
        if (a2 != null) {
            List<String> pathSegments = uri.getPathSegments();
            j.a((Object) pathSegments, "intentData.pathSegments");
            if (j.a((Object) (String) u.c(pathSegments, 1), (Object) "lists")) {
                a(this, "sl?slug=" + a2, false, null, str, 6, null);
                return;
            }
            List<String> pathSegments2 = uri.getPathSegments();
            j.a((Object) pathSegments2, "intentData.pathSegments");
            String str2 = (String) u.c(pathSegments2, uri.getPathSegments().size() - 2);
            if (j.a((Object) str2, (Object) SeriesType.EPISODE.f())) {
                pVar = d.f4738a.a(a2, 0, str);
            } else {
                pVar = j.a((Object) str2, (Object) SeriesType.SERIAL.f()) ? d.l.a(d.f4738a, a2, 0, str, 2, (Object) null) : null;
            }
            if (pVar != null) {
                C0313j a3 = this.f12133b.a();
                if (a3 != null) {
                    c.a(a3, pVar);
                }
            }
        }
    }

    public final void k(Uri uri, String str) {
        String a2 = a(uri);
        if (a2 != null) {
            List<String> pathSegments = uri.getPathSegments();
            j.a((Object) pathSegments, "intentData.pathSegments");
            if (j.a((Object) (String) u.c(pathSegments, 1), (Object) "lists")) {
                a(this, "vl?slug=" + a2, false, null, str, 6, null);
                return;
            }
            C0313j a3 = this.f12133b.a();
            if (a3 != null) {
                c.a(a3, d.f4738a.c(a2, str));
            }
        }
    }

    public final void d() {
        C0313j a2 = this.f12133b.a();
        if (a2 != null) {
            c.a(a2, d.f4738a.d());
        }
    }

    public final void e() {
        C0313j a2 = this.f12133b.a();
        if (a2 != null) {
            c.a(a2, d.f4738a.h());
        }
    }

    public final void b() {
        C0313j a2 = this.f12133b.a();
        if (a2 != null) {
            c.a(a2, d.f4738a.f());
        }
    }

    public final void d(Uri uri, String str) {
        String a2 = a(uri);
        if (a2 != null) {
            int i2 = 0;
            if (uri.getQueryParameter("seasonIdx") != null) {
                try {
                    String queryParameter = uri.getQueryParameter("seasonIdx");
                    if (queryParameter != null) {
                        i2 = Integer.parseInt(queryParameter);
                    } else {
                        j.a();
                        throw null;
                    }
                } catch (NumberFormatException e2) {
                    c.c.a.c.c.a.f4699b.b(new Throwable("invalid seasonIndex in handleIntent", e2));
                }
            }
            C0313j a3 = this.f12133b.a();
            if (a3 != null) {
                c.a(a3, c.c.a.n.j.d.p.f6538a.b(a2, i2, str));
            }
        }
    }

    public final void f() {
        C0313j a2 = this.f12133b.a();
        if (a2 != null) {
            c.a(a2, d.f4738a.j());
        }
    }

    public final void i() {
        C0313j a2 = this.f12133b.a();
        if (a2 != null) {
            c.a(a2, d.f4738a.n());
        }
    }

    public final void c(Uri uri, String str) {
        String a2 = a(uri);
        if (a2 != null) {
            a(this, "developer_apps/?slug=" + a2, false, "", str, 2, null);
        }
    }

    public final void c() {
        c.c.a.i.b.a(this.f12133b.g(), "http://help.cafebazaar.ir/", false, 2, null);
    }

    public final void h() {
        MainActivity g2 = this.f12133b.g();
        c.c.a.i.b.a(g2, "https://cafebazaar.ir/terms/?l=" + this.f12134c + "&is_internal=true", false, 2, null);
    }

    public final void g() {
        C0313j a2 = this.f12133b.a();
        if (a2 != null) {
            c.a(a2, d.f4738a.k());
        }
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0086, code lost:
        if (r3.equals("pages") != false) goto L_0x00a7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x009c, code lost:
        if (r3.equals("catslist") != false) goto L_0x00cd;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x00a5, code lost:
        if (r3.equals("page") != false) goto L_0x00a7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00a7, code lost:
        g(r0, r8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00cb, code lost:
        if (r3.equals("cat") != false) goto L_0x00cd;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00cd, code lost:
        b(r0, r8);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(android.content.Intent r6, b.b.a.C0202m r7, java.lang.String r8) {
        /*
            r5 = this;
            android.net.Uri r0 = r6.getData()
            if (r0 == 0) goto L_0x0124
            java.util.List r1 = r0.getPathSegments()
            int r2 = r1.size()
            if (r2 != 0) goto L_0x0011
            return
        L_0x0011:
            r2 = 0
            java.lang.Object r3 = r1.get(r2)
            java.lang.String r3 = (java.lang.String) r3
            if (r3 != 0) goto L_0x001c
            goto L_0x0124
        L_0x001c:
            int r4 = r3.hashCode()
            switch(r4) {
                case -1544438277: goto L_0x0119;
                case -906336856: goto L_0x010d;
                case -905839116: goto L_0x0101;
                case -905838985: goto L_0x00f5;
                case -740569494: goto L_0x00e9;
                case -80681014: goto L_0x00dd;
                case 96801: goto L_0x00d1;
                case 98262: goto L_0x00c5;
                case 3046207: goto L_0x00b9;
                case 3165170: goto L_0x00ac;
                case 3433103: goto L_0x009f;
                case 63583611: goto L_0x0096;
                case 102982549: goto L_0x0089;
                case 106426308: goto L_0x0080;
                case 112202875: goto L_0x0073;
                case 1557721666: goto L_0x0025;
                default: goto L_0x0023;
            }
        L_0x0023:
            goto L_0x0124
        L_0x0025:
            java.lang.String r6 = "details"
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto L_0x0124
            java.lang.Object r6 = r1.get(r2)
            java.lang.String r8 = "segments[0]"
            h.f.b.j.a((java.lang.Object) r6, (java.lang.String) r8)
            java.lang.String r6 = (java.lang.String) r6
            java.util.Locale r8 = java.util.Locale.getDefault()
            java.lang.String r1 = "Locale.getDefault()"
            h.f.b.j.a((java.lang.Object) r8, (java.lang.String) r1)
            if (r6 == 0) goto L_0x006b
            java.lang.String r6 = r6.toLowerCase(r8)
            java.lang.String r8 = "(this as java.lang.String).toLowerCase(locale)"
            h.f.b.j.a((java.lang.Object) r6, (java.lang.String) r8)
            r8 = 0
            r1 = 2
            java.lang.String r3 = "cafebazaar.ir/app/"
            boolean r3 = h.k.n.a((java.lang.CharSequence) r6, (java.lang.CharSequence) r3, (boolean) r2, (int) r1, (java.lang.Object) r8)
            if (r3 != 0) goto L_0x0066
            java.lang.String r3 = "play.google.com"
            boolean r3 = h.k.n.a((java.lang.CharSequence) r6, (java.lang.CharSequence) r3, (boolean) r2, (int) r1, (java.lang.Object) r8)
            if (r3 != 0) goto L_0x0066
            java.lang.String r3 = "market.android.com"
            boolean r6 = h.k.n.a((java.lang.CharSequence) r6, (java.lang.CharSequence) r3, (boolean) r2, (int) r1, (java.lang.Object) r8)
            if (r6 == 0) goto L_0x0124
        L_0x0066:
            r5.a((b.b.a.C0202m) r7, (android.net.Uri) r0)
            goto L_0x0124
        L_0x006b:
            kotlin.TypeCastException r6 = new kotlin.TypeCastException
            java.lang.String r7 = "null cannot be cast to non-null type java.lang.String"
            r6.<init>(r7)
            throw r6
        L_0x0073:
            java.lang.String r6 = "video"
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto L_0x0124
            r5.k(r0, r8)
            goto L_0x0124
        L_0x0080:
            java.lang.String r6 = "pages"
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto L_0x0124
            goto L_0x00a7
        L_0x0089:
            java.lang.String r6 = "lists"
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto L_0x0124
            r5.f(r0, r8)
            goto L_0x0124
        L_0x0096:
            java.lang.String r6 = "catslist"
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto L_0x0124
            goto L_0x00cd
        L_0x009f:
            java.lang.String r6 = "page"
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto L_0x0124
        L_0x00a7:
            r5.g(r0, r8)
            goto L_0x0124
        L_0x00ac:
            java.lang.String r6 = "game"
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto L_0x0124
            r5.e(r0, r8)
            goto L_0x0124
        L_0x00b9:
            java.lang.String r6 = "cast"
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto L_0x0124
            r5.a((android.net.Uri) r0, (java.lang.String) r8)
            goto L_0x0124
        L_0x00c5:
            java.lang.String r6 = "cat"
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto L_0x0124
        L_0x00cd:
            r5.b(r0, r8)
            goto L_0x0124
        L_0x00d1:
            java.lang.String r1 = "app"
            boolean r1 = r3.equals(r1)
            if (r1 == 0) goto L_0x0124
            r5.a((android.content.Intent) r6, (b.b.a.C0202m) r7, (android.net.Uri) r0, (java.lang.String) r8)
            goto L_0x0124
        L_0x00dd:
            java.lang.String r6 = "developer"
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto L_0x0124
            r5.c(r0, r8)
            goto L_0x0124
        L_0x00e9:
            java.lang.String r6 = "editor_review"
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto L_0x0124
            r5.b(r0)
            goto L_0x0124
        L_0x00f5:
            java.lang.String r6 = "series"
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto L_0x0124
            r5.j(r0, r8)
            goto L_0x0124
        L_0x0101:
            java.lang.String r6 = "serial"
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto L_0x0124
            r5.i(r0, r8)
            goto L_0x0124
        L_0x010d:
            java.lang.String r6 = "search"
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto L_0x0124
            r5.d(r0)
            goto L_0x0124
        L_0x0119:
            java.lang.String r6 = "episode"
            boolean r6 = r3.equals(r6)
            if (r6 == 0) goto L_0x0124
            r5.d(r0, r8)
        L_0x0124:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.app.navigation.intenthandler.IntentHandlerImpl.a(android.content.Intent, b.b.a.m, java.lang.String):void");
    }

    public final void a(Intent intent, C0202m mVar, Uri uri, String str) {
        if (j.a((Object) intent.getAction(), (Object) "android.intent.action.EDIT")) {
            a(mVar, uri);
            return;
        }
        String a2 = a(uri);
        if (a2 != null) {
            List<String> pathSegments = uri.getPathSegments();
            j.a((Object) pathSegments, "intentData.pathSegments");
            if (j.a((Object) (String) u.c(pathSegments, 1), (Object) "lists")) {
                a(this, "dynamic?slug=" + a2, false, null, str, 6, null);
                return;
            }
            a(a2, str);
        }
    }

    public final void a(C0202m mVar, Uri uri) {
        String a2 = a(uri);
        if (a2 != null) {
            ThirdPartyReviewActivity.u.a(mVar, a2);
            mVar.finish();
        }
    }

    public final void a(String str, String str2) {
        C0313j a2 = this.f12133b.a();
        if (a2 != null) {
            c.a(a2, d.l.a(d.f4738a, str, str2, false, 4, (Object) null));
        }
    }

    public static /* synthetic */ void a(IntentHandlerImpl intentHandlerImpl, String str, boolean z, String str2, String str3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        if ((i2 & 4) != 0) {
            str2 = "";
        }
        intentHandlerImpl.a(str, z, str2, str3);
    }

    public final void a(String str, boolean z, String str2, String str3) {
        C0313j a2 = this.f12133b.a();
        if (a2 != null) {
            c.a(a2, c.c.a.n.l.h.f6673a.a(str, z, str2, str3));
        }
    }

    public final void a(Uri uri, String str) {
        String a2 = a(uri);
        if (a2 != null) {
            C0313j a3 = this.f12133b.a();
            if (a3 != null) {
                c.a(a3, d.f4738a.a(a2, "", str));
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x002e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String a(android.net.Uri r8) {
        /*
            r7 = this;
            java.lang.String r0 = "id"
            java.lang.String r0 = r8.getQueryParameter(r0)
            java.lang.String r1 = "slug"
            java.lang.String r1 = r8.getQueryParameter(r1)
            java.lang.String r2 = "q"
            java.lang.String r2 = r8.getQueryParameter(r2)
            java.lang.String r3 = "review_id"
            java.lang.String r3 = r8.getQueryParameter(r3)
            if (r0 == 0) goto L_0x001c
        L_0x001a:
            r1 = r0
            goto L_0x002c
        L_0x001c:
            if (r1 == 0) goto L_0x001f
            goto L_0x002c
        L_0x001f:
            if (r2 == 0) goto L_0x0023
            r1 = r2
            goto L_0x002c
        L_0x0023:
            if (r3 == 0) goto L_0x0027
            r1 = r3
            goto L_0x002c
        L_0x0027:
            java.lang.String r0 = r8.getLastPathSegment()
            goto L_0x001a
        L_0x002c:
            if (r1 == 0) goto L_0x0047
            r8 = 1
            java.lang.String[] r2 = new java.lang.String[r8]
            r8 = 0
            java.lang.String r0 = "/"
            r2[r8] = r0
            r3 = 0
            r4 = 0
            r5 = 6
            r6 = 0
            java.util.List r8 = h.k.n.a((java.lang.CharSequence) r1, (java.lang.String[]) r2, (boolean) r3, (int) r4, (int) r5, (java.lang.Object) r6)
            if (r8 == 0) goto L_0x0047
            java.lang.Object r8 = h.a.u.g(r8)
            java.lang.String r8 = (java.lang.String) r8
            goto L_0x0048
        L_0x0047:
            r8 = 0
        L_0x0048:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.app.navigation.intenthandler.IntentHandlerImpl.a(android.net.Uri):java.lang.String");
    }

    public final void a() {
        C0313j a2 = this.f12133b.a();
        if (a2 != null) {
            c.a(a2, d.f4738a.m());
        }
    }
}
