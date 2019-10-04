package kotlinx.coroutines;

import h.c.b;
import h.c.b.a.d;
import h.f.a.c;
import h.f.b.j;
import h.h;
import h.j.f;
import i.a.C1123q;
import i.a.xa;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;

@d(c = "kotlinx.coroutines.JobSupport$children$1", f = "JobSupport.kt", l = {897, 899}, m = "invokeSuspend")
/* compiled from: JobSupport.kt */
final class JobSupport$children$1 extends RestrictedSuspendLambda implements c<f<? super C1123q>, b<? super h>, Object> {
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public Object L$5;
    public int label;
    public f p$;
    public final /* synthetic */ xa this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public JobSupport$children$1(xa xaVar, b bVar) {
        super(2, bVar);
        this.this$0 = xaVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        JobSupport$children$1 jobSupport$children$1 = new JobSupport$children$1(this.this$0, bVar);
        jobSupport$children$1.p$ = (f) obj;
        return jobSupport$children$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((JobSupport$children$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x007f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object d(java.lang.Object r11) {
        /*
            r10 = this;
            java.lang.Object r0 = h.c.a.b.a()
            int r1 = r10.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L_0x003d
            if (r1 == r3) goto L_0x0032
            if (r1 != r2) goto L_0x002a
            java.lang.Object r1 = r10.L$5
            i.a.p r1 = (i.a.C1121p) r1
            java.lang.Object r1 = r10.L$4
            i.a.c.k r1 = (i.a.c.k) r1
            java.lang.Object r4 = r10.L$3
            i.a.Da r4 = (i.a.Da) r4
            java.lang.Object r5 = r10.L$2
            i.a.Da r5 = (i.a.Da) r5
            java.lang.Object r6 = r10.L$1
            java.lang.Object r7 = r10.L$0
            h.j.f r7 = (h.j.f) r7
            h.e.a((java.lang.Object) r11)
            r11 = r10
            goto L_0x009d
        L_0x002a:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L_0x0032:
            java.lang.Object r0 = r10.L$1
            java.lang.Object r0 = r10.L$0
            h.j.f r0 = (h.j.f) r0
            h.e.a((java.lang.Object) r11)
            goto L_0x00aa
        L_0x003d:
            h.e.a((java.lang.Object) r11)
            h.j.f r11 = r10.p$
            i.a.xa r1 = r10.this$0
            java.lang.Object r1 = r1.h()
            boolean r4 = r1 instanceof i.a.C1121p
            if (r4 == 0) goto L_0x005e
            r2 = r1
            i.a.p r2 = (i.a.C1121p) r2
            i.a.q r2 = r2.f14854e
            r10.L$0 = r11
            r10.L$1 = r1
            r10.label = r3
            java.lang.Object r11 = r11.a(r2, r10)
            if (r11 != r0) goto L_0x00aa
            return r0
        L_0x005e:
            boolean r4 = r1 instanceof i.a.C1116ma
            if (r4 == 0) goto L_0x00aa
            r4 = r1
            i.a.ma r4 = (i.a.C1116ma) r4
            i.a.Da r4 = r4.b()
            if (r4 == 0) goto L_0x00aa
            java.lang.Object r5 = r4.e()
            if (r5 == 0) goto L_0x00a2
            i.a.c.k r5 = (i.a.c.k) r5
            r7 = r11
            r6 = r1
            r1 = r5
            r11 = r10
            r5 = r4
        L_0x0078:
            boolean r8 = h.f.b.j.a((java.lang.Object) r1, (java.lang.Object) r4)
            r8 = r8 ^ r3
            if (r8 == 0) goto L_0x00aa
            boolean r8 = r1 instanceof i.a.C1121p
            if (r8 == 0) goto L_0x009d
            r8 = r1
            i.a.p r8 = (i.a.C1121p) r8
            i.a.q r9 = r8.f14854e
            r11.L$0 = r7
            r11.L$1 = r6
            r11.L$2 = r5
            r11.L$3 = r4
            r11.L$4 = r1
            r11.L$5 = r8
            r11.label = r2
            java.lang.Object r8 = r7.a(r9, r11)
            if (r8 != r0) goto L_0x009d
            return r0
        L_0x009d:
            i.a.c.k r1 = r1.g()
            goto L_0x0078
        L_0x00a2:
            kotlin.TypeCastException r11 = new kotlin.TypeCastException
            java.lang.String r0 = "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"
            r11.<init>(r0)
            throw r11
        L_0x00aa:
            h.h r11 = h.h.f14579a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport$children$1.d(java.lang.Object):java.lang.Object");
    }
}
