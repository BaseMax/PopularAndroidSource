package b.y.a;

/* renamed from: b.y.a.c  reason: case insensitive filesystem */
/* compiled from: BatchingListUpdateCallback */
public class C0333c implements z {

    /* renamed from: a  reason: collision with root package name */
    public final z f3448a;

    /* renamed from: b  reason: collision with root package name */
    public int f3449b = 0;

    /* renamed from: c  reason: collision with root package name */
    public int f3450c = -1;

    /* renamed from: d  reason: collision with root package name */
    public int f3451d = -1;

    /* renamed from: e  reason: collision with root package name */
    public Object f3452e = null;

    public C0333c(z zVar) {
        this.f3448a = zVar;
    }

    public void a() {
        int i2 = this.f3449b;
        if (i2 != 0) {
            if (i2 == 1) {
                this.f3448a.b(this.f3450c, this.f3451d);
            } else if (i2 == 2) {
                this.f3448a.c(this.f3450c, this.f3451d);
            } else if (i2 == 3) {
                this.f3448a.a(this.f3450c, this.f3451d, this.f3452e);
            }
            this.f3452e = null;
            this.f3449b = 0;
        }
    }

    public void b(int i2, int i3) {
        if (this.f3449b == 1) {
            int i4 = this.f3450c;
            if (i2 >= i4) {
                int i5 = this.f3451d;
                if (i2 <= i4 + i5) {
                    this.f3451d = i5 + i3;
                    this.f3450c = Math.min(i2, i4);
                    return;
                }
            }
        }
        a();
        this.f3450c = i2;
        this.f3451d = i3;
        this.f3449b = 1;
    }

    public void c(int i2, int i3) {
        if (this.f3449b == 2) {
            int i4 = this.f3450c;
            if (i4 >= i2 && i4 <= i2 + i3) {
                this.f3451d += i3;
                this.f3450c = i2;
                return;
            }
        }
        a();
        this.f3450c = i2;
        this.f3451d = i3;
        this.f3449b = 2;
    }

    public void a(int i2, int i3) {
        a();
        this.f3448a.a(i2, i3);
    }

    public void a(int i2, int i3, Object obj) {
        if (this.f3449b == 3) {
            int i4 = this.f3450c;
            int i5 = this.f3451d;
            if (i2 <= i4 + i5) {
                int i6 = i2 + i3;
                if (i6 >= i4 && this.f3452e == obj) {
                    this.f3450c = Math.min(i2, i4);
                    this.f3451d = Math.max(i5 + i4, i6) - this.f3450c;
                    return;
                }
            }
        }
        a();
        this.f3450c = i2;
        this.f3451d = i3;
        this.f3452e = obj;
        this.f3449b = 3;
    }
}
