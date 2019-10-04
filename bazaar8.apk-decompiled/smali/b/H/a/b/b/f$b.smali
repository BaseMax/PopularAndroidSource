.class public Lb/H/a/b/b/f$b;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/H/a/b/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lb/H/a/b/b/f;


# direct methods
.method public constructor <init>(Lb/H/a/b/b/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/H/a/b/b/f$b;->a:Lb/H/a/b/b/f;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    .line 1
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object p1

    sget-object v0, Lb/H/a/b/b/f;->f:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "Network capabilities changed: %s"

    .line 2
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v1, v2, [Ljava/lang/Throwable;

    .line 3
    invoke-virtual {p1, v0, p2, v1}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    iget-object p1, p0, Lb/H/a/b/b/f$b;->a:Lb/H/a/b/b/f;

    invoke-virtual {p1}, Lb/H/a/b/b/f;->d()Lb/H/a/b/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb/H/a/b/b/e;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    .line 1
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object p1

    sget-object v0, Lb/H/a/b/b/f;->f:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v2, "Network connection lost"

    invoke-virtual {p1, v0, v2, v1}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lb/H/a/b/b/f$b;->a:Lb/H/a/b/b/f;

    invoke-virtual {p1}, Lb/H/a/b/b/f;->d()Lb/H/a/b/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/H/a/b/b/e;->a(Ljava/lang/Object;)V

    return-void
.end method
