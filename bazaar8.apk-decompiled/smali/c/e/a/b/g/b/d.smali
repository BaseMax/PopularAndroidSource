.class public final Lc/e/a/b/g/b/d;
.super Lc/e/a/b/g/b/b;
.source "com.google.android.gms:play-services-auth-api-phone@@17.1.0"

# interfaces
.implements Lc/e/a/b/g/b/e;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService"

    .line 1
    invoke-direct {p0, p1, v0}, Lc/e/a/b/g/b/b;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lc/e/a/b/g/b/g;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/b/b;->A()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lc/e/a/b/g/b/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/g/b/b;->a(ILandroid/os/Parcel;)V

    return-void
.end method
