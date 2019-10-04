.class public final Lc/e/a/b/h/b/s;
.super Lc/e/a/b/d/d/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/d/d/d<",
        "Lc/e/a/b/h/b/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lc/e/a/b/d/d/d$a;Lc/e/a/b/d/d/d$b;)V
    .locals 7

    const/16 v3, 0x5d

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lc/e/a/b/d/d/d;-><init>(Landroid/content/Context;Landroid/os/Looper;ILc/e/a/b/d/d/d$a;Lc/e/a/b/d/d/d$b;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lc/e/a/b/h/b/l;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lc/e/a/b/h/b/l;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lc/e/a/b/h/b/n;

    invoke-direct {v0, p1}, Lc/e/a/b/h/b/n;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final e()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.measurement.START"

    return-object v0
.end method
