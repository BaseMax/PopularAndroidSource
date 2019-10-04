package c.e.a.a.j.c.a;

import android.net.Uri;
import c.e.a.a.C0744q;
import com.google.android.exoplayer2.offline.StreamKey;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/* compiled from: DashManifest */
public class b implements c.e.a.a.h.b<b> {

    /* renamed from: a  reason: collision with root package name */
    public final long f8522a;

    /* renamed from: b  reason: collision with root package name */
    public final long f8523b;

    /* renamed from: c  reason: collision with root package name */
    public final long f8524c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f8525d;

    /* renamed from: e  reason: collision with root package name */
    public final long f8526e;

    /* renamed from: f  reason: collision with root package name */
    public final long f8527f;

    /* renamed from: g  reason: collision with root package name */
    public final long f8528g;

    /* renamed from: h  reason: collision with root package name */
    public final long f8529h;

    /* renamed from: i  reason: collision with root package name */
    public final n f8530i;

    /* renamed from: j  reason: collision with root package name */
    public final Uri f8531j;

    /* renamed from: k  reason: collision with root package name */
    public final g f8532k;

    /* renamed from: l  reason: collision with root package name */
    public final List<f> f8533l;

    public b(long j2, long j3, long j4, boolean z, long j5, long j6, long j7, long j8, g gVar, n nVar, Uri uri, List<f> list) {
        this.f8522a = j2;
        this.f8523b = j3;
        this.f8524c = j4;
        this.f8525d = z;
        this.f8526e = j5;
        this.f8527f = j6;
        this.f8528g = j7;
        this.f8529h = j8;
        this.f8532k = gVar;
        this.f8530i = nVar;
        this.f8531j = uri;
        this.f8533l = list == null ? Collections.emptyList() : list;
    }

    public final long b(int i2) {
        if (i2 != this.f8533l.size() - 1) {
            return this.f8533l.get(i2 + 1).f8554b - this.f8533l.get(i2).f8554b;
        }
        long j2 = this.f8523b;
        if (j2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j2 - this.f8533l.get(i2).f8554b;
    }

    public final long c(int i2) {
        return C0744q.a(b(i2));
    }

    public final int a() {
        return this.f8533l.size();
    }

    public final f a(int i2) {
        return this.f8533l.get(i2);
    }

    public final b a(List<StreamKey> list) {
        long j2;
        LinkedList linkedList = new LinkedList(list);
        Collections.sort(linkedList);
        linkedList.add(new StreamKey(-1, -1, -1));
        ArrayList arrayList = new ArrayList();
        long j3 = 0;
        int i2 = 0;
        while (true) {
            j2 = -9223372036854775807L;
            if (i2 >= a()) {
                break;
            }
            if (((StreamKey) linkedList.peek()).f12687a != i2) {
                long b2 = b(i2);
                if (b2 != -9223372036854775807L) {
                    j3 += b2;
                }
            } else {
                f a2 = a(i2);
                f fVar = new f(a2.f8553a, a2.f8554b - j3, a(a2.f8555c, linkedList), a2.f8556d);
                arrayList.add(fVar);
            }
            i2++;
        }
        long j4 = this.f8523b;
        if (j4 != -9223372036854775807L) {
            j2 = j4 - j3;
        }
        b bVar = new b(this.f8522a, j2, this.f8524c, this.f8525d, this.f8526e, this.f8527f, this.f8528g, this.f8529h, this.f8532k, this.f8530i, this.f8531j, arrayList);
        return bVar;
    }

    public static ArrayList<a> a(List<a> list, LinkedList<StreamKey> linkedList) {
        StreamKey poll = linkedList.poll();
        int i2 = poll.f12687a;
        ArrayList<a> arrayList = new ArrayList<>();
        do {
            int i3 = poll.f12688b;
            a aVar = list.get(i3);
            List<j> list2 = aVar.f8519c;
            ArrayList arrayList2 = new ArrayList();
            do {
                arrayList2.add(list2.get(poll.f12689c));
                poll = linkedList.poll();
                if (poll.f12687a != i2) {
                    break;
                }
            } while (poll.f12688b == i3);
            a aVar2 = new a(aVar.f8517a, aVar.f8518b, arrayList2, aVar.f8520d, aVar.f8521e);
            arrayList.add(aVar2);
        } while (poll.f12687a == i2);
        linkedList.addFirst(poll);
        return arrayList;
    }
}
