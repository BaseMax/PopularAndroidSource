.class public abstract Lc/e/a/b/d/d/P;
.super Lc/e/a/b/g/d/b;

# interfaces
.implements Lc/e/a/b/d/d/O;


# direct methods
.method public static a(Landroid/os/IBinder;)Lc/e/a/b/d/d/O;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.IGoogleCertificatesApi"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lc/e/a/b/d/d/O;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lc/e/a/b/d/d/O;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lc/e/a/b/d/d/Q;

    invoke-direct {v0, p0}, Lc/e/a/b/d/d/Q;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
