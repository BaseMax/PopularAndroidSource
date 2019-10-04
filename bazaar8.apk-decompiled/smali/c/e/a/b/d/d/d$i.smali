.class public final Lc/e/a/b/d/d/d$i;
.super Lc/e/a/b/d/d/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/d/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field public a:Lc/e/a/b/d/d/d;

.field public final b:I


# direct methods
.method public constructor <init>(Lc/e/a/b/d/d/d;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/e/a/b/d/d/n$a;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/b/d/d/d$i;->a:Lc/e/a/b/d/d/d;

    .line 3
    iput p2, p0, Lc/e/a/b/d/d/d$i;->b:I

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/d$i;->a:Lc/e/a/b/d/d/d;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lc/e/a/b/d/d/d$i;->a:Lc/e/a/b/d/d/d;

    iget v1, p0, Lc/e/a/b/d/d/d$i;->b:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lc/e/a/b/d/d/d;->a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lc/e/a/b/d/d/d$i;->a:Lc/e/a/b/d/d/d;

    return-void
.end method

.method public final a(ILandroid/os/IBinder;Lcom/google/android/gms/common/internal/zzb;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lc/e/a/b/d/d/d$i;->a:Lc/e/a/b/d/d/d;

    const-string v1, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {v0, v1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p3}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lc/e/a/b/d/d/d$i;->a:Lc/e/a/b/d/d/d;

    invoke-static {v0, p3}, Lc/e/a/b/d/d/d;->a(Lc/e/a/b/d/d/d;Lcom/google/android/gms/common/internal/zzb;)V

    .line 7
    iget-object p3, p3, Lcom/google/android/gms/common/internal/zzb;->a:Landroid/os/Bundle;

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lc/e/a/b/d/d/d$i;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public final b(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GmsClient"

    const-string v0, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
