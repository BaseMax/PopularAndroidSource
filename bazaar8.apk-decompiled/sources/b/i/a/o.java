package b.i.a;

import android.app.Notification;
import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import b.i.a.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: NotificationCompatBuilder */
public class o implements m {

    /* renamed from: a  reason: collision with root package name */
    public final Notification.Builder f2557a;

    /* renamed from: b  reason: collision with root package name */
    public final n.d f2558b;

    /* renamed from: c  reason: collision with root package name */
    public RemoteViews f2559c;

    /* renamed from: d  reason: collision with root package name */
    public RemoteViews f2560d;

    /* renamed from: e  reason: collision with root package name */
    public final List<Bundle> f2561e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    public final Bundle f2562f = new Bundle();

    /* renamed from: g  reason: collision with root package name */
    public int f2563g;

    /* renamed from: h  reason: collision with root package name */
    public RemoteViews f2564h;

    public o(n.d dVar) {
        this.f2558b = dVar;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f2557a = new Notification.Builder(dVar.f2541a, dVar.I);
        } else {
            this.f2557a = new Notification.Builder(dVar.f2541a);
        }
        Notification notification = dVar.N;
        this.f2557a.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, dVar.f2548h).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(dVar.f2544d).setContentText(dVar.f2545e).setContentInfo(dVar.f2550j).setContentIntent(dVar.f2546f).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(dVar.f2547g, (notification.flags & 128) != 0).setLargeIcon(dVar.f2549i).setNumber(dVar.f2551k).setProgress(dVar.r, dVar.s, dVar.t);
        if (Build.VERSION.SDK_INT < 21) {
            this.f2557a.setSound(notification.sound, notification.audioStreamType);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            this.f2557a.setSubText(dVar.p).setUsesChronometer(dVar.n).setPriority(dVar.f2552l);
            Iterator<n.a> it = dVar.f2542b.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
            Bundle bundle = dVar.B;
            if (bundle != null) {
                this.f2562f.putAll(bundle);
            }
            if (Build.VERSION.SDK_INT < 20) {
                if (dVar.x) {
                    this.f2562f.putBoolean("android.support.localOnly", true);
                }
                String str = dVar.u;
                if (str != null) {
                    this.f2562f.putString("android.support.groupKey", str);
                    if (dVar.v) {
                        this.f2562f.putBoolean("android.support.isGroupSummary", true);
                    } else {
                        this.f2562f.putBoolean("android.support.useSideChannel", true);
                    }
                }
                String str2 = dVar.w;
                if (str2 != null) {
                    this.f2562f.putString("android.support.sortKey", str2);
                }
            }
            this.f2559c = dVar.F;
            this.f2560d = dVar.G;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            this.f2557a.setShowWhen(dVar.m);
            if (Build.VERSION.SDK_INT < 21) {
                ArrayList<String> arrayList = dVar.O;
                if (arrayList != null && !arrayList.isEmpty()) {
                    Bundle bundle2 = this.f2562f;
                    ArrayList<String> arrayList2 = dVar.O;
                    bundle2.putStringArray("android.people", (String[]) arrayList2.toArray(new String[arrayList2.size()]));
                }
            }
        }
        if (Build.VERSION.SDK_INT >= 20) {
            this.f2557a.setLocalOnly(dVar.x).setGroup(dVar.u).setGroupSummary(dVar.v).setSortKey(dVar.w);
            this.f2563g = dVar.M;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.f2557a.setCategory(dVar.A).setColor(dVar.C).setVisibility(dVar.D).setPublicVersion(dVar.E).setSound(notification.sound, notification.audioAttributes);
            Iterator<String> it2 = dVar.O.iterator();
            while (it2.hasNext()) {
                this.f2557a.addPerson(it2.next());
            }
            this.f2564h = dVar.H;
            if (dVar.f2543c.size() > 0) {
                Bundle bundle3 = dVar.c().getBundle("android.car.EXTENSIONS");
                bundle3 = bundle3 == null ? new Bundle() : bundle3;
                Bundle bundle4 = new Bundle();
                for (int i2 = 0; i2 < dVar.f2543c.size(); i2++) {
                    bundle4.putBundle(Integer.toString(i2), p.a(dVar.f2543c.get(i2)));
                }
                bundle3.putBundle("invisible_actions", bundle4);
                dVar.c().putBundle("android.car.EXTENSIONS", bundle3);
                this.f2562f.putBundle("android.car.EXTENSIONS", bundle3);
            }
        }
        if (Build.VERSION.SDK_INT >= 24) {
            this.f2557a.setExtras(dVar.B).setRemoteInputHistory(dVar.q);
            RemoteViews remoteViews = dVar.F;
            if (remoteViews != null) {
                this.f2557a.setCustomContentView(remoteViews);
            }
            RemoteViews remoteViews2 = dVar.G;
            if (remoteViews2 != null) {
                this.f2557a.setCustomBigContentView(remoteViews2);
            }
            RemoteViews remoteViews3 = dVar.H;
            if (remoteViews3 != null) {
                this.f2557a.setCustomHeadsUpContentView(remoteViews3);
            }
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.f2557a.setBadgeIconType(dVar.J).setShortcutId(dVar.K).setTimeoutAfter(dVar.L).setGroupAlertBehavior(dVar.M);
            if (dVar.z) {
                this.f2557a.setColorized(dVar.y);
            }
            if (!TextUtils.isEmpty(dVar.I)) {
                this.f2557a.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
    }

    public Notification.Builder a() {
        return this.f2557a;
    }

    public Notification b() {
        n.e eVar = this.f2558b.o;
        if (eVar != null) {
            eVar.a((m) this);
        }
        RemoteViews c2 = eVar != null ? eVar.c(this) : null;
        Notification c3 = c();
        if (c2 != null) {
            c3.contentView = c2;
        } else {
            RemoteViews remoteViews = this.f2558b.F;
            if (remoteViews != null) {
                c3.contentView = remoteViews;
            }
        }
        if (Build.VERSION.SDK_INT >= 16 && eVar != null) {
            RemoteViews b2 = eVar.b(this);
            if (b2 != null) {
                c3.bigContentView = b2;
            }
        }
        if (Build.VERSION.SDK_INT >= 21 && eVar != null) {
            RemoteViews d2 = this.f2558b.o.d(this);
            if (d2 != null) {
                c3.headsUpContentView = d2;
            }
        }
        if (Build.VERSION.SDK_INT >= 16 && eVar != null) {
            Bundle a2 = n.a(c3);
            if (a2 != null) {
                eVar.a(a2);
            }
        }
        return c3;
    }

    public Notification c() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            return this.f2557a.build();
        }
        if (i2 >= 24) {
            Notification build = this.f2557a.build();
            if (this.f2563g != 0) {
                if (!(build.getGroup() == null || (build.flags & 512) == 0 || this.f2563g != 2)) {
                    a(build);
                }
                if (build.getGroup() != null && (build.flags & 512) == 0 && this.f2563g == 1) {
                    a(build);
                }
            }
            return build;
        } else if (i2 >= 21) {
            this.f2557a.setExtras(this.f2562f);
            Notification build2 = this.f2557a.build();
            RemoteViews remoteViews = this.f2559c;
            if (remoteViews != null) {
                build2.contentView = remoteViews;
            }
            RemoteViews remoteViews2 = this.f2560d;
            if (remoteViews2 != null) {
                build2.bigContentView = remoteViews2;
            }
            RemoteViews remoteViews3 = this.f2564h;
            if (remoteViews3 != null) {
                build2.headsUpContentView = remoteViews3;
            }
            if (this.f2563g != 0) {
                if (!(build2.getGroup() == null || (build2.flags & 512) == 0 || this.f2563g != 2)) {
                    a(build2);
                }
                if (build2.getGroup() != null && (build2.flags & 512) == 0 && this.f2563g == 1) {
                    a(build2);
                }
            }
            return build2;
        } else if (i2 >= 20) {
            this.f2557a.setExtras(this.f2562f);
            Notification build3 = this.f2557a.build();
            RemoteViews remoteViews4 = this.f2559c;
            if (remoteViews4 != null) {
                build3.contentView = remoteViews4;
            }
            RemoteViews remoteViews5 = this.f2560d;
            if (remoteViews5 != null) {
                build3.bigContentView = remoteViews5;
            }
            if (this.f2563g != 0) {
                if (!(build3.getGroup() == null || (build3.flags & 512) == 0 || this.f2563g != 2)) {
                    a(build3);
                }
                if (build3.getGroup() != null && (build3.flags & 512) == 0 && this.f2563g == 1) {
                    a(build3);
                }
            }
            return build3;
        } else if (i2 >= 19) {
            SparseArray<Bundle> a2 = p.a(this.f2561e);
            if (a2 != null) {
                this.f2562f.putSparseParcelableArray("android.support.actionExtras", a2);
            }
            this.f2557a.setExtras(this.f2562f);
            Notification build4 = this.f2557a.build();
            RemoteViews remoteViews6 = this.f2559c;
            if (remoteViews6 != null) {
                build4.contentView = remoteViews6;
            }
            RemoteViews remoteViews7 = this.f2560d;
            if (remoteViews7 != null) {
                build4.bigContentView = remoteViews7;
            }
            return build4;
        } else if (i2 < 16) {
            return this.f2557a.getNotification();
        } else {
            Notification build5 = this.f2557a.build();
            Bundle a3 = n.a(build5);
            Bundle bundle = new Bundle(this.f2562f);
            for (String str : this.f2562f.keySet()) {
                if (a3.containsKey(str)) {
                    bundle.remove(str);
                }
            }
            a3.putAll(bundle);
            SparseArray<Bundle> a4 = p.a(this.f2561e);
            if (a4 != null) {
                n.a(build5).putSparseParcelableArray("android.support.actionExtras", a4);
            }
            RemoteViews remoteViews8 = this.f2559c;
            if (remoteViews8 != null) {
                build5.contentView = remoteViews8;
            }
            RemoteViews remoteViews9 = this.f2560d;
            if (remoteViews9 != null) {
                build5.bigContentView = remoteViews9;
            }
            return build5;
        }
    }

    public final void a(n.a aVar) {
        Bundle bundle;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 20) {
            Notification.Action.Builder builder = new Notification.Action.Builder(aVar.e(), aVar.i(), aVar.a());
            if (aVar.f() != null) {
                for (RemoteInput addRemoteInput : r.a(aVar.f())) {
                    builder.addRemoteInput(addRemoteInput);
                }
            }
            if (aVar.d() != null) {
                bundle = new Bundle(aVar.d());
            } else {
                bundle = new Bundle();
            }
            bundle.putBoolean("android.support.allowGeneratedReplies", aVar.b());
            if (Build.VERSION.SDK_INT >= 24) {
                builder.setAllowGeneratedReplies(aVar.b());
            }
            bundle.putInt("android.support.action.semanticAction", aVar.g());
            if (Build.VERSION.SDK_INT >= 28) {
                builder.setSemanticAction(aVar.g());
            }
            bundle.putBoolean("android.support.action.showsUserInterface", aVar.h());
            builder.addExtras(bundle);
            this.f2557a.addAction(builder.build());
        } else if (i2 >= 16) {
            this.f2561e.add(p.a(this.f2557a, aVar));
        }
    }

    public final void a(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -2;
        notification.defaults &= -3;
    }
}
