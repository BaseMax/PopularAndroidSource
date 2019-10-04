.class public final Lcom/google/android/gms/common/api/internal/bt;
.super Lcom/google/android/gms/internal/of;

# interfaces
.implements Lcom/google/android/gms/common/api/f$b;
.implements Lcom/google/android/gms/common/api/f$c;


# static fields
.field private static a:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b<",
            "+",
            "Lcom/google/android/gms/internal/ob;",
            "Lcom/google/android/gms/internal/oc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b<",
            "+",
            "Lcom/google/android/gms/internal/ob;",
            "Lcom/google/android/gms/internal/oc;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/common/internal/bl;

.field private g:Lcom/google/android/gms/internal/ob;

.field private h:Lcom/google/android/gms/common/api/internal/bw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ny;->zzebg:Lcom/google/android/gms/common/api/a$b;

    sput-object v0, Lcom/google/android/gms/common/api/internal/bt;->a:Lcom/google/android/gms/common/api/a$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/bl;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/bt;->a:Lcom/google/android/gms/common/api/a$b;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/api/internal/bt;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/bl;Lcom/google/android/gms/common/api/a$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/bl;Lcom/google/android/gms/common/api/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/common/internal/bl;",
            "Lcom/google/android/gms/common/api/a$b<",
            "+",
            "Lcom/google/android/gms/internal/ob;",
            "Lcom/google/android/gms/internal/oc;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/of;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bt;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/bt;->c:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/bl;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bt;->f:Lcom/google/android/gms/common/internal/bl;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/bl;->zzakv()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bt;->e:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/bt;->d:Lcom/google/android/gms/common/api/a$b;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/bt;)Lcom/google/android/gms/common/api/internal/bw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/bt;->h:Lcom/google/android/gms/common/api/internal/bw;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/bt;Lcom/google/android/gms/internal/zzcxq;)V
    .locals 3

    .line 1000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcxq;->zzahf()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcxq;->zzbdi()Lcom/google/android/gms/common/internal/zzbt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzbt;->zzahf()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "SignInCoordinator"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bt;->h:Lcom/google/android/gms/common/api/internal/bw;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzbt;->zzalp()Lcom/google/android/gms/common/internal/o;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bt;->e:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/bw;->zzb(Lcom/google/android/gms/common/internal/o;Ljava/util/Set;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bt;->h:Lcom/google/android/gms/common/api/internal/bw;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/bw;->zzh(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/bt;->g:Lcom/google/android/gms/internal/ob;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ob;->disconnect()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bt;->g:Lcom/google/android/gms/internal/ob;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ob;->zza(Lcom/google/android/gms/internal/og;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bt;->h:Lcom/google/android/gms/common/api/internal/bw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/bw;->zzh(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bt;->g:Lcom/google/android/gms/internal/ob;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ob;->disconnect()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/bw;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bt;->g:Lcom/google/android/gms/internal/ob;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ob;->disconnect()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bt;->f:Lcom/google/android/gms/common/internal/bl;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/bl;->zzc(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/bt;->d:Lcom/google/android/gms/common/api/a$b;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/bt;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bt;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/bt;->f:Lcom/google/android/gms/common/internal/bl;

    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/bl;->zzalb()Lcom/google/android/gms/internal/oc;

    move-result-object v6

    move-object v7, p0

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/a$b;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/bl;Ljava/lang/Object;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ob;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/bt;->g:Lcom/google/android/gms/internal/ob;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bt;->h:Lcom/google/android/gms/common/api/internal/bw;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bt;->e:Ljava/util/Set;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bt;->g:Lcom/google/android/gms/internal/ob;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ob;->connect()V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/bt;->c:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/common/api/internal/bu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/bu;-><init>(Lcom/google/android/gms/common/api/internal/bt;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzaje()Lcom/google/android/gms/internal/ob;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bt;->g:Lcom/google/android/gms/internal/ob;

    return-object v0
.end method

.method public final zzajq()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bt;->g:Lcom/google/android/gms/internal/ob;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ob;->disconnect()V

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzcxq;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bt;->c:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/api/internal/bv;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/bv;-><init>(Lcom/google/android/gms/common/api/internal/bt;Lcom/google/android/gms/internal/zzcxq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
