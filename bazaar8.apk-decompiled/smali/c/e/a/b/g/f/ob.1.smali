.class public abstract Lc/e/a/b/g/f/ob;
.super Lc/e/a/b/g/f/s;

# interfaces
.implements Lc/e/a/b/g/f/Sa;


# direct methods
.method public static a(Landroid/os/IBinder;)Lc/e/a/b/g/f/Sa;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lc/e/a/b/g/f/Sa;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lc/e/a/b/g/f/Sa;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lc/e/a/b/g/f/Lb;

    invoke-direct {v0, p0}, Lc/e/a/b/g/f/Lb;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
