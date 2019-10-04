.class public final Lc/e/a/b/h/b/Jb;
.super Lc/e/a/b/h/b/zb;


# instance fields
.field public c:Landroid/os/Handler;

.field public d:J

.field public e:J

.field public final f:Lc/e/a/b/h/b/c;

.field public final g:Lc/e/a/b/h/b/c;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Y;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lc/e/a/b/h/b/zb;-><init>(Lc/e/a/b/h/b/Y;)V

    .line 2
    new-instance p1, Lc/e/a/b/h/b/Kb;

    iget-object v0, p0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    invoke-direct {p1, p0, v0}, Lc/e/a/b/h/b/Kb;-><init>(Lc/e/a/b/h/b/Jb;Lc/e/a/b/h/b/wa;)V

    iput-object p1, p0, Lc/e/a/b/h/b/Jb;->f:Lc/e/a/b/h/b/c;

    .line 3
    new-instance p1, Lc/e/a/b/h/b/Lb;

    iget-object v0, p0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    invoke-direct {p1, p0, v0}, Lc/e/a/b/h/b/Lb;-><init>(Lc/e/a/b/h/b/Jb;Lc/e/a/b/h/b/wa;)V

    iput-object p1, p0, Lc/e/a/b/h/b/Jb;->g:Lc/e/a/b/h/b/c;

    .line 4
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->c()Lc/e/a/b/d/g/e;

    move-result-object p1

    invoke-interface {p1}, Lc/e/a/b/d/g/e;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lc/e/a/b/h/b/Jb;->d:J

    .line 5
    iget-wide v0, p0, Lc/e/a/b/h/b/Jb;->d:J

    iput-wide v0, p0, Lc/e/a/b/h/b/Jb;->e:J

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/h/b/Jb;)V
    .locals 0

    .line 65
    invoke-virtual {p0}, Lc/e/a/b/h/b/Jb;->F()V

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/h/b/Jb;J)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1, p2}, Lc/e/a/b/h/b/Jb;->a(J)V

    return-void
.end method

.method public static synthetic b(Lc/e/a/b/h/b/Jb;J)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lc/e/a/b/h/b/Jb;->c(J)V

    return-void
.end method


# virtual methods
.method public final B()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc/e/a/b/h/b/Jb;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lc/e/a/b/g/f/ad;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/e/a/b/g/f/ad;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc/e/a/b/h/b/Jb;->c:Landroid/os/Handler;

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final C()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Jb;->f:Lc/e/a/b/h/b/c;

    invoke-virtual {v0}, Lc/e/a/b/h/b/c;->a()V

    .line 3
    iget-object v0, p0, Lc/e/a/b/h/b/Jb;->g:Lc/e/a/b/h/b/c;

    invoke-virtual {v0}, Lc/e/a/b/h/b/c;->a()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lc/e/a/b/h/b/Jb;->d:J

    .line 5
    iget-wide v0, p0, Lc/e/a/b/h/b/Jb;->d:J

    iput-wide v0, p0, Lc/e/a/b/h/b/Jb;->e:J

    return-void
.end method

.method public final D()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->c()Lc/e/a/b/d/g/e;

    move-result-object v0

    invoke-interface {v0}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lc/e/a/b/h/b/Jb;->d(J)V

    return-void
.end method

.method public final E()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->c()Lc/e/a/b/d/g/e;

    move-result-object v0

    invoke-interface {v0}, Lc/e/a/b/d/g/e;->a()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lc/e/a/b/h/b/Jb;->e:J

    sub-long v2, v0, v2

    .line 3
    iput-wide v0, p0, Lc/e/a/b/h/b/Jb;->e:J

    return-wide v2
.end method

.method public final F()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lc/e/a/b/h/b/Jb;->a(ZZ)Z

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->o()Lc/e/a/b/h/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->c()Lc/e/a/b/d/g/e;

    move-result-object v1

    invoke-interface {v1}, Lc/e/a/b/d/g/e;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lc/e/a/b/h/b/a;->a(J)V

    return-void
.end method

.method public final a(J)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/Jb;->B()V

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v0

    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->q()Lc/e/a/b/h/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/o;->C()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lc/e/a/b/h/b/k;->sa:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v0, v1, v2}, Lc/e/a/b/h/b/pc;->e(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/b/h/b/F;->z:Lc/e/a/b/h/b/H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/H;->a(Z)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity resumed, time"

    invoke-virtual {v0, v2, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iput-wide p1, p0, Lc/e/a/b/h/b/Jb;->d:J

    .line 7
    iget-wide p1, p0, Lc/e/a/b/h/b/Jb;->d:J

    iput-wide p1, p0, Lc/e/a/b/h/b/Jb;->e:J

    .line 8
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object p1

    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->q()Lc/e/a/b/h/b/o;

    move-result-object p2

    invoke-virtual {p2}, Lc/e/a/b/h/b/o;->C()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc/e/a/b/h/b/pc;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->c()Lc/e/a/b/d/g/e;

    move-result-object p1

    invoke-interface {p1}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lc/e/a/b/h/b/Jb;->b(J)V

    return-void

    .line 10
    :cond_1
    iget-object p1, p0, Lc/e/a/b/h/b/Jb;->f:Lc/e/a/b/h/b/c;

    invoke-virtual {p1}, Lc/e/a/b/h/b/c;->a()V

    .line 11
    iget-object p1, p0, Lc/e/a/b/h/b/Jb;->g:Lc/e/a/b/h/b/c;

    invoke-virtual {p1}, Lc/e/a/b/h/b/c;->a()V

    .line 12
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object p1

    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->c()Lc/e/a/b/d/g/e;

    move-result-object p2

    invoke-interface {p2}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lc/e/a/b/h/b/F;->a(J)Z

    move-result p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object p1

    iget-object p1, p1, Lc/e/a/b/h/b/F;->s:Lc/e/a/b/h/b/H;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lc/e/a/b/h/b/H;->a(Z)V

    .line 14
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object p1

    iget-object p1, p1, Lc/e/a/b/h/b/F;->x:Lc/e/a/b/h/b/I;

    invoke-virtual {p1, v0, v1}, Lc/e/a/b/h/b/I;->a(J)V

    .line 15
    :cond_2
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object p1

    iget-object p1, p1, Lc/e/a/b/h/b/F;->s:Lc/e/a/b/h/b/H;

    invoke-virtual {p1}, Lc/e/a/b/h/b/H;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p0, Lc/e/a/b/h/b/Jb;->f:Lc/e/a/b/h/b/c;

    .line 17
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object p2

    iget-object p2, p2, Lc/e/a/b/h/b/F;->q:Lc/e/a/b/h/b/I;

    invoke-virtual {p2}, Lc/e/a/b/h/b/I;->a()J

    move-result-wide v2

    .line 18
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object p2

    iget-object p2, p2, Lc/e/a/b/h/b/F;->x:Lc/e/a/b/h/b/I;

    invoke-virtual {p2}, Lc/e/a/b/h/b/I;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 19
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 20
    invoke-virtual {p1, v0, v1}, Lc/e/a/b/h/b/c;->a(J)V

    return-void

    .line 21
    :cond_3
    iget-object p1, p0, Lc/e/a/b/h/b/Jb;->g:Lc/e/a/b/h/b/c;

    const-wide/32 v2, 0x36ee80

    .line 22
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object p2

    iget-object p2, p2, Lc/e/a/b/h/b/F;->x:Lc/e/a/b/h/b/I;

    invoke-virtual {p2}, Lc/e/a/b/h/b/I;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 23
    invoke-virtual {p1, v0, v1}, Lc/e/a/b/h/b/c;->a(J)V

    return-void
.end method

.method public final a(JZ)V
    .locals 5

    .line 24
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 25
    invoke-virtual {p0}, Lc/e/a/b/h/b/Jb;->B()V

    .line 26
    iget-object v0, p0, Lc/e/a/b/h/b/Jb;->f:Lc/e/a/b/h/b/c;

    invoke-virtual {v0}, Lc/e/a/b/h/b/c;->a()V

    .line 27
    iget-object v0, p0, Lc/e/a/b/h/b/Jb;->g:Lc/e/a/b/h/b/c;

    invoke-virtual {v0}, Lc/e/a/b/h/b/c;->a()V

    .line 28
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc/e/a/b/h/b/F;->a(J)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/b/h/b/F;->s:Lc/e/a/b/h/b/H;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lc/e/a/b/h/b/H;->a(Z)V

    .line 30
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/b/h/b/F;->x:Lc/e/a/b/h/b/I;

    invoke-virtual {v0, v1, v2}, Lc/e/a/b/h/b/I;->a(J)V

    :cond_0
    if-eqz p3, :cond_1

    .line 31
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object p3

    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->q()Lc/e/a/b/h/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/o;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lc/e/a/b/h/b/pc;->b(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 32
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object p3

    iget-object p3, p3, Lc/e/a/b/h/b/F;->w:Lc/e/a/b/h/b/I;

    invoke-virtual {p3, p1, p2}, Lc/e/a/b/h/b/I;->a(J)V

    .line 33
    :cond_1
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object p3

    iget-object p3, p3, Lc/e/a/b/h/b/F;->s:Lc/e/a/b/h/b/H;

    invoke-virtual {p3}, Lc/e/a/b/h/b/H;->a()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 34
    invoke-virtual {p0, p1, p2}, Lc/e/a/b/h/b/Jb;->d(J)V

    return-void

    .line 35
    :cond_2
    iget-object p1, p0, Lc/e/a/b/h/b/Jb;->g:Lc/e/a/b/h/b/c;

    const-wide/32 p2, 0x36ee80

    .line 36
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/b/h/b/F;->x:Lc/e/a/b/h/b/I;

    invoke-virtual {v0}, Lc/e/a/b/h/b/I;->a()J

    move-result-wide v3

    sub-long/2addr p2, v3

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 37
    invoke-virtual {p1, p2, p3}, Lc/e/a/b/h/b/c;->a(J)V

    return-void
.end method

.method public final a(ZZ)Z
    .locals 8

    .line 38
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 39
    invoke-virtual {p0}, Lc/e/a/b/h/b/zb;->w()V

    .line 40
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->c()Lc/e/a/b/d/g/e;

    move-result-object v0

    invoke-interface {v0}, Lc/e/a/b/d/g/e;->a()J

    move-result-wide v0

    .line 41
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object v2

    iget-object v2, v2, Lc/e/a/b/h/b/F;->w:Lc/e/a/b/h/b/I;

    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->c()Lc/e/a/b/d/g/e;

    move-result-object v3

    invoke-interface {v3}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lc/e/a/b/h/b/I;->a(J)V

    .line 42
    iget-wide v2, p0, Lc/e/a/b/h/b/Jb;->d:J

    sub-long v2, v0, v2

    if-nez p1, :cond_0

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object p1

    .line 45
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-virtual {p1, v0, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    .line 46
    :cond_0
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object p1

    iget-object p1, p1, Lc/e/a/b/h/b/F;->x:Lc/e/a/b/h/b/I;

    invoke-virtual {p1, v2, v3}, Lc/e/a/b/h/b/I;->a(J)V

    .line 47
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Recording user engagement, ms"

    invoke-virtual {p1, v5, v4}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_et"

    .line 49
    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 50
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->s()Lc/e/a/b/h/b/db;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/db;->B()Lc/e/a/b/h/b/cb;

    move-result-object v2

    const/4 v3, 0x1

    .line 51
    invoke-static {v2, p1, v3}, Lc/e/a/b/h/b/db;->a(Lc/e/a/b/h/b/cb;Landroid/os/Bundle;Z)V

    .line 52
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v2

    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->q()Lc/e/a/b/h/b/o;

    move-result-object v4

    invoke-virtual {v4}, Lc/e/a/b/h/b/o;->C()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lc/e/a/b/h/b/pc;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 53
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v2

    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->q()Lc/e/a/b/h/b/o;

    move-result-object v4

    invoke-virtual {v4}, Lc/e/a/b/h/b/o;->C()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lc/e/a/b/h/b/k;->xa:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v2, v4, v5}, Lc/e/a/b/h/b/pc;->e(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p2, :cond_3

    .line 54
    invoke-virtual {p0}, Lc/e/a/b/h/b/Jb;->E()J

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-wide/16 v4, 0x1

    const-string v2, "_fr"

    .line 55
    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p0}, Lc/e/a/b/h/b/Jb;->E()J

    .line 57
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v2

    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->q()Lc/e/a/b/h/b/o;

    move-result-object v4

    invoke-virtual {v4}, Lc/e/a/b/h/b/o;->C()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lc/e/a/b/h/b/k;->xa:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v2, v4, v5}, Lc/e/a/b/h/b/pc;->e(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p2, :cond_5

    .line 58
    :cond_4
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->p()Lc/e/a/b/h/b/Fa;

    move-result-object p2

    const-string v2, "auto"

    const-string v4, "_e"

    .line 59
    invoke-virtual {p2, v2, v4, p1}, Lc/e/a/b/h/b/Fa;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 60
    :cond_5
    iput-wide v0, p0, Lc/e/a/b/h/b/Jb;->d:J

    .line 61
    iget-object p1, p0, Lc/e/a/b/h/b/Jb;->g:Lc/e/a/b/h/b/c;

    invoke-virtual {p1}, Lc/e/a/b/h/b/c;->a()V

    .line 62
    iget-object p1, p0, Lc/e/a/b/h/b/Jb;->g:Lc/e/a/b/h/b/c;

    const-wide/16 v0, 0x0

    const-wide/32 v4, 0x36ee80

    .line 63
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object p2

    iget-object p2, p2, Lc/e/a/b/h/b/F;->x:Lc/e/a/b/h/b/I;

    invoke-virtual {p2}, Lc/e/a/b/h/b/I;->a()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 64
    invoke-virtual {p1, v0, v1}, Lc/e/a/b/h/b/c;->a(J)V

    return v3
.end method

.method public final b(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/Jb;->B()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lc/e/a/b/h/b/Jb;->a(JZ)V

    return-void
.end method

.method public final c(J)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/Jb;->B()V

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v0

    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->q()Lc/e/a/b/h/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/o;->C()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lc/e/a/b/h/b/k;->sa:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v0, v1, v2}, Lc/e/a/b/h/b/pc;->e(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/b/h/b/F;->z:Lc/e/a/b/h/b/H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/H;->a(Z)V

    .line 5
    :cond_0
    iget-object v0, p0, Lc/e/a/b/h/b/Jb;->f:Lc/e/a/b/h/b/c;

    invoke-virtual {v0}, Lc/e/a/b/h/b/c;->a()V

    .line 6
    iget-object v0, p0, Lc/e/a/b/h/b/Jb;->g:Lc/e/a/b/h/b/c;

    invoke-virtual {v0}, Lc/e/a/b/h/b/c;->a()V

    .line 7
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity paused, time"

    invoke-virtual {v0, v2, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-wide v0, p0, Lc/e/a/b/h/b/Jb;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/b/h/b/F;->x:Lc/e/a/b/h/b/I;

    .line 10
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object v1

    iget-object v1, v1, Lc/e/a/b/h/b/F;->x:Lc/e/a/b/h/b/I;

    invoke-virtual {v1}, Lc/e/a/b/h/b/I;->a()J

    move-result-wide v1

    iget-wide v3, p0, Lc/e/a/b/h/b/Jb;->d:J

    sub-long/2addr p1, v3

    add-long/2addr v1, p1

    .line 11
    invoke-virtual {v0, v1, v2}, Lc/e/a/b/h/b/I;->a(J)V

    :cond_1
    return-void
.end method

.method public final d(J)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->l()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->c()Lc/e/a/b/d/g/e;

    move-result-object v0

    invoke-interface {v0}, Lc/e/a/b/d/g/e;->a()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Session started, time"

    invoke-virtual {v2, v1, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v0

    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->q()Lc/e/a/b/h/b/o;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/o;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/pc;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    .line 5
    div-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->p()Lc/e/a/b/h/b/Fa;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_sid"

    move-object v4, v0

    move-wide v5, p1

    .line 7
    invoke-virtual/range {v1 .. v6}, Lc/e/a/b/h/b/Fa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 8
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object v1

    iget-object v1, v1, Lc/e/a/b/h/b/F;->s:Lc/e/a/b/h/b/H;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/H;->a(Z)V

    .line 9
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 10
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v1

    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->q()Lc/e/a/b/h/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/o;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/pc;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "_sid"

    invoke-virtual {v8, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 12
    :cond_1
    invoke-virtual {p0}, Lc/e/a/b/h/b/_a;->p()Lc/e/a/b/h/b/Fa;

    move-result-object v3

    const-string v4, "auto"

    const-string v5, "_s"

    move-wide v6, p1

    .line 13
    invoke-virtual/range {v3 .. v8}, Lc/e/a/b/h/b/Fa;->a(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/b/h/b/F;->w:Lc/e/a/b/h/b/I;

    invoke-virtual {v0, p1, p2}, Lc/e/a/b/h/b/I;->a(J)V

    return-void
.end method

.method public final z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
