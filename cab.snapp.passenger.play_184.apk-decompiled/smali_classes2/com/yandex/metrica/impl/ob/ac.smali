.class public Lcom/yandex/metrica/impl/ob/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ai;
.implements Lcom/yandex/metrica/impl/ob/ak;
.implements Lcom/yandex/metrica/impl/ob/fn;
.implements Lcom/yandex/metrica/impl/ob/lx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/yandex/metrica/impl/ob/ay;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/ai<",
        "TC;>;",
        "Lcom/yandex/metrica/impl/ob/ak;",
        "Lcom/yandex/metrica/impl/ob/fn;",
        "Lcom/yandex/metrica/impl/ob/lx;"
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Landroid/os/HandlerThread;

.field private final c:Landroid/os/Handler;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/yandex/metrica/impl/ob/z;

.field private f:Lcom/yandex/metrica/impl/ob/gd;

.field private g:Lcom/yandex/metrica/impl/ob/gf;

.field private h:Lcom/yandex/metrica/impl/ob/gb;

.field private i:Lcom/yandex/metrica/impl/bh;

.field private j:Lcom/yandex/metrica/impl/ob/fo;

.field private k:Lcom/yandex/metrica/impl/ob/ca;

.field private final l:Lcom/yandex/metrica/impl/ob/bx;

.field private m:Lcom/yandex/metrica/impl/b;

.field private n:Lcom/yandex/metrica/impl/ob/v;

.field private o:Lcom/yandex/metrica/impl/ob/od;

.field private p:J

.field private q:J

.field private r:I

.field private s:I

.field private volatile t:Lcom/yandex/metrica/impl/ob/ej;

.field private final u:Lcom/yandex/metrica/impl/ob/nk;

.field private final v:Lcom/yandex/metrica/impl/ob/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/aa<",
            "TC;>;"
        }
    .end annotation
.end field

.field private w:Lcom/yandex/metrica/impl/ob/ls;

.field private x:Lcom/yandex/metrica/impl/ob/mb;

.field private y:Lcom/yandex/metrica/impl/ob/at;

.field private z:Lcom/yandex/metrica/impl/ob/dw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ls;Lcom/yandex/metrica/impl/an;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/v;Lcom/yandex/metrica/impl/ob/at$a;Lcom/yandex/metrica/impl/ob/md;)V
    .locals 10

    .line 120
    new-instance v7, Lcom/yandex/metrica/impl/ob/od;

    move-object v1, p1

    invoke-direct {v7, p1}, Lcom/yandex/metrica/impl/ob/od;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/yandex/metrica/impl/ob/ac;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ls;Lcom/yandex/metrica/impl/an;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/v;Lcom/yandex/metrica/impl/ob/od;Lcom/yandex/metrica/impl/ob/at$a;Lcom/yandex/metrica/impl/ob/md;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ls;Lcom/yandex/metrica/impl/an;Lcom/yandex/metrica/impl/ob/z;Lcom/yandex/metrica/impl/ob/t;Lcom/yandex/metrica/impl/ob/v;Lcom/yandex/metrica/impl/ob/od;Lcom/yandex/metrica/impl/ob/at$a;Lcom/yandex/metrica/impl/ob/md;)V
    .locals 3

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ac;->a:Z

    .line 95
    new-instance v1, Lcom/yandex/metrica/impl/ob/nk;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/nk;-><init>()V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/ac;->u:Lcom/yandex/metrica/impl/ob/nk;

    .line 97
    new-instance v1, Lcom/yandex/metrica/impl/ob/aa;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/aa;-><init>()V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/ac;->v:Lcom/yandex/metrica/impl/ob/aa;

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/ac;->d:Landroid/content/Context;

    .line 146
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/ac;->e:Lcom/yandex/metrica/impl/ob/z;

    .line 147
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/ac;->o:Lcom/yandex/metrica/impl/ob/od;

    .line 1252
    iget-object p7, p0, Lcom/yandex/metrica/impl/ob/ac;->d:Landroid/content/Context;

    .line 1253
    invoke-static {p7}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object p7

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ac;->e:Lcom/yandex/metrica/impl/ob/z;

    invoke-virtual {p7, v1}, Lcom/yandex/metrica/impl/ob/fq;->b(Lcom/yandex/metrica/impl/ob/z;)Lcom/yandex/metrica/impl/ob/fr;

    move-result-object p7

    .line 1254
    new-instance v1, Lcom/yandex/metrica/impl/ob/gd;

    invoke-direct {v1, p7}, Lcom/yandex/metrica/impl/ob/gd;-><init>(Lcom/yandex/metrica/impl/ob/fr;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/ac;->f:Lcom/yandex/metrica/impl/ob/gd;

    .line 1255
    new-instance v1, Lcom/yandex/metrica/impl/ob/gb;

    invoke-direct {v1, p7}, Lcom/yandex/metrica/impl/ob/gb;-><init>(Lcom/yandex/metrica/impl/ob/fr;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/ac;->h:Lcom/yandex/metrica/impl/ob/gb;

    .line 1247
    iget-object p7, p0, Lcom/yandex/metrica/impl/ob/ac;->d:Landroid/content/Context;

    invoke-static {p7}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object p7

    .line 1248
    new-instance v1, Lcom/yandex/metrica/impl/ob/gf;

    invoke-virtual {p7}, Lcom/yandex/metrica/impl/ob/fq;->c()Lcom/yandex/metrica/impl/ob/fr;

    move-result-object p7

    invoke-direct {v1, p7}, Lcom/yandex/metrica/impl/ob/gf;-><init>(Lcom/yandex/metrica/impl/ob/fr;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/ac;->g:Lcom/yandex/metrica/impl/ob/gf;

    .line 151
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ac;->w:Lcom/yandex/metrica/impl/ob/ls;

    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/ac;->w:Lcom/yandex/metrica/impl/ob/ls;

    invoke-virtual {p2, p0, p5}, Lcom/yandex/metrica/impl/ob/ls;->d(Lcom/yandex/metrica/impl/ob/ah;Lcom/yandex/metrica/impl/ob/t;)Lcom/yandex/metrica/impl/ob/mb;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ac;->x:Lcom/yandex/metrica/impl/ob/mb;

    .line 155
    new-instance p2, Lcom/yandex/metrica/impl/ob/at;

    new-instance p7, Lcom/yandex/metrica/impl/ob/le$b;

    invoke-direct {p7, p0}, Lcom/yandex/metrica/impl/ob/le$b;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ac;->x:Lcom/yandex/metrica/impl/ob/mb;

    .line 158
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/mb;->f()Lcom/yandex/metrica/impl/ob/ma;

    move-result-object v1

    invoke-direct {p2, p7, p8, v1, p5}, Lcom/yandex/metrica/impl/ob/at;-><init>(Lcom/yandex/metrica/impl/ob/le$b;Lcom/yandex/metrica/impl/ob/at$a;Lcom/yandex/metrica/impl/ob/ma;Lcom/yandex/metrica/impl/ob/t;)V

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ac;->y:Lcom/yandex/metrica/impl/ob/at;

    .line 161
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1557
    invoke-static {}, Lcom/yandex/metrica/YandexMetrica;->getLibraryApiLevel()I

    move-result p2

    .line 1558
    iget-object p5, p0, Lcom/yandex/metrica/impl/ob/ac;->f:Lcom/yandex/metrica/impl/ob/gd;

    invoke-virtual {p5}, Lcom/yandex/metrica/impl/ob/gd;->d()J

    move-result-wide p7

    int-to-long v1, p2

    cmp-long p2, p7, v1

    if-gez p2, :cond_0

    .line 1559
    new-instance p2, Lcom/yandex/metrica/impl/ob/iv;

    .line 1560
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->B()Lcom/yandex/metrica/impl/ob/iw;

    move-result-object p5

    invoke-direct {p2, p5}, Lcom/yandex/metrica/impl/ob/iv;-><init>(Lcom/yandex/metrica/impl/ob/iw;)V

    .line 1561
    new-instance p5, Lcom/yandex/metrica/impl/ob/ab;

    invoke-direct {p5, p0, p2}, Lcom/yandex/metrica/impl/ob/ab;-><init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/iv;)V

    invoke-virtual {p5}, Lcom/yandex/metrica/impl/ob/ab;->a()V

    .line 1562
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/ac;->f:Lcom/yandex/metrica/impl/ob/gd;

    invoke-virtual {p2, v1, v2}, Lcom/yandex/metrica/impl/ob/gd;->e(J)Lcom/yandex/metrica/impl/ob/gd;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/metrica/impl/ob/gd;->i()V

    .line 165
    :cond_0
    new-instance p2, Lcom/yandex/metrica/impl/ob/fo;

    iget-object p5, p0, Lcom/yandex/metrica/impl/ob/ac;->d:Landroid/content/Context;

    .line 166
    invoke-static {p5}, Lcom/yandex/metrica/impl/ob/fq;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/fq;

    move-result-object p5

    iget-object p7, p0, Lcom/yandex/metrica/impl/ob/ac;->e:Lcom/yandex/metrica/impl/ob/z;

    invoke-virtual {p5, p7}, Lcom/yandex/metrica/impl/ob/fq;->a(Lcom/yandex/metrica/impl/ob/z;)Lcom/yandex/metrica/impl/ob/fp;

    move-result-object p5

    invoke-direct {p2, p0, p5}, Lcom/yandex/metrica/impl/ob/fo;-><init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/fp;)V

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ac;->j:Lcom/yandex/metrica/impl/ob/fo;

    .line 168
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/ac;->f:Lcom/yandex/metrica/impl/ob/gd;

    const-wide/16 p7, 0x0

    invoke-virtual {p2, p7, p8}, Lcom/yandex/metrica/impl/ob/gd;->a(J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/yandex/metrica/impl/ob/ac;->p:J

    .line 169
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/ac;->f:Lcom/yandex/metrica/impl/ob/gd;

    .line 170
    invoke-virtual {p2, p7, p8}, Lcom/yandex/metrica/impl/ob/gd;->b(J)J

    move-result-wide p7

    iput-wide p7, p0, Lcom/yandex/metrica/impl/ob/ac;->q:J

    .line 171
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/ac;->f:Lcom/yandex/metrica/impl/ob/gd;

    const/4 p5, -0x1

    invoke-virtual {p2, p5}, Lcom/yandex/metrica/impl/ob/gd;->a(I)I

    move-result p2

    iput p2, p0, Lcom/yandex/metrica/impl/ob/ac;->r:I

    .line 172
    invoke-virtual {p4}, Lcom/yandex/metrica/impl/ob/z;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/bv;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yandex/metrica/impl/ob/ac;->s:I

    .line 174
    new-instance p1, Lcom/yandex/metrica/impl/ob/ej;

    new-instance p2, Lcom/yandex/metrica/impl/ob/ac$1;

    invoke-direct {p2, p0}, Lcom/yandex/metrica/impl/ob/ac$1;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    invoke-direct {p1, p0, p2}, Lcom/yandex/metrica/impl/ob/ej;-><init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/ej$a;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ac;->t:Lcom/yandex/metrica/impl/ob/ej;

    .line 180
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/ac;->n:Lcom/yandex/metrica/impl/ob/v;

    .line 181
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ac;->n:Lcom/yandex/metrica/impl/ob/v;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/ac;->f:Lcom/yandex/metrica/impl/ob/gd;

    invoke-virtual {p1, p0, p2}, Lcom/yandex/metrica/impl/ob/v;->a(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/gd;)Lcom/yandex/metrica/impl/b;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ac;->m:Lcom/yandex/metrica/impl/b;

    .line 182
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->n()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->n()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget-object p5, p0, Lcom/yandex/metrica/impl/ob/ac;->e:Lcom/yandex/metrica/impl/ob/z;

    invoke-virtual {p5}, Lcom/yandex/metrica/impl/ob/z;->toString()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p2, v0

    const/4 p5, 0x1

    iget-object p6, p0, Lcom/yandex/metrica/impl/ob/ac;->m:Lcom/yandex/metrica/impl/b;

    .line 184
    invoke-virtual {p6}, Lcom/yandex/metrica/impl/b;->b()Lcom/yandex/metrica/impl/b$a;

    move-result-object p6

    iget-object p6, p6, Lcom/yandex/metrica/impl/b$a;->a:Ljava/lang/String;

    aput-object p6, p2, p5

    const-string p5, "Read app environment for component %s. Value: %s"

    .line 183
    invoke-virtual {p1, p5, p2}, Lcom/yandex/metrica/impl/ob/nk;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    :cond_1
    new-instance p1, Lcom/yandex/metrica/impl/ob/dw;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/ac;->d:Landroid/content/Context;

    iget-object p5, p0, Lcom/yandex/metrica/impl/ob/ac;->e:Lcom/yandex/metrica/impl/ob/z;

    iget p6, p0, Lcom/yandex/metrica/impl/ob/ac;->s:I

    invoke-direct {p1, p2, p5, p6}, Lcom/yandex/metrica/impl/ob/dw;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/z;I)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ac;->z:Lcom/yandex/metrica/impl/ob/dw;

    .line 193
    invoke-virtual {p4}, Lcom/yandex/metrica/impl/ob/z;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ni;->b(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ac;->b:Landroid/os/HandlerThread;

    .line 194
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ac;->b:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 195
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/ac;->b:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ac;->c:Landroid/os/Handler;

    .line 197
    new-instance p1, Lcom/yandex/metrica/impl/bh;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/ac;->w:Lcom/yandex/metrica/impl/ob/ls;

    .line 199
    invoke-interface {p9, p0, p2}, Lcom/yandex/metrica/impl/ob/md;->a(Lcom/yandex/metrica/impl/ob/ai;Lcom/yandex/metrica/impl/ob/ls;)Lcom/yandex/metrica/impl/ob/mg;

    move-result-object p2

    invoke-direct {p1, p0, p2, p3}, Lcom/yandex/metrica/impl/bh;-><init>(Lcom/yandex/metrica/impl/ob/ac;Lcom/yandex/metrica/impl/ob/mg;Lcom/yandex/metrica/impl/an;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ac;->i:Lcom/yandex/metrica/impl/bh;

    .line 202
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ac;->j:Lcom/yandex/metrica/impl/ob/fo;

    invoke-virtual {p1, p0}, Lcom/yandex/metrica/impl/ob/fo;->a(Lcom/yandex/metrica/impl/ob/fn;)V

    .line 204
    new-instance p1, Lcom/yandex/metrica/impl/ob/bx;

    invoke-direct {p1, p0}, Lcom/yandex/metrica/impl/ob/bx;-><init>(Lcom/yandex/metrica/impl/ob/ac;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ac;->l:Lcom/yandex/metrica/impl/ob/bx;

    .line 205
    new-instance p1, Lcom/yandex/metrica/impl/ob/ca;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/ac;->l:Lcom/yandex/metrica/impl/ob/bx;

    invoke-direct {p1, p2}, Lcom/yandex/metrica/impl/ob/ca;-><init>(Lcom/yandex/metrica/impl/ob/bz;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ac;->k:Lcom/yandex/metrica/impl/ob/ca;

    return-void

    :catchall_0
    move-exception p1

    .line 161
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private I()V
    .locals 4

    .line 4028
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 470
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ac;->q:J

    .line 471
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->f:Lcom/yandex/metrica/impl/ob/gd;

    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/ac;->q:J

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/gd;->d(J)Lcom/yandex/metrica/impl/ob/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/gd;->i()V

    return-void
.end method


# virtual methods
.method public A()Lcom/yandex/metrica/impl/ob/gb;
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->h:Lcom/yandex/metrica/impl/ob/gb;

    return-object v0
.end method

.method public final B()Lcom/yandex/metrica/impl/ob/iw;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 518
    new-instance v0, Lcom/yandex/metrica/impl/ob/iw;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ac;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ac;->e:Lcom/yandex/metrica/impl/ob/z;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/z;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/iw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public C()Lcom/yandex/metrica/impl/ob/gd;
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->f:Lcom/yandex/metrica/impl/ob/gd;

    return-object v0
.end method

.method public D()Z
    .locals 3

    .line 6539
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->g:Lcom/yandex/metrica/impl/ob/gf;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/gf;->a()Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v0

    .line 6543
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ac;->f:Lcom/yandex/metrica/impl/ob/gd;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/gd;->c()Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v1

    .line 529
    sget-object v2, Lcom/yandex/metrica/CounterConfiguration$a;->c:Lcom/yandex/metrica/CounterConfiguration$a;

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/yandex/metrica/CounterConfiguration$a;->c:Lcom/yandex/metrica/CounterConfiguration$a;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()Z
    .locals 4

    .line 547
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->h:Lcom/yandex/metrica/impl/ob/gb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gb;->b(Z)Z

    move-result v0

    .line 548
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ac;->y:Lcom/yandex/metrica/impl/ob/at;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/at;->c()Lcom/yandex/metrica/impl/ob/ma;

    move-result-object v2

    iget-boolean v2, v2, Lcom/yandex/metrica/impl/ob/ma;->t:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v3

    :cond_1
    return v1
.end method

.method public F()Lcom/yandex/metrica/impl/ob/gd;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->f:Lcom/yandex/metrica/impl/ob/gd;

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->f:Lcom/yandex/metrica/impl/ob/gd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/gd;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public H()Lcom/yandex/metrica/impl/ob/dw;
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->z:Lcom/yandex/metrica/impl/ob/dw;

    return-object v0
.end method

.method public a()Lcom/yandex/metrica/impl/ob/t;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->y:Lcom/yandex/metrica/impl/ob/at;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/at;->a()Lcom/yandex/metrica/impl/ob/t;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/CounterConfiguration$a;)V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->f:Lcom/yandex/metrica/impl/ob/gd;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/gd;->a(Lcom/yandex/metrica/CounterConfiguration$a;)Lcom/yandex/metrica/impl/ob/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/gd;->i()V

    .line 2406
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2407
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ac;->e:Lcom/yandex/metrica/impl/ob/z;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/z;->b()Ljava/lang/String;

    move-result-object v1

    .line 2409
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->g:Lcom/yandex/metrica/impl/ob/gf;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/gf;->a(Lcom/yandex/metrica/CounterConfiguration$a;)Lcom/yandex/metrica/impl/ob/gf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/gf;->i()V

    :cond_0
    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/i;)V
    .locals 2

    .line 231
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->n()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->n()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    const-string v1, "Event received on service"

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/nk;->a(Lcom/yandex/metrica/impl/i;Ljava/lang/String;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->e:Lcom/yandex/metrica/impl/ob/z;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/z;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/bv;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->k:Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ca;->b(Lcom/yandex/metrica/impl/i;)Z

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/ek;)V
    .locals 0

    .line 273
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/ac;->b(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/ek;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/lu;)V
    .locals 0

    monitor-enter p0

    .line 370
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/ma;)V
    .locals 1

    monitor-enter p0

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->y:Lcom/yandex/metrica/impl/ob/at;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/at;->a(Lcom/yandex/metrica/impl/ob/ma;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/yandex/metrica/impl/ob/t;)V
    .locals 1

    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->y:Lcom/yandex/metrica/impl/ob/at;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/at;->a(Lcom/yandex/metrica/impl/ob/t;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->f:Lcom/yandex/metrica/impl/ob/gd;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/gd;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/gd;->i()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 553
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/ac;->a:Z

    return-void
.end method

.method public b()Lcom/yandex/metrica/impl/ob/z;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->e:Lcom/yandex/metrica/impl/ob/z;

    return-object v0
.end method

.method public b(Lcom/yandex/metrica/impl/i;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->t:Lcom/yandex/metrica/impl/ob/ej;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ej;->b()Lcom/yandex/metrica/impl/ob/ek;

    move-result-object v0

    .line 260
    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/ac;->b(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/ek;)V

    return-void
.end method

.method b(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/ek;)V
    .locals 3

    .line 278
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/i;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/i;->d(Ljava/lang/String;)Lcom/yandex/metrica/impl/i;

    .line 282
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->m:Lcom/yandex/metrica/impl/b;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/b;->b()Lcom/yandex/metrica/impl/b$a;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ac;->o:Lcom/yandex/metrica/impl/ob/od;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/od;->a(Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/ob/oc;

    move-result-object v1

    .line 284
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ac;->j:Lcom/yandex/metrica/impl/ob/fo;

    invoke-interface {v1, p1}, Lcom/yandex/metrica/impl/ob/oc;->a(Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/ob/ob;

    move-result-object p1

    invoke-virtual {v2, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/fo;->a(Lcom/yandex/metrica/impl/ob/ob;Lcom/yandex/metrica/impl/ob/ek;Lcom/yandex/metrica/impl/b$a;)V

    .line 285
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ac;->i:Lcom/yandex/metrica/impl/bh;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/bh;->b()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->f:Lcom/yandex/metrica/impl/ob/gd;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/gd;->e(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/gd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/gd;->i()V

    return-void
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->d:Landroid/content/Context;

    return-object v0
.end method

.method public c(Lcom/yandex/metrica/impl/i;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->t:Lcom/yandex/metrica/impl/ob/ej;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ej;->c(Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/ob/ee;

    return-void
.end method

.method public d(Lcom/yandex/metrica/impl/i;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->t:Lcom/yandex/metrica/impl/ob/ej;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/ej;->d(Lcom/yandex/metrica/impl/i;)Lcom/yandex/metrica/impl/ob/ek;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/ac;->b(Lcom/yandex/metrica/impl/i;Lcom/yandex/metrica/impl/ob/ek;)V

    return-void
.end method

.method public declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->v:Lcom/yandex/metrica/impl/ob/aa;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/aa;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Lcom/yandex/metrica/impl/ob/lx;
    .locals 0

    return-object p0
.end method

.method public e(Lcom/yandex/metrica/impl/i;)V
    .locals 1

    const/4 v0, 0x1

    .line 413
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/ac;->a(Z)V

    .line 414
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ac;->d(Lcom/yandex/metrica/impl/i;)V

    .line 415
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->r()V

    return-void
.end method

.method public f()Lcom/yandex/metrica/impl/ob/ej;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->t:Lcom/yandex/metrica/impl/ob/ej;

    return-object v0
.end method

.method public f(Lcom/yandex/metrica/impl/i;)V
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ac;->d(Lcom/yandex/metrica/impl/i;)V

    .line 420
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ac;->I()V

    return-void
.end method

.method protected g()Lcom/yandex/metrica/impl/ob/bx;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->l:Lcom/yandex/metrica/impl/ob/bx;

    return-object v0
.end method

.method public g(Lcom/yandex/metrica/impl/i;)V
    .locals 0

    .line 424
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ac;->d(Lcom/yandex/metrica/impl/i;)V

    .line 425
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->u()V

    return-void
.end method

.method public h()V
    .locals 6

    .line 296
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->j:Lcom/yandex/metrica/impl/ob/fo;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fo;->a()J

    move-result-wide v0

    .line 297
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ac;->y:Lcom/yandex/metrica/impl/ob/at;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/at;->e()Lcom/yandex/metrica/impl/ob/kz;

    move-result-object v2

    check-cast v2, Lcom/yandex/metrica/impl/ob/le;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/le;->R()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 300
    :goto_0
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/ac;->a:Z

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->i()V

    .line 304
    iput-boolean v4, p0, Lcom/yandex/metrica/impl/ob/ac;->a:Z

    :cond_1
    return-void
.end method

.method public h(Lcom/yandex/metrica/impl/i;)V
    .locals 4

    .line 437
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->m:Lcom/yandex/metrica/impl/b;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/i;->l()Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/b;->a(Landroid/util/Pair;)V

    .line 438
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ac;->m:Lcom/yandex/metrica/impl/b;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/b;->b()Lcom/yandex/metrica/impl/b$a;

    move-result-object p1

    .line 439
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->n:Lcom/yandex/metrica/impl/ob/v;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ac;->f:Lcom/yandex/metrica/impl/ob/gd;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/v;->a(Lcom/yandex/metrica/impl/b$a;Lcom/yandex/metrica/impl/ob/gd;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->n()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->n()Lcom/yandex/metrica/impl/ob/nk;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->b()Lcom/yandex/metrica/impl/ob/z;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object p1, p1, Lcom/yandex/metrica/impl/b$a;->a:Ljava/lang/String;

    aput-object p1, v1, v2

    const-string p1, "Save new app environment for %s. Value: %s"

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/nk;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized i()V
    .locals 1

    monitor-enter p0

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->i:Lcom/yandex/metrica/impl/bh;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bh;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->f:Lcom/yandex/metrica/impl/ob/gd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/yandex/metrica/impl/ob/le;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->y:Lcom/yandex/metrica/impl/ob/at;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/at;->e()Lcom/yandex/metrica/impl/ob/kz;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/le;

    return-object v0
.end method

.method public l()Lcom/yandex/metrica/impl/ob/fo;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->j:Lcom/yandex/metrica/impl/ob/fo;

    return-object v0
.end method

.method public m()Landroid/os/Handler;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public n()Lcom/yandex/metrica/impl/ob/nk;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->u:Lcom/yandex/metrica/impl/ob/nk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/nk;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->y:Lcom/yandex/metrica/impl/ob/at;

    .line 395
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/at;->e()Lcom/yandex/metrica/impl/ob/kz;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/le;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->u:Lcom/yandex/metrica/impl/ob/nk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/nk;->a()V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->u:Lcom/yandex/metrica/impl/ob/nk;

    return-object v0
.end method

.method public o()V
    .locals 0

    .line 429
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/ac;->I()V

    return-void
.end method

.method public p()V
    .locals 0

    .line 433
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->u()V

    return-void
.end method

.method public q()V
    .locals 3

    .line 447
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->m:Lcom/yandex/metrica/impl/b;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/b;->a()V

    .line 448
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->n:Lcom/yandex/metrica/impl/ob/v;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ac;->m:Lcom/yandex/metrica/impl/b;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/b;->b()Lcom/yandex/metrica/impl/b$a;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ac;->f:Lcom/yandex/metrica/impl/ob/gd;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/v;->b(Lcom/yandex/metrica/impl/b$a;Lcom/yandex/metrica/impl/ob/gd;)V

    return-void
.end method

.method public r()V
    .locals 4

    .line 3028
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 456
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ac;->p:J

    .line 457
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->f:Lcom/yandex/metrica/impl/ob/gd;

    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/ac;->p:J

    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/gd;->c(J)Lcom/yandex/metrica/impl/ob/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/gd;->i()V

    return-void
.end method

.method public s()V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->f:Lcom/yandex/metrica/impl/ob/gd;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->t()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gd;->c(I)Lcom/yandex/metrica/impl/ob/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/gd;->i()V

    .line 462
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->y:Lcom/yandex/metrica/impl/ob/at;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/at;->b()V

    return-void
.end method

.method public t()I
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->f:Lcom/yandex/metrica/impl/ob/gd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gd;->d(I)I

    move-result v0

    return v0
.end method

.method u()V
    .locals 2

    .line 476
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ac;->s:I

    iput v0, p0, Lcom/yandex/metrica/impl/ob/ac;->r:I

    .line 477
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ac;->f:Lcom/yandex/metrica/impl/ob/gd;

    iget v1, p0, Lcom/yandex/metrica/impl/ob/ac;->r:I

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/gd;->b(I)Lcom/yandex/metrica/impl/ob/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/gd;->i()V

    return-void
.end method

.method v()Z
    .locals 5

    .line 5028
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 487
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/ac;->q:J

    sub-long/2addr v0, v2

    .line 488
    sget-wide v2, Lcom/yandex/metrica/impl/ob/eh;->b:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method w()Z
    .locals 2

    .line 493
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ac;->r:I

    iget v1, p0, Lcom/yandex/metrica/impl/ob/ac;->s:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public x()Z
    .locals 7

    .line 6028
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 5481
    iget-wide v2, p0, Lcom/yandex/metrica/impl/ob/ac;->p:J

    sub-long/2addr v0, v2

    .line 5482
    sget-wide v2, Lcom/yandex/metrica/impl/ob/eh;->a:J

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->k()Lcom/yandex/metrica/impl/ob/le;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :cond_1
    return v5
.end method

.method public y()Z
    .locals 1

    .line 501
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->k()Lcom/yandex/metrica/impl/ob/le;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->k()Lcom/yandex/metrica/impl/ob/le;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public z()Z
    .locals 1

    .line 507
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->k()Lcom/yandex/metrica/impl/ob/le;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ac;->k()Lcom/yandex/metrica/impl/ob/le;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/le;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
