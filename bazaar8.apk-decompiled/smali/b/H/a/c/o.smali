.class public Lb/H/a/c/o;
.super Ljava/lang/Object;
.source "WorkSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/H/a/c/o$b;,
        Lb/H/a/c/o$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Lb/c/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/c/a<",
            "Ljava/util/List<",
            "Lb/H/a/c/o$b;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public c:Ljava/lang/String;

.field public d:Landroidx/work/WorkInfo$State;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lb/H/d;

.field public h:Lb/H/d;

.field public i:J

.field public j:J

.field public k:J

.field public l:Lb/H/b;

.field public m:I

.field public n:Landroidx/work/BackoffPolicy;

.field public o:J

.field public p:J

.field public q:J

.field public r:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkSpec"

    .line 1
    invoke-static {v0}, Lb/H/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/H/a/c/o;->a:Ljava/lang/String;

    .line 2
    new-instance v0, Lb/H/a/c/n;

    invoke-direct {v0}, Lb/H/a/c/n;-><init>()V

    sput-object v0, Lb/H/a/c/o;->b:Lb/c/a/c/a;

    return-void
.end method

.method public constructor <init>(Lb/H/a/c/o;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    iput-object v0, p0, Lb/H/a/c/o;->d:Landroidx/work/WorkInfo$State;

    .line 13
    sget-object v0, Lb/H/d;->b:Lb/H/d;

    iput-object v0, p0, Lb/H/a/c/o;->g:Lb/H/d;

    .line 14
    iput-object v0, p0, Lb/H/a/c/o;->h:Lb/H/d;

    .line 15
    sget-object v0, Lb/H/b;->a:Lb/H/b;

    iput-object v0, p0, Lb/H/a/c/o;->l:Lb/H/b;

    .line 16
    sget-object v0, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    iput-object v0, p0, Lb/H/a/c/o;->n:Landroidx/work/BackoffPolicy;

    const-wide/16 v0, 0x7530

    .line 17
    iput-wide v0, p0, Lb/H/a/c/o;->o:J

    const-wide/16 v0, -0x1

    .line 18
    iput-wide v0, p0, Lb/H/a/c/o;->r:J

    .line 19
    iget-object v0, p1, Lb/H/a/c/o;->c:Ljava/lang/String;

    iput-object v0, p0, Lb/H/a/c/o;->c:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lb/H/a/c/o;->e:Ljava/lang/String;

    iput-object v0, p0, Lb/H/a/c/o;->e:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lb/H/a/c/o;->d:Landroidx/work/WorkInfo$State;

    iput-object v0, p0, Lb/H/a/c/o;->d:Landroidx/work/WorkInfo$State;

    .line 22
    iget-object v0, p1, Lb/H/a/c/o;->f:Ljava/lang/String;

    iput-object v0, p0, Lb/H/a/c/o;->f:Ljava/lang/String;

    .line 23
    new-instance v0, Lb/H/d;

    iget-object v1, p1, Lb/H/a/c/o;->g:Lb/H/d;

    invoke-direct {v0, v1}, Lb/H/d;-><init>(Lb/H/d;)V

    iput-object v0, p0, Lb/H/a/c/o;->g:Lb/H/d;

    .line 24
    new-instance v0, Lb/H/d;

    iget-object v1, p1, Lb/H/a/c/o;->h:Lb/H/d;

    invoke-direct {v0, v1}, Lb/H/d;-><init>(Lb/H/d;)V

    iput-object v0, p0, Lb/H/a/c/o;->h:Lb/H/d;

    .line 25
    iget-wide v0, p1, Lb/H/a/c/o;->i:J

    iput-wide v0, p0, Lb/H/a/c/o;->i:J

    .line 26
    iget-wide v0, p1, Lb/H/a/c/o;->j:J

    iput-wide v0, p0, Lb/H/a/c/o;->j:J

    .line 27
    iget-wide v0, p1, Lb/H/a/c/o;->k:J

    iput-wide v0, p0, Lb/H/a/c/o;->k:J

    .line 28
    new-instance v0, Lb/H/b;

    iget-object v1, p1, Lb/H/a/c/o;->l:Lb/H/b;

    invoke-direct {v0, v1}, Lb/H/b;-><init>(Lb/H/b;)V

    iput-object v0, p0, Lb/H/a/c/o;->l:Lb/H/b;

    .line 29
    iget v0, p1, Lb/H/a/c/o;->m:I

    iput v0, p0, Lb/H/a/c/o;->m:I

    .line 30
    iget-object v0, p1, Lb/H/a/c/o;->n:Landroidx/work/BackoffPolicy;

    iput-object v0, p0, Lb/H/a/c/o;->n:Landroidx/work/BackoffPolicy;

    .line 31
    iget-wide v0, p1, Lb/H/a/c/o;->o:J

    iput-wide v0, p0, Lb/H/a/c/o;->o:J

    .line 32
    iget-wide v0, p1, Lb/H/a/c/o;->p:J

    iput-wide v0, p0, Lb/H/a/c/o;->p:J

    .line 33
    iget-wide v0, p1, Lb/H/a/c/o;->q:J

    iput-wide v0, p0, Lb/H/a/c/o;->q:J

    .line 34
    iget-wide v0, p1, Lb/H/a/c/o;->r:J

    iput-wide v0, p0, Lb/H/a/c/o;->r:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    iput-object v0, p0, Lb/H/a/c/o;->d:Landroidx/work/WorkInfo$State;

    .line 3
    sget-object v0, Lb/H/d;->b:Lb/H/d;

    iput-object v0, p0, Lb/H/a/c/o;->g:Lb/H/d;

    .line 4
    iput-object v0, p0, Lb/H/a/c/o;->h:Lb/H/d;

    .line 5
    sget-object v0, Lb/H/b;->a:Lb/H/b;

    iput-object v0, p0, Lb/H/a/c/o;->l:Lb/H/b;

    .line 6
    sget-object v0, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    iput-object v0, p0, Lb/H/a/c/o;->n:Landroidx/work/BackoffPolicy;

    const-wide/16 v0, 0x7530

    .line 7
    iput-wide v0, p0, Lb/H/a/c/o;->o:J

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lb/H/a/c/o;->r:J

    .line 9
    iput-object p1, p0, Lb/H/a/c/o;->c:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lb/H/a/c/o;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 7

    .line 17
    invoke-virtual {p0}, Lb/H/a/c/o;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 18
    iget-object v0, p0, Lb/H/a/c/o;->n:Landroidx/work/BackoffPolicy;

    sget-object v3, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 19
    iget-wide v0, p0, Lb/H/a/c/o;->o:J

    iget v2, p0, Lb/H/a/c/o;->m:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lb/H/a/c/o;->o:J

    long-to-float v0, v0

    iget v1, p0, Lb/H/a/c/o;->m:I

    sub-int/2addr v1, v2

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-long v0, v0

    .line 21
    :goto_0
    iget-wide v2, p0, Lb/H/a/c/o;->p:J

    const-wide/32 v4, 0x112a880

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2

    .line 22
    :cond_2
    invoke-virtual {p0}, Lb/H/a/c/o;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-gt v0, v3, :cond_7

    .line 24
    iget-wide v3, p0, Lb/H/a/c/o;->k:J

    iget-wide v5, p0, Lb/H/a/c/o;->j:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_6

    .line 25
    iget-wide v0, p0, Lb/H/a/c/o;->p:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    const-wide/16 v0, -0x1

    iget-wide v4, p0, Lb/H/a/c/o;->k:J

    mul-long v0, v0, v4

    goto :goto_1

    :cond_4
    move-wide v0, v2

    .line 26
    :goto_1
    iget-wide v4, p0, Lb/H/a/c/o;->p:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_5

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 28
    :cond_5
    iget-wide v2, p0, Lb/H/a/c/o;->j:J

    add-long/2addr v4, v2

    add-long/2addr v4, v0

    return-wide v4

    .line 29
    :cond_6
    iget-wide v0, p0, Lb/H/a/c/o;->p:J

    iget-wide v2, p0, Lb/H/a/c/o;->j:J

    add-long/2addr v0, v2

    return-wide v0

    .line 30
    :cond_7
    iget-wide v0, p0, Lb/H/a/c/o;->p:J

    iget-wide v2, p0, Lb/H/a/c/o;->j:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lb/H/a/c/o;->k:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 31
    :cond_8
    iget-wide v0, p0, Lb/H/a/c/o;->p:J

    iget-wide v2, p0, Lb/H/a/c/o;->i:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public a(J)V
    .locals 5

    const/4 v0, 0x0

    const-wide/32 v1, 0x112a880

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    .line 1
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object p1

    sget-object p2, Lb/H/a/c/o;->a:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Throwable;

    const-string v4, "Backoff delay duration exceeds maximum value"

    invoke-virtual {p1, p2, v4, v3}, Lb/H/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p1, v1

    :cond_0
    const-wide/16 v1, 0x2710

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    .line 2
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object p1

    sget-object p2, Lb/H/a/c/o;->a:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Throwable;

    const-string v3, "Backoff delay duration less than minimum value"

    invoke-virtual {p1, p2, v3, v0}, Lb/H/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p1, v1

    .line 3
    :cond_1
    iput-wide p1, p0, Lb/H/a/c/o;->o:J

    return-void
.end method

.method public a(JJ)V
    .locals 6

    const/4 v0, 0x1

    const-wide/32 v1, 0xdbba0

    const/4 v3, 0x0

    cmp-long v4, p1, v1

    if-gez v4, :cond_0

    .line 4
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object p1

    sget-object p2, Lb/H/a/c/o;->a:Ljava/lang/String;

    new-array v4, v0, [Ljava/lang/Object;

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "Interval duration lesser than minimum allowed value; Changed to %s"

    .line 6
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Throwable;

    invoke-virtual {p1, p2, v4, v5}, Lb/H/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p1, v1

    :cond_0
    const-wide/32 v1, 0x493e0

    cmp-long v4, p3, v1

    if-gez v4, :cond_1

    .line 7
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object p3

    sget-object p4, Lb/H/a/c/o;->a:Ljava/lang/String;

    new-array v4, v0, [Ljava/lang/Object;

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "Flex duration lesser than minimum allowed value; Changed to %s"

    .line 9
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Throwable;

    .line 10
    invoke-virtual {p3, p4, v4, v5}, Lb/H/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p3, v1

    :cond_1
    cmp-long v1, p3, p1

    if-lez v1, :cond_2

    .line 11
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object p3

    sget-object p4, Lb/H/a/c/o;->a:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Flex duration greater than interval duration; Changed to %s"

    .line 13
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Throwable;

    .line 14
    invoke-virtual {p3, p4, v0, v1}, Lb/H/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p3, p1

    .line 15
    :cond_2
    iput-wide p1, p0, Lb/H/a/c/o;->j:J

    .line 16
    iput-wide p3, p0, Lb/H/a/c/o;->k:J

    return-void
.end method

.method public b(J)V
    .locals 5

    const-wide/32 v0, 0xdbba0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 1
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object p1

    sget-object p2, Lb/H/a/c/o;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Interval duration lesser than minimum allowed value; Changed to %s"

    .line 3
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    invoke-virtual {p1, p2, v2, v3}, Lb/H/f;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p1, v0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2, p1, p2}, Lb/H/a/c/o;->a(JJ)V

    return-void
.end method

.method public b()Z
    .locals 2

    .line 5
    sget-object v0, Lb/H/b;->a:Lb/H/b;

    iget-object v1, p0, Lb/H/a/c/o;->l:Lb/H/b;

    invoke-virtual {v0, v1}, Lb/H/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb/H/a/c/o;->d:Landroidx/work/WorkInfo$State;

    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lb/H/a/c/o;->m:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lb/H/a/c/o;->j:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_13

    .line 1
    const-class v2, Lb/H/a/c/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 2
    :cond_1
    check-cast p1, Lb/H/a/c/o;

    .line 3
    iget-wide v2, p0, Lb/H/a/c/o;->i:J

    iget-wide v4, p1, Lb/H/a/c/o;->i:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 4
    :cond_2
    iget-wide v2, p0, Lb/H/a/c/o;->j:J

    iget-wide v4, p1, Lb/H/a/c/o;->j:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    .line 5
    :cond_3
    iget-wide v2, p0, Lb/H/a/c/o;->k:J

    iget-wide v4, p1, Lb/H/a/c/o;->k:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    return v1

    .line 6
    :cond_4
    iget v2, p0, Lb/H/a/c/o;->m:I

    iget v3, p1, Lb/H/a/c/o;->m:I

    if-eq v2, v3, :cond_5

    return v1

    .line 7
    :cond_5
    iget-wide v2, p0, Lb/H/a/c/o;->o:J

    iget-wide v4, p1, Lb/H/a/c/o;->o:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    return v1

    .line 8
    :cond_6
    iget-wide v2, p0, Lb/H/a/c/o;->p:J

    iget-wide v4, p1, Lb/H/a/c/o;->p:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_7

    return v1

    .line 9
    :cond_7
    iget-wide v2, p0, Lb/H/a/c/o;->q:J

    iget-wide v4, p1, Lb/H/a/c/o;->q:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_8

    return v1

    .line 10
    :cond_8
    iget-wide v2, p0, Lb/H/a/c/o;->r:J

    iget-wide v4, p1, Lb/H/a/c/o;->r:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_9

    return v1

    .line 11
    :cond_9
    iget-object v2, p0, Lb/H/a/c/o;->c:Ljava/lang/String;

    iget-object v3, p1, Lb/H/a/c/o;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 12
    :cond_a
    iget-object v2, p0, Lb/H/a/c/o;->d:Landroidx/work/WorkInfo$State;

    iget-object v3, p1, Lb/H/a/c/o;->d:Landroidx/work/WorkInfo$State;

    if-eq v2, v3, :cond_b

    return v1

    .line 13
    :cond_b
    iget-object v2, p0, Lb/H/a/c/o;->e:Ljava/lang/String;

    iget-object v3, p1, Lb/H/a/c/o;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 14
    :cond_c
    iget-object v2, p0, Lb/H/a/c/o;->f:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v3, p1, Lb/H/a/c/o;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_0

    :cond_d
    iget-object v2, p1, Lb/H/a/c/o;->f:Ljava/lang/String;

    if-eqz v2, :cond_e

    :goto_0
    return v1

    .line 15
    :cond_e
    iget-object v2, p0, Lb/H/a/c/o;->g:Lb/H/d;

    iget-object v3, p1, Lb/H/a/c/o;->g:Lb/H/d;

    invoke-virtual {v2, v3}, Lb/H/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 16
    :cond_f
    iget-object v2, p0, Lb/H/a/c/o;->h:Lb/H/d;

    iget-object v3, p1, Lb/H/a/c/o;->h:Lb/H/d;

    invoke-virtual {v2, v3}, Lb/H/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 17
    :cond_10
    iget-object v2, p0, Lb/H/a/c/o;->l:Lb/H/b;

    iget-object v3, p1, Lb/H/a/c/o;->l:Lb/H/b;

    invoke-virtual {v2, v3}, Lb/H/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 18
    :cond_11
    iget-object v2, p0, Lb/H/a/c/o;->n:Landroidx/work/BackoffPolicy;

    iget-object p1, p1, Lb/H/a/c/o;->n:Landroidx/work/BackoffPolicy;

    if-ne v2, p1, :cond_12

    goto :goto_1

    :cond_12
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_13
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lb/H/a/c/o;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lb/H/a/c/o;->d:Landroidx/work/WorkInfo$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lb/H/a/c/o;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lb/H/a/c/o;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lb/H/a/c/o;->g:Lb/H/d;

    invoke-virtual {v1}, Lb/H/d;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lb/H/a/c/o;->h:Lb/H/d;

    invoke-virtual {v1}, Lb/H/d;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-wide v1, p0, Lb/H/a/c/o;->i:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-wide v1, p0, Lb/H/a/c/o;->j:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-wide v1, p0, Lb/H/a/c/o;->k:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, Lb/H/a/c/o;->l:Lb/H/b;

    invoke-virtual {v1}, Lb/H/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget v1, p0, Lb/H/a/c/o;->m:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-object v1, p0, Lb/H/a/c/o;->n:Landroidx/work/BackoffPolicy;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-wide v1, p0, Lb/H/a/c/o;->o:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-wide v1, p0, Lb/H/a/c/o;->p:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget-wide v1, p0, Lb/H/a/c/o;->q:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget-wide v1, p0, Lb/H/a/c/o;->r:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{WorkSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/H/a/c/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
