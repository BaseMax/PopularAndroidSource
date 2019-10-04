.class public Lc/e/a/a/d/g;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSession;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/d/g$a;,
        Lc/e/a/a/d/g$b;,
        Lc/e/a/a/d/g$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lc/e/a/a/d/n;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/drm/DrmSession<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lc/e/a/a/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/a/d/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lc/e/a/a/d/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/a/d/g$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lc/e/a/a/o/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/a/o/l<",
            "Lc/e/a/a/d/h;",
            ">;"
        }
    .end annotation
.end field

.field public final g:I

.field public final h:Lc/e/a/a/d/q;

.field public final i:Ljava/util/UUID;

.field public final j:Lc/e/a/a/d/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/a/d/g<",
            "TT;>.b;"
        }
    .end annotation
.end field

.field public k:I

.field public l:I

.field public m:Landroid/os/HandlerThread;

.field public n:Lc/e/a/a/d/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/a/d/g<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field public o:Lc/e/a/a/d/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public p:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

.field public q:[B

.field public r:[B

.field public s:Lc/e/a/a/d/o$a;

.field public t:Lc/e/a/a/d/o$b;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lc/e/a/a/d/o;Lc/e/a/a/d/g$c;Ljava/util/List;I[BLjava/util/HashMap;Lc/e/a/a/d/q;Landroid/os/Looper;Lc/e/a/a/o/l;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lc/e/a/a/d/o<",
            "TT;>;",
            "Lc/e/a/a/d/g$c<",
            "TT;>;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;I[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc/e/a/a/d/q;",
            "Landroid/os/Looper;",
            "Lc/e/a/a/o/l<",
            "Lc/e/a/a/d/h;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p5, v0, :cond_0

    const/4 v0, 0x3

    if-ne p5, v0, :cond_1

    .line 2
    :cond_0
    invoke-static {p6}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_1
    iput-object p1, p0, Lc/e/a/a/d/g;->i:Ljava/util/UUID;

    .line 4
    iput-object p3, p0, Lc/e/a/a/d/g;->c:Lc/e/a/a/d/g$c;

    .line 5
    iput-object p2, p0, Lc/e/a/a/d/g;->b:Lc/e/a/a/d/o;

    .line 6
    iput p5, p0, Lc/e/a/a/d/g;->d:I

    if-eqz p6, :cond_2

    .line 7
    iput-object p6, p0, Lc/e/a/a/d/g;->r:[B

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lc/e/a/a/d/g;->a:Ljava/util/List;

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {p4}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Ljava/util/List;

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/d/g;->a:Ljava/util/List;

    .line 10
    :goto_0
    iput-object p7, p0, Lc/e/a/a/d/g;->e:Ljava/util/HashMap;

    .line 11
    iput-object p8, p0, Lc/e/a/a/d/g;->h:Lc/e/a/a/d/q;

    .line 12
    iput p11, p0, Lc/e/a/a/d/g;->g:I

    .line 13
    iput-object p10, p0, Lc/e/a/a/d/g;->f:Lc/e/a/a/o/l;

    const/4 p1, 0x2

    .line 14
    iput p1, p0, Lc/e/a/a/d/g;->k:I

    .line 15
    new-instance p1, Lc/e/a/a/d/g$b;

    invoke-direct {p1, p0, p9}, Lc/e/a/a/d/g$b;-><init>(Lc/e/a/a/d/g;Landroid/os/Looper;)V

    iput-object p1, p0, Lc/e/a/a/d/g;->j:Lc/e/a/a/d/g$b;

    .line 16
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "DrmRequestHandler"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lc/e/a/a/d/g;->m:Landroid/os/HandlerThread;

    .line 17
    iget-object p1, p0, Lc/e/a/a/d/g;->m:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 18
    new-instance p1, Lc/e/a/a/d/g$a;

    iget-object p2, p0, Lc/e/a/a/d/g;->m:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lc/e/a/a/d/g$a;-><init>(Lc/e/a/a/d/g;Landroid/os/Looper;)V

    iput-object p1, p0, Lc/e/a/a/d/g;->n:Lc/e/a/a/d/g$a;

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/d/g;)I
    .locals 0

    .line 2
    iget p0, p0, Lc/e/a/a/d/g;->g:I

    return p0
.end method

.method public static synthetic a(Lc/e/a/a/d/g;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/d/g;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Exception;Lc/e/a/a/d/h;)V
    .locals 0

    .line 46
    invoke-interface {p1, p0}, Lc/e/a/a/d/h;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic b(Lc/e/a/a/d/g;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/e/a/a/d/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lc/e/a/a/d/g;->q:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lc/e/a/a/d/g;->b:Lc/e/a/a/d/o;

    invoke-interface {v1, v0}, Lc/e/a/a/d/o;->a([B)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/d/g;->g()V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    .line 42
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lc/e/a/a/d/g;->p:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 43
    iget-object v0, p0, Lc/e/a/a/d/g;->f:Lc/e/a/a/o/l;

    new-instance v1, Lc/e/a/a/d/b;

    invoke-direct {v1, p1}, Lc/e/a/a/d/b;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lc/e/a/a/o/l;->a(Lc/e/a/a/o/l$a;)V

    .line 44
    iget p1, p0, Lc/e/a/a/d/g;->k:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    .line 45
    iput p1, p0, Lc/e/a/a/d/g;->k:I

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lc/e/a/a/d/g;->s:Lc/e/a/a/d/o$a;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lc/e/a/a/d/g;->f()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lc/e/a/a/d/g;->s:Lc/e/a/a/d/o$a;

    .line 30
    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_1

    .line 31
    check-cast p2, Ljava/lang/Exception;

    invoke-virtual {p0, p2}, Lc/e/a/a/d/g;->b(Ljava/lang/Exception;)V

    return-void

    .line 32
    :cond_1
    :try_start_0
    check-cast p2, [B

    .line 33
    iget p1, p0, Lc/e/a/a/d/g;->d:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 34
    iget-object p1, p0, Lc/e/a/a/d/g;->b:Lc/e/a/a/d/o;

    iget-object v0, p0, Lc/e/a/a/d/g;->r:[B

    invoke-static {v0}, Lc/e/a/a/o/I;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [B

    invoke-interface {p1, v0, p2}, Lc/e/a/a/d/o;->b([B[B)[B

    .line 35
    iget-object p1, p0, Lc/e/a/a/d/g;->f:Lc/e/a/a/o/l;

    sget-object p2, Lc/e/a/a/d/e;->a:Lc/e/a/a/d/e;

    invoke-virtual {p1, p2}, Lc/e/a/a/o/l;->a(Lc/e/a/a/o/l$a;)V

    goto :goto_0

    .line 36
    :cond_2
    iget-object p1, p0, Lc/e/a/a/d/g;->b:Lc/e/a/a/d/o;

    iget-object v0, p0, Lc/e/a/a/d/g;->q:[B

    invoke-interface {p1, v0, p2}, Lc/e/a/a/d/o;->b([B[B)[B

    move-result-object p1

    .line 37
    iget p2, p0, Lc/e/a/a/d/g;->d:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    iget p2, p0, Lc/e/a/a/d/g;->d:I

    if-nez p2, :cond_4

    iget-object p2, p0, Lc/e/a/a/d/g;->r:[B

    if-eqz p2, :cond_4

    :cond_3
    if-eqz p1, :cond_4

    array-length p2, p1

    if-eqz p2, :cond_4

    .line 38
    iput-object p1, p0, Lc/e/a/a/d/g;->r:[B

    :cond_4
    const/4 p1, 0x4

    .line 39
    iput p1, p0, Lc/e/a/a/d/g;->k:I

    .line 40
    iget-object p1, p0, Lc/e/a/a/d/g;->f:Lc/e/a/a/o/l;

    sget-object p2, Lc/e/a/a/d/f;->a:Lc/e/a/a/d/f;

    invoke-virtual {p1, p2}, Lc/e/a/a/o/l;->a(Lc/e/a/a/o/l$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p0, p1}, Lc/e/a/a/d/g;->b(Ljava/lang/Exception;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 7

    .line 6
    iget v0, p0, Lc/e/a/a/d/g;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lc/e/a/a/d/g;->r:[B

    invoke-static {v0}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lc/e/a/a/d/g;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 9
    iget-object v0, p0, Lc/e/a/a/d/g;->r:[B

    invoke-virtual {p0, v0, v1, p1}, Lc/e/a/a/d/g;->a([BIZ)V

    goto/16 :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lc/e/a/a/d/g;->r:[B

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lc/e/a/a/d/g;->q:[B

    invoke-virtual {p0, v0, v2, p1}, Lc/e/a/a/d/g;->a([BIZ)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lc/e/a/a/d/g;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 13
    iget-object v0, p0, Lc/e/a/a/d/g;->q:[B

    invoke-virtual {p0, v0, v2, p1}, Lc/e/a/a/d/g;->a([BIZ)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object v0, p0, Lc/e/a/a/d/g;->r:[B

    if-nez v0, :cond_4

    .line 15
    iget-object v0, p0, Lc/e/a/a/d/g;->q:[B

    invoke-virtual {p0, v0, v1, p1}, Lc/e/a/a/d/g;->a([BIZ)V

    goto :goto_0

    .line 16
    :cond_4
    iget v0, p0, Lc/e/a/a/d/g;->k:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lc/e/a/a/d/g;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 17
    :cond_5
    invoke-virtual {p0}, Lc/e/a/a/d/g;->e()J

    move-result-wide v3

    .line 18
    iget v0, p0, Lc/e/a/a/d/g;->d:I

    if-nez v0, :cond_6

    const-wide/16 v5, 0x3c

    cmp-long v0, v3, v5

    if-gtz v0, :cond_6

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultDrmSession"

    invoke-static {v1, v0}, Lc/e/a/a/o/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lc/e/a/a/d/g;->q:[B

    invoke-virtual {p0, v0, v2, p1}, Lc/e/a/a/d/g;->a([BIZ)V

    goto :goto_0

    :cond_6
    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-gtz p1, :cond_7

    .line 21
    new-instance p1, Lcom/google/android/exoplayer2/drm/KeysExpiredException;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/drm/KeysExpiredException;-><init>()V

    invoke-virtual {p0, p1}, Lc/e/a/a/d/g;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 22
    :cond_7
    iput v1, p0, Lc/e/a/a/d/g;->k:I

    .line 23
    iget-object p1, p0, Lc/e/a/a/d/g;->f:Lc/e/a/a/o/l;

    sget-object v0, Lc/e/a/a/d/e;->a:Lc/e/a/a/d/e;

    invoke-virtual {p1, v0}, Lc/e/a/a/o/l;->a(Lc/e/a/a/o/l$a;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public final a([BIZ)V
    .locals 3

    .line 24
    :try_start_0
    iget-object v0, p0, Lc/e/a/a/d/g;->b:Lc/e/a/a/d/o;

    iget-object v1, p0, Lc/e/a/a/d/g;->a:Ljava/util/List;

    iget-object v2, p0, Lc/e/a/a/d/g;->e:Ljava/util/HashMap;

    .line 25
    invoke-interface {v0, p1, v1, p2, v2}, Lc/e/a/a/d/o;->a([BLjava/util/List;ILjava/util/HashMap;)Lc/e/a/a/d/o$a;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/d/g;->s:Lc/e/a/a/d/o$a;

    .line 26
    iget-object p1, p0, Lc/e/a/a/d/g;->n:Lc/e/a/a/d/g$a;

    const/4 p2, 0x1

    iget-object v0, p0, Lc/e/a/a/d/g;->s:Lc/e/a/a/d/o$a;

    invoke-virtual {p1, p2, v0, p3}, Lc/e/a/a/d/g$a;->a(ILjava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p0, p1}, Lc/e/a/a/d/g;->b(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public a([B)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lc/e/a/a/d/g;->q:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public final b()Lc/e/a/a/d/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/e/a/a/d/g;->o:Lc/e/a/a/d/n;

    return-object v0
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 1

    .line 18
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_0

    .line 19
    iget-object p1, p0, Lc/e/a/a/d/g;->c:Lc/e/a/a/d/g$c;

    invoke-interface {p1, p0}, Lc/e/a/a/d/g$c;->a(Lc/e/a/a/d/g;)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Lc/e/a/a/d/g;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lc/e/a/a/d/g;->t:Lc/e/a/a/d/o$b;

    if-ne p1, v0, :cond_2

    iget p1, p0, Lc/e/a/a/d/g;->k:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lc/e/a/a/d/g;->f()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lc/e/a/a/d/g;->t:Lc/e/a/a/d/o$b;

    .line 13
    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Lc/e/a/a/d/g;->c:Lc/e/a/a/d/g$c;

    check-cast p2, Ljava/lang/Exception;

    invoke-interface {p1, p2}, Lc/e/a/a/d/g$c;->a(Ljava/lang/Exception;)V

    return-void

    .line 15
    :cond_1
    :try_start_0
    iget-object p1, p0, Lc/e/a/a/d/g;->b:Lc/e/a/a/d/o;

    check-cast p2, [B

    invoke-interface {p1, p2}, Lc/e/a/a/d/o;->d([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    iget-object p1, p0, Lc/e/a/a/d/g;->c:Lc/e/a/a/d/g$c;

    invoke-interface {p1}, Lc/e/a/a/d/g$c;->a()V

    return-void

    :catch_0
    move-exception p1

    .line 17
    iget-object p2, p0, Lc/e/a/a/d/g;->c:Lc/e/a/a/d/g$c;

    invoke-interface {p2, p1}, Lc/e/a/a/d/g$c;->a(Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final b(Z)Z
    .locals 3

    .line 3
    invoke-virtual {p0}, Lc/e/a/a/d/g;->f()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lc/e/a/a/d/g;->b:Lc/e/a/a/d/o;

    invoke-interface {v0}, Lc/e/a/a/d/o;->b()[B

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/d/g;->q:[B

    .line 5
    iget-object v0, p0, Lc/e/a/a/d/g;->f:Lc/e/a/a/o/l;

    sget-object v2, Lc/e/a/a/d/d;->a:Lc/e/a/a/d/d;

    invoke-virtual {v0, v2}, Lc/e/a/a/o/l;->a(Lc/e/a/a/o/l$a;)V

    .line 6
    iget-object v0, p0, Lc/e/a/a/d/g;->b:Lc/e/a/a/d/o;

    iget-object v2, p0, Lc/e/a/a/d/g;->q:[B

    invoke-interface {v0, v2}, Lc/e/a/a/d/o;->b([B)Lc/e/a/a/d/n;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/d/g;->o:Lc/e/a/a/d/n;

    const/4 v0, 0x3

    .line 7
    iput v0, p0, Lc/e/a/a/d/g;->k:I
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p0, p1}, Lc/e/a/a/d/g;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lc/e/a/a/d/g;->c:Lc/e/a/a/d/g$c;

    invoke-interface {p1, p0}, Lc/e/a/a/d/g$c;->a(Lc/e/a/a/d/g;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0, v0}, Lc/e/a/a/d/g;->a(Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    .locals 2

    .line 2
    iget v0, p0, Lc/e/a/a/d/g;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lc/e/a/a/d/g;->p:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/e/a/a/d/g;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/a/d/g;->l:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lc/e/a/a/d/g;->l:I

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lc/e/a/a/d/g;->k:I

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Lc/e/a/a/d/g;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lc/e/a/a/d/g;->a(Z)V

    :cond_1
    return-void
.end method

.method public final e()J
    .locals 5

    .line 1
    sget-object v0, Lc/e/a/a/q;->d:Ljava/util/UUID;

    iget-object v1, p0, Lc/e/a/a/d/g;->i:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 2
    :cond_0
    invoke-static {p0}, Lc/e/a/a/d/r;->a(Lcom/google/android/exoplayer2/drm/DrmSession;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 3
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/a/d/g;->k:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final g()V
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/a/d/g;->d:I

    if-nez v0, :cond_0

    iget v0, p0, Lc/e/a/a/d/g;->k:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/d/g;->q:[B

    invoke-static {v0}, Lc/e/a/a/o/I;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lc/e/a/a/d/g;->a(Z)V

    :cond_0
    return-void
.end method

.method public final getState()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/d/g;->k:I

    return v0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lc/e/a/a/d/g;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lc/e/a/a/d/g;->a(Z)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/a/d/g;->b:Lc/e/a/a/d/o;

    invoke-interface {v0}, Lc/e/a/a/d/o;->a()Lc/e/a/a/d/o$b;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/d/g;->t:Lc/e/a/a/d/o$b;

    .line 2
    iget-object v0, p0, Lc/e/a/a/d/g;->n:Lc/e/a/a/d/g$a;

    iget-object v1, p0, Lc/e/a/a/d/g;->t:Lc/e/a/a/d/o$b;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lc/e/a/a/d/g$a;->a(ILjava/lang/Object;Z)V

    return-void
.end method

.method public j()Z
    .locals 4

    .line 1
    iget v0, p0, Lc/e/a/a/d/g;->l:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lc/e/a/a/d/g;->l:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2
    iput v2, p0, Lc/e/a/a/d/g;->k:I

    .line 3
    iget-object v0, p0, Lc/e/a/a/d/g;->j:Lc/e/a/a/d/g$b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lc/e/a/a/d/g;->n:Lc/e/a/a/d/g$a;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iput-object v2, p0, Lc/e/a/a/d/g;->n:Lc/e/a/a/d/g$a;

    .line 6
    iget-object v0, p0, Lc/e/a/a/d/g;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 7
    iput-object v2, p0, Lc/e/a/a/d/g;->m:Landroid/os/HandlerThread;

    .line 8
    iput-object v2, p0, Lc/e/a/a/d/g;->o:Lc/e/a/a/d/n;

    .line 9
    iput-object v2, p0, Lc/e/a/a/d/g;->p:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 10
    iput-object v2, p0, Lc/e/a/a/d/g;->s:Lc/e/a/a/d/o$a;

    .line 11
    iput-object v2, p0, Lc/e/a/a/d/g;->t:Lc/e/a/a/d/o$b;

    .line 12
    iget-object v0, p0, Lc/e/a/a/d/g;->q:[B

    if-eqz v0, :cond_0

    .line 13
    iget-object v3, p0, Lc/e/a/a/d/g;->b:Lc/e/a/a/d/o;

    invoke-interface {v3, v0}, Lc/e/a/a/d/o;->c([B)V

    .line 14
    iput-object v2, p0, Lc/e/a/a/d/g;->q:[B

    .line 15
    iget-object v0, p0, Lc/e/a/a/d/g;->f:Lc/e/a/a/o/l;

    sget-object v2, Lc/e/a/a/d/a;->a:Lc/e/a/a/d/a;

    invoke-virtual {v0, v2}, Lc/e/a/a/o/l;->a(Lc/e/a/a/o/l$a;)V

    :cond_0
    return v1

    :cond_1
    return v2
.end method

.method public final k()Z
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/e/a/a/d/g;->b:Lc/e/a/a/d/o;

    iget-object v1, p0, Lc/e/a/a/d/g;->q:[B

    iget-object v2, p0, Lc/e/a/a/d/g;->r:[B

    invoke-interface {v0, v1, v2}, Lc/e/a/a/d/o;->a([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "DefaultDrmSession"

    const-string v2, "Error trying to restore Widevine keys."

    .line 2
    invoke-static {v1, v2, v0}, Lc/e/a/a/o/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {p0, v0}, Lc/e/a/a/d/g;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method
