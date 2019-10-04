.class public final Lc/e/a/b/i/a/g;
.super Lc/e/a/b/g/c/a;

# interfaces
.implements Lc/e/a/b/i/a/f;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    .line 1
    invoke-direct {p0, p1, v0}, Lc/e/a/b/g/c/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/signin/internal/zah;Lc/e/a/b/i/a/d;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/c/a;->A()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lc/e/a/b/g/c/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 3
    invoke-static {v0, p2}, Lc/e/a/b/g/c/c;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xc

    .line 4
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/g/c/a;->a(ILandroid/os/Parcel;)V

    return-void
.end method
