.class public final Lc/e/a/b/h/b/t;
.super Lc/e/a/b/h/b/va;


# instance fields
.field public c:C

.field public d:J

.field public e:Ljava/lang/String;

.field public final f:Lc/e/a/b/h/b/v;

.field public final g:Lc/e/a/b/h/b/v;

.field public final h:Lc/e/a/b/h/b/v;

.field public final i:Lc/e/a/b/h/b/v;

.field public final j:Lc/e/a/b/h/b/v;

.field public final k:Lc/e/a/b/h/b/v;

.field public final l:Lc/e/a/b/h/b/v;

.field public final m:Lc/e/a/b/h/b/v;

.field public final n:Lc/e/a/b/h/b/v;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Y;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lc/e/a/b/h/b/va;-><init>(Lc/e/a/b/h/b/Y;)V

    const/4 p1, 0x0

    .line 2
    iput-char p1, p0, Lc/e/a/b/h/b/t;->c:C

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lc/e/a/b/h/b/t;->d:J

    .line 4
    new-instance v0, Lc/e/a/b/h/b/v;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, p1, p1}, Lc/e/a/b/h/b/v;-><init>(Lc/e/a/b/h/b/t;IZZ)V

    iput-object v0, p0, Lc/e/a/b/h/b/t;->f:Lc/e/a/b/h/b/v;

    .line 5
    new-instance v0, Lc/e/a/b/h/b/v;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lc/e/a/b/h/b/v;-><init>(Lc/e/a/b/h/b/t;IZZ)V

    iput-object v0, p0, Lc/e/a/b/h/b/t;->g:Lc/e/a/b/h/b/v;

    .line 6
    new-instance v0, Lc/e/a/b/h/b/v;

    invoke-direct {v0, p0, v1, p1, v2}, Lc/e/a/b/h/b/v;-><init>(Lc/e/a/b/h/b/t;IZZ)V

    iput-object v0, p0, Lc/e/a/b/h/b/t;->h:Lc/e/a/b/h/b/v;

    .line 7
    new-instance v0, Lc/e/a/b/h/b/v;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p1, p1}, Lc/e/a/b/h/b/v;-><init>(Lc/e/a/b/h/b/t;IZZ)V

    iput-object v0, p0, Lc/e/a/b/h/b/t;->i:Lc/e/a/b/h/b/v;

    .line 8
    new-instance v0, Lc/e/a/b/h/b/v;

    invoke-direct {v0, p0, v1, v2, p1}, Lc/e/a/b/h/b/v;-><init>(Lc/e/a/b/h/b/t;IZZ)V

    iput-object v0, p0, Lc/e/a/b/h/b/t;->j:Lc/e/a/b/h/b/v;

    .line 9
    new-instance v0, Lc/e/a/b/h/b/v;

    invoke-direct {v0, p0, v1, p1, v2}, Lc/e/a/b/h/b/v;-><init>(Lc/e/a/b/h/b/t;IZZ)V

    iput-object v0, p0, Lc/e/a/b/h/b/t;->k:Lc/e/a/b/h/b/v;

    .line 10
    new-instance v0, Lc/e/a/b/h/b/v;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p1}, Lc/e/a/b/h/b/v;-><init>(Lc/e/a/b/h/b/t;IZZ)V

    iput-object v0, p0, Lc/e/a/b/h/b/t;->l:Lc/e/a/b/h/b/v;

    .line 11
    new-instance v0, Lc/e/a/b/h/b/v;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1, p1}, Lc/e/a/b/h/b/v;-><init>(Lc/e/a/b/h/b/t;IZZ)V

    iput-object v0, p0, Lc/e/a/b/h/b/t;->m:Lc/e/a/b/h/b/v;

    .line 12
    new-instance v0, Lc/e/a/b/h/b/v;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p1}, Lc/e/a/b/h/b/v;-><init>(Lc/e/a/b/h/b/t;IZZ)V

    iput-object v0, p0, Lc/e/a/b/h/b/t;->n:Lc/e/a/b/h/b/v;

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/h/b/t;)C
    .locals 0

    .line 57
    iget-char p0, p0, Lc/e/a/b/h/b/t;->c:C

    return p0
.end method

.method public static synthetic a(Lc/e/a/b/h/b/t;C)C
    .locals 0

    .line 58
    iput-char p1, p0, Lc/e/a/b/h/b/t;->c:C

    return p1
.end method

.method public static synthetic a(Lc/e/a/b/h/b/t;J)J
    .locals 0

    .line 59
    iput-wide p1, p0, Lc/e/a/b/h/b/t;->d:J

    return-wide p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lc/e/a/b/h/b/w;

    invoke-direct {v0, p0}, Lc/e/a/b/h/b/w;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(ZLjava/lang/Object;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 29
    :cond_0
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 30
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 31
    :cond_1
    instance-of v1, p1, Ljava/lang/Long;

    const-string v2, "-"

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    if-nez p0, :cond_2

    .line 32
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 33
    :cond_2
    move-object p0, p1

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x64

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    .line 34
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 35
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x2d

    if-ne p1, v1, :cond_4

    move-object v0, v2

    .line 36
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-double v1, p1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double p0, p0

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 39
    :cond_5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 40
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 41
    :cond_6
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_a

    .line 42
    check-cast p1, Ljava/lang/Throwable;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    if-eqz p0, :cond_7

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    const-class p0, Lc/e/a/b/h/b/Y;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/e/a/b/h/b/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length v1, p1

    :goto_1
    if-ge v3, v1, :cond_9

    aget-object v2, p1, v3

    .line 47
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v4

    if-nez v4, :cond_8

    .line 48
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 49
    invoke-static {v4}, Lc/e/a/b/h/b/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string p0, ": "

    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 53
    :cond_9
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 54
    :cond_a
    instance-of v0, p1, Lc/e/a/b/h/b/w;

    if-eqz v0, :cond_b

    .line 55
    check-cast p1, Lc/e/a/b/h/b/w;

    invoke-static {p1}, Lc/e/a/b/h/b/w;->a(Lc/e/a/b/h/b/w;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    if-eqz p0, :cond_c

    return-object v2

    .line 56
    :cond_c
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    .line 13
    :cond_0
    invoke-static {p0, p2}, Lc/e/a/b/h/b/t;->a(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-static {p0, p3}, Lc/e/a/b/h/b/t;->a(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 15
    invoke-static {p0, p4}, Lc/e/a/b/h/b/t;->a(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 16
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 18
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    .line 19
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, ", "

    if-nez p1, :cond_2

    .line 20
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    .line 22
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 23
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    .line 25
    :cond_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 26
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    :cond_4
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lc/e/a/b/h/b/t;)J
    .locals 2

    .line 4
    iget-wide v0, p0, Lc/e/a/b/h/b/t;->d:J

    return-wide v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/16 v0, 0x2e

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Lc/e/a/b/h/b/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/t;->m:Lc/e/a/b/h/b/v;

    return-object v0
.end method

.method public final B()Lc/e/a/b/h/b/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/t;->n:Lc/e/a/b/h/b/v;

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc/e/a/b/h/b/t;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/h/b/t;->e:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lc/e/a/b/h/b/pc;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/h/b/t;->e:Ljava/lang/String;

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lc/e/a/b/h/b/t;->e:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final D()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/ua;->h()Lc/e/a/b/h/b/F;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/b/h/b/F;->e:Lc/e/a/b/h/b/J;

    invoke-virtual {v0}, Lc/e/a/b/h/b/J;->b()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v1, Lc/e/a/b/h/b/F;->c:Landroid/util/Pair;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    .line 12
    invoke-virtual {p0}, Lc/e/a/b/h/b/t;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lc/e/a/b/h/b/t;->a(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-static {v0, p4, p5, p6, p7}, Lc/e/a/b/h/b/t;->a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p0, p1, p2}, Lc/e/a/b/h/b/t;->a(ILjava/lang/String;)V

    :cond_0
    if-nez p3, :cond_5

    const/4 p2, 0x5

    if-lt p1, p2, :cond_5

    .line 5
    invoke-static {p4}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {p2}, Lc/e/a/b/h/b/Y;->o()Lc/e/a/b/h/b/U;

    move-result-object p2

    const/4 p3, 0x6

    if-nez p2, :cond_1

    const-string p1, "Scheduler not set. Not logging error/warn"

    .line 7
    invoke-virtual {p0, p3, p1}, Lc/e/a/b/h/b/t;->a(ILjava/lang/String;)V

    return-void

    .line 8
    :cond_1
    invoke-virtual {p2}, Lc/e/a/b/h/b/va;->n()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "Scheduler not initialized. Not logging error/warn"

    .line 9
    invoke-virtual {p0, p3, p1}, Lc/e/a/b/h/b/t;->a(ILjava/lang/String;)V

    return-void

    :cond_2
    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    const/16 p3, 0x9

    if-lt p1, p3, :cond_4

    const/16 p1, 0x8

    const/16 v2, 0x8

    goto :goto_0

    :cond_4
    move v2, p1

    .line 10
    :goto_0
    new-instance p1, Lc/e/a/b/h/b/u;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lc/e/a/b/h/b/u;-><init>(Lc/e/a/b/h/b/t;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lc/e/a/b/h/b/U;->a(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public final a(I)Z
    .locals 1

    .line 11
    invoke-virtual {p0}, Lc/e/a/b/h/b/t;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public final r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final t()Lc/e/a/b/h/b/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/t;->f:Lc/e/a/b/h/b/v;

    return-object v0
.end method

.method public final u()Lc/e/a/b/h/b/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/t;->g:Lc/e/a/b/h/b/v;

    return-object v0
.end method

.method public final v()Lc/e/a/b/h/b/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/t;->h:Lc/e/a/b/h/b/v;

    return-object v0
.end method

.method public final w()Lc/e/a/b/h/b/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/t;->i:Lc/e/a/b/h/b/v;

    return-object v0
.end method

.method public final x()Lc/e/a/b/h/b/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/t;->j:Lc/e/a/b/h/b/v;

    return-object v0
.end method

.method public final y()Lc/e/a/b/h/b/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/t;->k:Lc/e/a/b/h/b/v;

    return-object v0
.end method

.method public final z()Lc/e/a/b/h/b/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/t;->l:Lc/e/a/b/h/b/v;

    return-object v0
.end method
