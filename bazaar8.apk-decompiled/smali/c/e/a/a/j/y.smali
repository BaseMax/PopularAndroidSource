.class public final Lc/e/a/a/j/y;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lc/e/a/a/j/u;
.implements Lc/e/a/a/e/i;
.implements Lcom/google/android/exoplayer2/upstream/Loader$a;
.implements Lcom/google/android/exoplayer2/upstream/Loader$e;
.implements Lc/e/a/a/j/B$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/j/y$f;,
        Lc/e/a/a/j/y$d;,
        Lc/e/a/a/j/y$b;,
        Lc/e/a/a/j/y$a;,
        Lc/e/a/a/j/y$e;,
        Lc/e/a/a/j/y$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/e/a/a/j/u;",
        "Lc/e/a/a/e/i;",
        "Lcom/google/android/exoplayer2/upstream/Loader$a<",
        "Lc/e/a/a/j/y$a;",
        ">;",
        "Lcom/google/android/exoplayer2/upstream/Loader$e;",
        "Lc/e/a/a/j/B$b;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/Format;


# instance fields
.field public A:Z

.field public B:Z

.field public C:I

.field public D:J

.field public E:J

.field public F:J

.field public G:J

.field public H:Z

.field public I:I

.field public J:Z

.field public K:Z

.field public final b:Landroid/net/Uri;

.field public final c:Lc/e/a/a/n/j;

.field public final d:Lc/e/a/a/n/v;

.field public final e:Lc/e/a/a/j/w$a;

.field public final f:Lc/e/a/a/j/y$c;

.field public final g:Lc/e/a/a/n/e;

.field public final h:Ljava/lang/String;

.field public final i:J

.field public final j:Lcom/google/android/exoplayer2/upstream/Loader;

.field public final k:Lc/e/a/a/j/y$b;

.field public final l:Lc/e/a/a/o/i;

.field public final m:Ljava/lang/Runnable;

.field public final n:Ljava/lang/Runnable;

.field public final o:Landroid/os/Handler;

.field public p:Lc/e/a/a/j/u$a;

.field public q:Lc/e/a/a/e/o;

.field public r:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

.field public s:[Lc/e/a/a/j/B;

.field public t:[Lc/e/a/a/j/y$f;

.field public u:Z

.field public v:Z

.field public w:Lc/e/a/a/j/y$d;

.field public x:Z

.field public y:I

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "icy"

    const-string v1, "application/x-icy"

    const-wide v2, 0x7fffffffffffffffL

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/Format;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lc/e/a/a/j/y;->a:Lcom/google/android/exoplayer2/Format;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lc/e/a/a/n/j;[Lc/e/a/a/e/g;Lc/e/a/a/n/v;Lc/e/a/a/j/w$a;Lc/e/a/a/j/y$c;Lc/e/a/a/n/e;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/j/y;->b:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lc/e/a/a/j/y;->c:Lc/e/a/a/n/j;

    .line 4
    iput-object p4, p0, Lc/e/a/a/j/y;->d:Lc/e/a/a/n/v;

    .line 5
    iput-object p5, p0, Lc/e/a/a/j/y;->e:Lc/e/a/a/j/w$a;

    .line 6
    iput-object p6, p0, Lc/e/a/a/j/y;->f:Lc/e/a/a/j/y$c;

    .line 7
    iput-object p7, p0, Lc/e/a/a/j/y;->g:Lc/e/a/a/n/e;

    .line 8
    iput-object p8, p0, Lc/e/a/a/j/y;->h:Ljava/lang/String;

    int-to-long p1, p9

    .line 9
    iput-wide p1, p0, Lc/e/a/a/j/y;->i:J

    .line 10
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "Loader:ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lc/e/a/a/j/y;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 11
    new-instance p1, Lc/e/a/a/j/y$b;

    invoke-direct {p1, p3}, Lc/e/a/a/j/y$b;-><init>([Lc/e/a/a/e/g;)V

    iput-object p1, p0, Lc/e/a/a/j/y;->k:Lc/e/a/a/j/y$b;

    .line 12
    new-instance p1, Lc/e/a/a/o/i;

    invoke-direct {p1}, Lc/e/a/a/o/i;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/y;->l:Lc/e/a/a/o/i;

    .line 13
    new-instance p1, Lc/e/a/a/j/b;

    invoke-direct {p1, p0}, Lc/e/a/a/j/b;-><init>(Lc/e/a/a/j/y;)V

    iput-object p1, p0, Lc/e/a/a/j/y;->m:Ljava/lang/Runnable;

    .line 14
    new-instance p1, Lc/e/a/a/j/l;

    invoke-direct {p1, p0}, Lc/e/a/a/j/l;-><init>(Lc/e/a/a/j/y;)V

    iput-object p1, p0, Lc/e/a/a/j/y;->n:Ljava/lang/Runnable;

    .line 15
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/y;->o:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 16
    new-array p2, p1, [Lc/e/a/a/j/y$f;

    iput-object p2, p0, Lc/e/a/a/j/y;->t:[Lc/e/a/a/j/y$f;

    .line 17
    new-array p1, p1, [Lc/e/a/a/j/B;

    iput-object p1, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    iput-wide p1, p0, Lc/e/a/a/j/y;->G:J

    const-wide/16 p3, -0x1

    .line 19
    iput-wide p3, p0, Lc/e/a/a/j/y;->E:J

    .line 20
    iput-wide p1, p0, Lc/e/a/a/j/y;->D:J

    const/4 p1, 0x1

    .line 21
    iput p1, p0, Lc/e/a/a/j/y;->y:I

    .line 22
    invoke-virtual {p5}, Lc/e/a/a/j/w$a;->a()V

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/j/y;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/j/y;->o:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic a(Lc/e/a/a/j/y;Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    .locals 0

    .line 2
    iput-object p1, p0, Lc/e/a/a/j/y;->r:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    return-object p1
.end method

.method public static synthetic b(Lc/e/a/a/j/y;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/j/y;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic c()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 2
    sget-object v0, Lc/e/a/a/j/y;->a:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public static synthetic c(Lc/e/a/a/j/y;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/j/y;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lc/e/a/a/j/y;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/j/y;->r:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    return-object p0
.end method

.method public static synthetic e(Lc/e/a/a/j/y;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/j/y;->i:J

    return-wide v0
.end method

.method public static synthetic f(Lc/e/a/a/j/y;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/j/y;->n:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public a(IJ)I
    .locals 5

    .line 81
    invoke-virtual {p0}, Lc/e/a/a/j/y;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 82
    :cond_0
    invoke-virtual {p0, p1}, Lc/e/a/a/j/y;->b(I)V

    .line 83
    iget-object v0, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    aget-object v0, v0, p1

    .line 84
    iget-boolean v2, p0, Lc/e/a/a/j/y;->J:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lc/e/a/a/j/B;->f()J

    move-result-wide v2

    cmp-long v4, p2, v2

    if-lez v4, :cond_1

    .line 85
    invoke-virtual {v0}, Lc/e/a/a/j/B;->a()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 86
    invoke-virtual {v0, p2, p3, v2, v2}, Lc/e/a/a/j/B;->a(JZZ)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    goto :goto_0

    :cond_2
    move v1, p2

    :goto_0
    if-nez v1, :cond_3

    .line 87
    invoke-virtual {p0, p1}, Lc/e/a/a/j/y;->c(I)V

    :cond_3
    return v1
.end method

.method public a(ILc/e/a/a/E;Lc/e/a/a/c/f;Z)I
    .locals 9

    .line 76
    invoke-virtual {p0}, Lc/e/a/a/j/y;->s()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    .line 77
    :cond_0
    invoke-virtual {p0, p1}, Lc/e/a/a/j/y;->b(I)V

    .line 78
    iget-object v0, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    aget-object v2, v0, p1

    iget-boolean v6, p0, Lc/e/a/a/j/y;->J:Z

    iget-wide v7, p0, Lc/e/a/a/j/y;->F:J

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 79
    invoke-virtual/range {v2 .. v8}, Lc/e/a/a/j/B;->a(Lc/e/a/a/E;Lc/e/a/a/c/f;ZZJ)I

    move-result p2

    if-ne p2, v1, :cond_1

    .line 80
    invoke-virtual {p0, p1}, Lc/e/a/a/j/y;->c(I)V

    :cond_1
    return p2
.end method

.method public a(J)J
    .locals 4

    .line 54
    invoke-virtual {p0}, Lc/e/a/a/j/y;->k()Lc/e/a/a/j/y$d;

    move-result-object v0

    .line 55
    iget-object v1, v0, Lc/e/a/a/j/y$d;->a:Lc/e/a/a/e/o;

    .line 56
    iget-object v0, v0, Lc/e/a/a/j/y$d;->c:[Z

    .line 57
    invoke-interface {v1}, Lc/e/a/a/e/o;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 58
    iput-boolean v1, p0, Lc/e/a/a/j/y;->A:Z

    .line 59
    iput-wide p1, p0, Lc/e/a/a/j/y;->F:J

    .line 60
    invoke-virtual {p0}, Lc/e/a/a/j/y;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    iput-wide p1, p0, Lc/e/a/a/j/y;->G:J

    return-wide p1

    .line 62
    :cond_1
    iget v2, p0, Lc/e/a/a/j/y;->y:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    .line 63
    invoke-virtual {p0, v0, p1, p2}, Lc/e/a/a/j/y;->a([ZJ)Z

    move-result v0

    if-eqz v0, :cond_2

    return-wide p1

    .line 64
    :cond_2
    iput-boolean v1, p0, Lc/e/a/a/j/y;->H:Z

    .line 65
    iput-wide p1, p0, Lc/e/a/a/j/y;->G:J

    .line 66
    iput-boolean v1, p0, Lc/e/a/a/j/y;->J:Z

    .line 67
    iget-object v0, p0, Lc/e/a/a/j/y;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lc/e/a/a/j/y;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->b()V

    goto :goto_2

    .line 69
    :cond_3
    iget-object v0, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 70
    invoke-virtual {v3}, Lc/e/a/a/j/B;->m()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-wide p1
.end method

.method public a(JLc/e/a/a/V;)J
    .locals 9

    .line 71
    invoke-virtual {p0}, Lc/e/a/a/j/y;->k()Lc/e/a/a/j/y$d;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/a/j/y$d;->a:Lc/e/a/a/e/o;

    .line 72
    invoke-interface {v0}, Lc/e/a/a/e/o;->c()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 73
    :cond_0
    invoke-interface {v0, p1, p2}, Lc/e/a/a/e/o;->b(J)Lc/e/a/a/e/o$a;

    move-result-object v0

    .line 74
    iget-object v1, v0, Lc/e/a/a/e/o$a;->a:Lc/e/a/a/e/p;

    iget-wide v5, v1, Lc/e/a/a/e/p;->b:J

    iget-object v0, v0, Lc/e/a/a/e/o$a;->b:Lc/e/a/a/e/p;

    iget-wide v7, v0, Lc/e/a/a/e/p;->b:J

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v8}, Lc/e/a/a/o/I;->a(JLc/e/a/a/V;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public a([Lc/e/a/a/l/n;[Z[Lc/e/a/a/j/C;[ZJ)J
    .locals 8

    .line 9
    invoke-virtual {p0}, Lc/e/a/a/j/y;->k()Lc/e/a/a/j/y$d;

    move-result-object v0

    .line 10
    iget-object v1, v0, Lc/e/a/a/j/y$d;->b:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 11
    iget-object v0, v0, Lc/e/a/a/j/y$d;->d:[Z

    .line 12
    iget v2, p0, Lc/e/a/a/j/y;->C:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 13
    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    .line 14
    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v5, p1, v4

    if-eqz v5, :cond_0

    aget-boolean v5, p2, v4

    if-nez v5, :cond_1

    .line 15
    :cond_0
    aget-object v5, p3, v4

    check-cast v5, Lc/e/a/a/j/y$e;

    invoke-static {v5}, Lc/e/a/a/j/y$e;->a(Lc/e/a/a/j/y$e;)I

    move-result v5

    .line 16
    aget-boolean v7, v0, v5

    invoke-static {v7}, Lc/e/a/a/o/e;->b(Z)V

    .line 17
    iget v7, p0, Lc/e/a/a/j/y;->C:I

    sub-int/2addr v7, v6

    iput v7, p0, Lc/e/a/a/j/y;->C:I

    .line 18
    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    .line 19
    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 20
    :cond_2
    iget-boolean p2, p0, Lc/e/a/a/j/y;->z:Z

    if-eqz p2, :cond_3

    if-nez v2, :cond_4

    goto :goto_1

    :cond_3
    const-wide/16 v4, 0x0

    cmp-long p2, p5, v4

    if-eqz p2, :cond_4

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    move v2, p2

    const/4 p2, 0x0

    .line 21
    :goto_3
    array-length v4, p1

    if-ge p2, v4, :cond_9

    .line 22
    aget-object v4, p3, p2

    if-nez v4, :cond_8

    aget-object v4, p1, p2

    if-eqz v4, :cond_8

    .line 23
    aget-object v4, p1, p2

    .line 24
    invoke-interface {v4}, Lc/e/a/a/l/n;->length()I

    move-result v5

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    invoke-static {v5}, Lc/e/a/a/o/e;->b(Z)V

    .line 25
    invoke-interface {v4, v3}, Lc/e/a/a/l/n;->b(I)I

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    invoke-static {v5}, Lc/e/a/a/o/e;->b(Z)V

    .line 26
    invoke-interface {v4}, Lc/e/a/a/l/n;->a()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v4

    .line 27
    aget-boolean v5, v0, v4

    xor-int/2addr v5, v6

    invoke-static {v5}, Lc/e/a/a/o/e;->b(Z)V

    .line 28
    iget v5, p0, Lc/e/a/a/j/y;->C:I

    add-int/2addr v5, v6

    iput v5, p0, Lc/e/a/a/j/y;->C:I

    .line 29
    aput-boolean v6, v0, v4

    .line 30
    new-instance v5, Lc/e/a/a/j/y$e;

    invoke-direct {v5, p0, v4}, Lc/e/a/a/j/y$e;-><init>(Lc/e/a/a/j/y;I)V

    aput-object v5, p3, p2

    .line 31
    aput-boolean v6, p4, p2

    if-nez v2, :cond_8

    .line 32
    iget-object v2, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    aget-object v2, v2, v4

    .line 33
    invoke-virtual {v2}, Lc/e/a/a/j/B;->n()V

    .line 34
    invoke-virtual {v2, p5, p6, v6, v6}, Lc/e/a/a/j/B;->a(JZZ)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    .line 35
    invoke-virtual {v2}, Lc/e/a/a/j/B;->g()I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :cond_8
    :goto_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 36
    :cond_9
    iget p1, p0, Lc/e/a/a/j/y;->C:I

    if-nez p1, :cond_c

    .line 37
    iput-boolean v3, p0, Lc/e/a/a/j/y;->H:Z

    .line 38
    iput-boolean v3, p0, Lc/e/a/a/j/y;->A:Z

    .line 39
    iget-object p1, p0, Lc/e/a/a/j/y;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->c()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 40
    iget-object p1, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    array-length p2, p1

    :goto_7
    if-ge v3, p2, :cond_a

    aget-object p3, p1, v3

    .line 41
    invoke-virtual {p3}, Lc/e/a/a/j/B;->b()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 42
    :cond_a
    iget-object p1, p0, Lc/e/a/a/j/y;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->b()V

    goto :goto_a

    .line 43
    :cond_b
    iget-object p1, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    array-length p2, p1

    :goto_8
    if-ge v3, p2, :cond_e

    aget-object p3, p1, v3

    .line 44
    invoke-virtual {p3}, Lc/e/a/a/j/B;->m()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_c
    if-eqz v2, :cond_e

    .line 45
    invoke-virtual {p0, p5, p6}, Lc/e/a/a/j/y;->a(J)J

    move-result-wide p5

    .line 46
    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    .line 47
    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    .line 48
    aput-boolean v6, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 49
    :cond_e
    :goto_a
    iput-boolean v6, p0, Lc/e/a/a/j/y;->z:Z

    return-wide p5
.end method

.method public a(II)Lc/e/a/a/e/q;
    .locals 1

    .line 131
    new-instance p2, Lc/e/a/a/j/y$f;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lc/e/a/a/j/y$f;-><init>(IZ)V

    invoke-virtual {p0, p2}, Lc/e/a/a/j/y;->a(Lc/e/a/a/j/y$f;)Lc/e/a/a/e/q;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lc/e/a/a/j/y$f;)Lc/e/a/a/e/q;
    .locals 4

    .line 137
    iget-object v0, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 138
    iget-object v2, p0, Lc/e/a/a/j/y;->t:[Lc/e/a/a/j/y$f;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lc/e/a/a/j/y$f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    iget-object p1, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_1
    new-instance v1, Lc/e/a/a/j/B;

    iget-object v2, p0, Lc/e/a/a/j/y;->g:Lc/e/a/a/n/e;

    invoke-direct {v1, v2}, Lc/e/a/a/j/B;-><init>(Lc/e/a/a/n/e;)V

    .line 141
    invoke-virtual {v1, p0}, Lc/e/a/a/j/B;->a(Lc/e/a/a/j/B$b;)V

    .line 142
    iget-object v2, p0, Lc/e/a/a/j/y;->t:[Lc/e/a/a/j/y$f;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lc/e/a/a/j/y$f;

    .line 143
    aput-object p1, v2, v0

    .line 144
    invoke-static {v2}, Lc/e/a/a/o/I;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    check-cast v2, [Lc/e/a/a/j/y$f;

    iput-object v2, p0, Lc/e/a/a/j/y;->t:[Lc/e/a/a/j/y$f;

    .line 145
    iget-object p1, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lc/e/a/a/j/B;

    .line 146
    aput-object v1, p1, v0

    .line 147
    invoke-static {p1}, Lc/e/a/a/o/I;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    check-cast p1, [Lc/e/a/a/j/B;

    iput-object p1, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    return-object v1
.end method

.method public a(Lc/e/a/a/j/y$a;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;
    .locals 25

    move-object/from16 v0, p0

    .line 115
    invoke-virtual/range {p0 .. p1}, Lc/e/a/a/j/y;->a(Lc/e/a/a/j/y$a;)V

    .line 116
    iget-object v1, v0, Lc/e/a/a/j/y;->d:Lc/e/a/a/n/v;

    iget v2, v0, Lc/e/a/a/j/y;->y:I

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    .line 117
    invoke-interface/range {v1 .. v6}, Lc/e/a/a/n/v;->a(IJLjava/io/IOException;I)J

    move-result-wide v1

    const/4 v3, 0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v1, v4

    if-nez v6, :cond_0

    .line 118
    sget-object v1, Lcom/google/android/exoplayer2/upstream/Loader;->d:Lcom/google/android/exoplayer2/upstream/Loader$b;

    move-object/from16 v5, p1

    goto :goto_1

    .line 119
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/j/y;->i()I

    move-result v4

    .line 120
    iget v5, v0, Lc/e/a/a/j/y;->I:I

    if-le v4, v5, :cond_1

    move-object/from16 v5, p1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    move-object/from16 v5, p1

    const/4 v6, 0x0

    .line 121
    :goto_0
    invoke-virtual {v0, v5, v4}, Lc/e/a/a/j/y;->a(Lc/e/a/a/j/y$a;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 122
    invoke-static {v6, v1, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->a(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$b;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/google/android/exoplayer2/upstream/Loader;->c:Lcom/google/android/exoplayer2/upstream/Loader$b;

    .line 123
    :goto_1
    iget-object v4, v0, Lc/e/a/a/j/y;->e:Lc/e/a/a/j/w$a;

    .line 124
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/y$a;->a(Lc/e/a/a/j/y$a;)Lc/e/a/a/n/l;

    move-result-object v2

    .line 125
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/y$a;->b(Lc/e/a/a/j/y$a;)Lc/e/a/a/n/z;

    move-result-object v6

    invoke-virtual {v6}, Lc/e/a/a/n/z;->c()Landroid/net/Uri;

    move-result-object v6

    .line 126
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/y$a;->b(Lc/e/a/a/j/y$a;)Lc/e/a/a/n/z;

    move-result-object v7

    invoke-virtual {v7}, Lc/e/a/a/n/z;->d()Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 127
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/y$a;->c(Lc/e/a/a/j/y$a;)J

    move-result-wide v13

    move-wide v15, v13

    iget-wide v12, v0, Lc/e/a/a/j/y;->D:J

    .line 128
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/y$a;->b(Lc/e/a/a/j/y$a;)Lc/e/a/a/n/z;

    move-result-object v5

    invoke-virtual {v5}, Lc/e/a/a/n/z;->b()J

    move-result-wide v21

    .line 129
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader$b;->a()Z

    move-result v5

    xor-int/lit8 v24, v5, 0x1

    move-object v5, v2

    move-wide/from16 v17, v12

    const/4 v2, 0x0

    move-object v12, v2

    move-wide v13, v15

    move-wide/from16 v15, v17

    move-wide/from16 v17, p2

    move-wide/from16 v19, p4

    move-object/from16 v23, p6

    .line 130
    invoke-virtual/range {v4 .. v24}, Lc/e/a/a/j/w$a;->a(Lc/e/a/a/n/l;Landroid/net/Uri;Ljava/util/Map;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    return-object v1
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;
    .locals 0

    .line 5
    check-cast p1, Lc/e/a/a/j/y$a;

    invoke-virtual/range {p0 .. p7}, Lc/e/a/a/j/y;->a(Lc/e/a/a/j/y$a;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lc/e/a/a/j/y;->u:Z

    .line 133
    iget-object v0, p0, Lc/e/a/a/j/y;->o:Landroid/os/Handler;

    iget-object v1, p0, Lc/e/a/a/j/y;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(JZ)V
    .locals 5

    .line 50
    invoke-virtual {p0}, Lc/e/a/a/j/y;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/j/y;->k()Lc/e/a/a/j/y$d;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/a/j/y$d;->d:[Z

    .line 52
    iget-object v1, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 53
    iget-object v3, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    aget-object v3, v3, v2

    aget-boolean v4, v0, v2

    invoke-virtual {v3, p1, p2, p3, v4}, Lc/e/a/a/j/B;->b(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lc/e/a/a/e/o;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lc/e/a/a/j/y;->r:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lc/e/a/a/e/o$b;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, v0, v1}, Lc/e/a/a/e/o$b;-><init>(J)V

    :goto_0
    iput-object p1, p0, Lc/e/a/a/j/y;->q:Lc/e/a/a/e/o;

    .line 135
    iget-object p1, p0, Lc/e/a/a/j/y;->o:Landroid/os/Handler;

    iget-object v0, p0, Lc/e/a/a/j/y;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lc/e/a/a/j/u$a;J)V
    .locals 0

    .line 6
    iput-object p1, p0, Lc/e/a/a/j/y;->p:Lc/e/a/a/j/u$a;

    .line 7
    iget-object p1, p0, Lc/e/a/a/j/y;->l:Lc/e/a/a/o/i;

    invoke-virtual {p1}, Lc/e/a/a/o/i;->c()Z

    .line 8
    invoke-virtual {p0}, Lc/e/a/a/j/y;->r()V

    return-void
.end method

.method public final a(Lc/e/a/a/j/y$a;)V
    .locals 5

    .line 148
    iget-wide v0, p0, Lc/e/a/a/j/y;->E:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 149
    invoke-static {p1}, Lc/e/a/a/j/y$a;->d(Lc/e/a/a/j/y$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lc/e/a/a/j/y;->E:J

    :cond_0
    return-void
.end method

.method public a(Lc/e/a/a/j/y$a;JJ)V
    .locals 24

    move-object/from16 v0, p0

    .line 88
    iget-wide v1, v0, Lc/e/a/a/j/y;->D:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-object v1, v0, Lc/e/a/a/j/y;->q:Lc/e/a/a/e/o;

    if-eqz v1, :cond_1

    .line 89
    invoke-interface {v1}, Lc/e/a/a/e/o;->c()Z

    move-result v1

    .line 90
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/j/y;->j()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    .line 91
    :goto_0
    iput-wide v2, v0, Lc/e/a/a/j/y;->D:J

    .line 92
    iget-object v2, v0, Lc/e/a/a/j/y;->f:Lc/e/a/a/j/y$c;

    iget-wide v3, v0, Lc/e/a/a/j/y;->D:J

    invoke-interface {v2, v3, v4, v1}, Lc/e/a/a/j/y$c;->a(JZ)V

    .line 93
    :cond_1
    iget-object v5, v0, Lc/e/a/a/j/y;->e:Lc/e/a/a/j/w$a;

    .line 94
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/y$a;->a(Lc/e/a/a/j/y$a;)Lc/e/a/a/n/l;

    move-result-object v6

    .line 95
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/y$a;->b(Lc/e/a/a/j/y$a;)Lc/e/a/a/n/z;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/a/n/z;->c()Landroid/net/Uri;

    move-result-object v7

    .line 96
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/y$a;->b(Lc/e/a/a/j/y$a;)Lc/e/a/a/n/z;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/a/n/z;->d()Ljava/util/Map;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 97
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/y$a;->c(Lc/e/a/a/j/y$a;)J

    move-result-wide v14

    iget-wide v1, v0, Lc/e/a/a/j/y;->D:J

    move-wide/from16 v16, v1

    .line 98
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/y$a;->b(Lc/e/a/a/j/y$a;)Lc/e/a/a/n/z;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/a/n/z;->b()J

    move-result-wide v22

    move-wide/from16 v18, p2

    move-wide/from16 v20, p4

    .line 99
    invoke-virtual/range {v5 .. v23}, Lc/e/a/a/j/w$a;->b(Lc/e/a/a/n/l;Landroid/net/Uri;Ljava/util/Map;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 100
    invoke-virtual/range {p0 .. p1}, Lc/e/a/a/j/y;->a(Lc/e/a/a/j/y$a;)V

    const/4 v1, 0x1

    .line 101
    iput-boolean v1, v0, Lc/e/a/a/j/y;->J:Z

    .line 102
    iget-object v1, v0, Lc/e/a/a/j/y;->p:Lc/e/a/a/j/u$a;

    invoke-static {v1}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lc/e/a/a/j/u$a;

    invoke-interface {v1, v0}, Lc/e/a/a/j/D$a;->a(Lc/e/a/a/j/D;)V

    return-void
.end method

.method public a(Lc/e/a/a/j/y$a;JJZ)V
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    .line 103
    iget-object v1, v0, Lc/e/a/a/j/y;->e:Lc/e/a/a/j/w$a;

    .line 104
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/y$a;->a(Lc/e/a/a/j/y$a;)Lc/e/a/a/n/l;

    move-result-object v2

    .line 105
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/y$a;->b(Lc/e/a/a/j/y$a;)Lc/e/a/a/n/z;

    move-result-object v3

    invoke-virtual {v3}, Lc/e/a/a/n/z;->c()Landroid/net/Uri;

    move-result-object v3

    .line 106
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/y$a;->b(Lc/e/a/a/j/y$a;)Lc/e/a/a/n/z;

    move-result-object v4

    invoke-virtual {v4}, Lc/e/a/a/n/z;->d()Ljava/util/Map;

    move-result-object v4

    .line 107
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/y$a;->c(Lc/e/a/a/j/y$a;)J

    move-result-wide v10

    iget-wide v12, v0, Lc/e/a/a/j/y;->D:J

    .line 108
    invoke-static/range {p1 .. p1}, Lc/e/a/a/j/y$a;->b(Lc/e/a/a/j/y$a;)Lc/e/a/a/n/z;

    move-result-object v5

    invoke-virtual {v5}, Lc/e/a/a/n/z;->b()J

    move-result-wide v18

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 109
    invoke-virtual/range {v1 .. v19}, Lc/e/a/a/j/w$a;->a(Lc/e/a/a/n/l;Landroid/net/Uri;Ljava/util/Map;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_1

    .line 110
    invoke-virtual/range {p0 .. p1}, Lc/e/a/a/j/y;->a(Lc/e/a/a/j/y$a;)V

    .line 111
    iget-object v1, v0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 112
    invoke-virtual {v4}, Lc/e/a/a/j/B;->m()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    :cond_0
    iget v1, v0, Lc/e/a/a/j/y;->C:I

    if-lez v1, :cond_1

    .line 114
    iget-object v1, v0, Lc/e/a/a/j/y;->p:Lc/e/a/a/j/u$a;

    invoke-static {v1}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lc/e/a/a/j/u$a;

    invoke-interface {v1, v0}, Lc/e/a/a/j/D$a;->a(Lc/e/a/a/j/D;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 136
    iget-object p1, p0, Lc/e/a/a/j/y;->o:Landroid/os/Handler;

    iget-object v0, p0, Lc/e/a/a/j/y;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJ)V
    .locals 0

    .line 4
    check-cast p1, Lc/e/a/a/j/y$a;

    invoke-virtual/range {p0 .. p5}, Lc/e/a/a/j/y;->a(Lc/e/a/a/j/y$a;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJZ)V
    .locals 0

    .line 3
    check-cast p1, Lc/e/a/a/j/y$a;

    invoke-virtual/range {p0 .. p6}, Lc/e/a/a/j/y;->a(Lc/e/a/a/j/y$a;JJZ)V

    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 75
    invoke-virtual {p0}, Lc/e/a/a/j/y;->s()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lc/e/a/a/j/y;->J:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lc/e/a/a/j/B;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final a(Lc/e/a/a/j/y$a;I)Z
    .locals 6

    .line 150
    iget-wide v0, p0, Lc/e/a/a/j/y;->E:J

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_3

    iget-object v0, p0, Lc/e/a/a/j/y;->q:Lc/e/a/a/e/o;

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0}, Lc/e/a/a/e/o;->d()J

    move-result-wide v0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    iget-boolean p2, p0, Lc/e/a/a/j/y;->v:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lc/e/a/a/j/y;->s()Z

    move-result p2

    if-nez p2, :cond_1

    .line 153
    iput-boolean v2, p0, Lc/e/a/a/j/y;->H:Z

    return v0

    .line 154
    :cond_1
    iget-boolean p2, p0, Lc/e/a/a/j/y;->v:Z

    iput-boolean p2, p0, Lc/e/a/a/j/y;->A:Z

    const-wide/16 v3, 0x0

    .line 155
    iput-wide v3, p0, Lc/e/a/a/j/y;->F:J

    .line 156
    iput v0, p0, Lc/e/a/a/j/y;->I:I

    .line 157
    iget-object p2, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v5, p2, v0

    .line 158
    invoke-virtual {v5}, Lc/e/a/a/j/B;->m()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_2
    invoke-static {p1, v3, v4, v3, v4}, Lc/e/a/a/j/y$a;->a(Lc/e/a/a/j/y$a;JJ)V

    return v2

    .line 160
    :cond_3
    :goto_1
    iput p2, p0, Lc/e/a/a/j/y;->I:I

    return v2
.end method

.method public final a([ZJ)Z
    .locals 6

    .line 161
    iget-object v0, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 162
    iget-object v4, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    aget-object v4, v4, v2

    .line 163
    invoke-virtual {v4}, Lc/e/a/a/j/B;->n()V

    .line 164
    invoke-virtual {v4, p2, p3, v3, v1}, Lc/e/a/a/j/B;->a(JZZ)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    .line 165
    aget-boolean v3, p1, v2

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lc/e/a/a/j/y;->x:Z

    if-nez v3, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public b()J
    .locals 2

    .line 6
    iget v0, p0, Lc/e/a/a/j/y;->C:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/j/y;->g()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final b(I)V
    .locals 10

    .line 7
    invoke-virtual {p0}, Lc/e/a/a/j/y;->k()Lc/e/a/a/j/y$d;

    move-result-object v0

    .line 8
    iget-object v1, v0, Lc/e/a/a/j/y$d;->e:[Z

    .line 9
    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    .line 10
    iget-object v0, v0, Lc/e/a/a/j/y$d;->b:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 11
    iget-object v3, p0, Lc/e/a/a/j/y;->e:Lc/e/a/a/j/w$a;

    iget-object v0, v5, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Lc/e/a/a/o/s;->f(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-wide v8, p0, Lc/e/a/a/j/y;->F:J

    .line 13
    invoke-virtual/range {v3 .. v9}, Lc/e/a/a/j/w$a;->a(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 14
    aput-boolean v0, v1, p1

    :cond_0
    return-void
.end method

.method public b(J)Z
    .locals 0

    .line 2
    iget-boolean p1, p0, Lc/e/a/a/j/y;->J:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lc/e/a/a/j/y;->H:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lc/e/a/a/j/y;->v:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lc/e/a/a/j/y;->C:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lc/e/a/a/j/y;->l:Lc/e/a/a/o/i;

    invoke-virtual {p1}, Lc/e/a/a/o/i;->c()Z

    move-result p1

    .line 4
    iget-object p2, p0, Lc/e/a/a/j/y;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/Loader;->c()Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    invoke-virtual {p0}, Lc/e/a/a/j/y;->r()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(I)V
    .locals 3

    .line 3
    invoke-virtual {p0}, Lc/e/a/a/j/y;->k()Lc/e/a/a/j/y$d;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/a/j/y$d;->c:[Z

    .line 4
    iget-boolean v1, p0, Lc/e/a/a/j/y;->H:Z

    if-eqz v1, :cond_2

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    aget-object p1, v0, p1

    .line 5
    invoke-virtual {p1}, Lc/e/a/a/j/B;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lc/e/a/a/j/y;->G:J

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lc/e/a/a/j/y;->H:Z

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Lc/e/a/a/j/y;->A:Z

    .line 9
    iput-wide v0, p0, Lc/e/a/a/j/y;->F:J

    .line 10
    iput p1, p0, Lc/e/a/a/j/y;->I:I

    .line 11
    iget-object v0, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    array-length v1, v0

    :goto_0
    if-ge p1, v1, :cond_1

    aget-object v2, v0, p1

    .line 12
    invoke-virtual {v2}, Lc/e/a/a/j/B;->m()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lc/e/a/a/j/y;->p:Lc/e/a/a/j/u$a;

    invoke-static {p1}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc/e/a/a/j/u$a;

    invoke-interface {p1, p0}, Lc/e/a/a/j/D$a;->a(Lc/e/a/a/j/D;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public c(J)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/j/y;->p()V

    .line 3
    iget-boolean v0, p0, Lc/e/a/a/j/y;->J:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lc/e/a/a/j/y;->v:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Loading finished before preparation is complete."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public e()J
    .locals 2

    .line 2
    iget-boolean v0, p0, Lc/e/a/a/j/y;->B:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/e/a/a/j/y;->e:Lc/e/a/a/j/w$a;

    invoke-virtual {v0}, Lc/e/a/a/j/w$a;->c()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lc/e/a/a/j/y;->B:Z

    .line 5
    :cond_0
    iget-boolean v0, p0, Lc/e/a/a/j/y;->A:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lc/e/a/a/j/y;->J:Z

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lc/e/a/a/j/y;->i()I

    move-result v0

    iget v1, p0, Lc/e/a/a/j/y;->I:I

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lc/e/a/a/j/y;->A:Z

    .line 8
    iget-wide v0, p0, Lc/e/a/a/j/y;->F:J

    return-wide v0

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public f()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/j/y;->k()Lc/e/a/a/j/y$d;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/a/j/y$d;->b:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public g()J
    .locals 11

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/j/y;->k()Lc/e/a/a/j/y$d;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/a/j/y$d;->c:[Z

    .line 2
    iget-boolean v1, p0, Lc/e/a/a/j/y;->J:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    return-wide v2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/j/y;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-wide v0, p0, Lc/e/a/a/j/y;->G:J

    return-wide v0

    .line 5
    :cond_1
    iget-boolean v1, p0, Lc/e/a/a/j/y;->x:Z

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v1, :cond_3

    .line 6
    iget-object v1, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    array-length v1, v1

    const/4 v6, 0x0

    move-wide v7, v4

    :goto_0
    if-ge v6, v1, :cond_4

    .line 7
    aget-boolean v9, v0, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lc/e/a/a/j/B;->k()Z

    move-result v9

    if-nez v9, :cond_2

    .line 8
    iget-object v9, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    aget-object v9, v9, v6

    .line 9
    invoke-virtual {v9}, Lc/e/a/a/j/B;->f()J

    move-result-wide v9

    .line 10
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    .line 11
    invoke-virtual {p0}, Lc/e/a/a/j/y;->j()J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v2

    if-nez v0, :cond_6

    .line 12
    iget-wide v7, p0, Lc/e/a/a/j/y;->F:J

    :cond_6
    return-wide v7
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lc/e/a/a/j/B;->m()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/y;->k:Lc/e/a/a/j/y$b;

    invoke-virtual {v0}, Lc/e/a/a/j/y$b;->a()V

    return-void
.end method

.method public final i()I
    .locals 5

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 2
    invoke-virtual {v4}, Lc/e/a/a/j/B;->i()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public final j()J
    .locals 7

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    array-length v1, v0

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    .line 2
    invoke-virtual {v5}, Lc/e/a/a/j/B;->f()J

    move-result-wide v5

    .line 3
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public final k()Lc/e/a/a/j/y$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/y;->w:Lc/e/a/a/j/y$d;

    invoke-static {v0}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lc/e/a/a/j/y$d;

    return-object v0
.end method

.method public l()Lc/e/a/a/e/q;
    .locals 3

    .line 1
    new-instance v0, Lc/e/a/a/j/y$f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lc/e/a/a/j/y$f;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lc/e/a/a/j/y;->a(Lc/e/a/a/j/y$f;)Lc/e/a/a/e/q;

    move-result-object v0

    return-object v0
.end method

.method public final m()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lc/e/a/a/j/y;->G:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic n()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/j/y;->K:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/y;->p:Lc/e/a/a/j/u$a;

    invoke-static {v0}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lc/e/a/a/j/u$a;

    .line 3
    invoke-interface {v0, p0}, Lc/e/a/a/j/D$a;->a(Lc/e/a/a/j/D;)V

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 12

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/y;->q:Lc/e/a/a/e/o;

    .line 2
    iget-boolean v1, p0, Lc/e/a/a/j/y;->K:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lc/e/a/a/j/y;->v:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lc/e/a/a/j/y;->u:Z

    if-eqz v1, :cond_b

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 3
    :cond_0
    iget-object v1, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 4
    invoke-virtual {v5}, Lc/e/a/a/j/B;->h()Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    if-nez v5, :cond_1

    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v1, p0, Lc/e/a/a/j/y;->l:Lc/e/a/a/o/i;

    invoke-virtual {v1}, Lc/e/a/a/o/i;->b()Z

    .line 6
    iget-object v1, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    array-length v1, v1

    .line 7
    new-array v2, v1, [Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 8
    new-array v4, v1, [Z

    .line 9
    invoke-interface {v0}, Lc/e/a/a/e/o;->d()J

    move-result-wide v5

    iput-wide v5, p0, Lc/e/a/a/j/y;->D:J

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v1, :cond_9

    .line 10
    iget-object v7, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lc/e/a/a/j/B;->h()Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .line 11
    iget-object v8, v7, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    .line 12
    invoke-static {v8}, Lc/e/a/a/o/s;->j(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 13
    invoke-static {v8}, Lc/e/a/a/o/s;->l(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v8, 0x1

    .line 14
    :goto_3
    aput-boolean v8, v4, v5

    .line 15
    iget-boolean v10, p0, Lc/e/a/a/j/y;->x:Z

    or-int/2addr v8, v10

    iput-boolean v8, p0, Lc/e/a/a/j/y;->x:Z

    .line 16
    iget-object v8, p0, Lc/e/a/a/j/y;->r:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    if-eqz v8, :cond_8

    if-nez v9, :cond_5

    .line 17
    iget-object v10, p0, Lc/e/a/a/j/y;->t:[Lc/e/a/a/j/y$f;

    aget-object v10, v10, v5

    iget-boolean v10, v10, Lc/e/a/a/j/y$f;->b:Z

    if-eqz v10, :cond_7

    .line 18
    :cond_5
    iget-object v10, v7, Lcom/google/android/exoplayer2/Format;->g:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v10, :cond_6

    .line 19
    new-instance v10, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v11, v6, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v8, v11, v3

    invoke-direct {v10, v11}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    goto :goto_4

    :cond_6
    new-array v11, v6, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v8, v11, v3

    .line 20
    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/metadata/Metadata;->a([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v10

    .line 21
    :goto_4
    invoke-virtual {v7, v10}, Lcom/google/android/exoplayer2/Format;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    :cond_7
    if-eqz v9, :cond_8

    .line 22
    iget v9, v7, Lcom/google/android/exoplayer2/Format;->e:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_8

    iget v8, v8, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->a:I

    if-eq v8, v10, :cond_8

    .line 23
    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/Format;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .line 24
    :cond_8
    new-instance v8, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v6, v6, [Lcom/google/android/exoplayer2/Format;

    aput-object v7, v6, v3

    invoke-direct {v8, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v8, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 25
    :cond_9
    iget-wide v7, p0, Lc/e/a/a/j/y;->E:J

    const-wide/16 v9, -0x1

    cmp-long v1, v7, v9

    if-nez v1, :cond_a

    .line 26
    invoke-interface {v0}, Lc/e/a/a/e/o;->d()J

    move-result-wide v7

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v7, v9

    if-nez v1, :cond_a

    const/4 v1, 0x7

    goto :goto_5

    :cond_a
    const/4 v1, 0x1

    :goto_5
    iput v1, p0, Lc/e/a/a/j/y;->y:I

    .line 27
    new-instance v1, Lc/e/a/a/j/y$d;

    new-instance v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    invoke-direct {v1, v0, v3, v4}, Lc/e/a/a/j/y$d;-><init>(Lc/e/a/a/e/o;Lcom/google/android/exoplayer2/source/TrackGroupArray;[Z)V

    iput-object v1, p0, Lc/e/a/a/j/y;->w:Lc/e/a/a/j/y$d;

    .line 28
    iput-boolean v6, p0, Lc/e/a/a/j/y;->v:Z

    .line 29
    iget-object v1, p0, Lc/e/a/a/j/y;->f:Lc/e/a/a/j/y$c;

    iget-wide v2, p0, Lc/e/a/a/j/y;->D:J

    invoke-interface {v0}, Lc/e/a/a/e/o;->c()Z

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lc/e/a/a/j/y$c;->a(JZ)V

    .line 30
    iget-object v0, p0, Lc/e/a/a/j/y;->p:Lc/e/a/a/j/u$a;

    invoke-static {v0}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lc/e/a/a/j/u$a;

    invoke-interface {v0, p0}, Lc/e/a/a/j/u$a;->a(Lc/e/a/a/j/u;)V

    :cond_b
    :goto_6
    return-void
.end method

.method public p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/y;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v1, p0, Lc/e/a/a/j/y;->d:Lc/e/a/a/n/v;

    iget v2, p0, Lc/e/a/a/j/y;->y:I

    invoke-interface {v1, v2}, Lc/e/a/a/n/v;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->a(I)V

    return-void
.end method

.method public q()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/j/y;->v:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/y;->s:[Lc/e/a/a/j/B;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Lc/e/a/a/j/B;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/y;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$e;)V

    .line 5
    iget-object v0, p0, Lc/e/a/a/j/y;->o:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    iput-object v1, p0, Lc/e/a/a/j/y;->p:Lc/e/a/a/j/u$a;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lc/e/a/a/j/y;->K:Z

    .line 8
    iget-object v0, p0, Lc/e/a/a/j/y;->e:Lc/e/a/a/j/w$a;

    invoke-virtual {v0}, Lc/e/a/a/j/w$a;->b()V

    return-void
.end method

.method public final r()V
    .locals 22

    move-object/from16 v7, p0

    .line 1
    new-instance v8, Lc/e/a/a/j/y$a;

    iget-object v2, v7, Lc/e/a/a/j/y;->b:Landroid/net/Uri;

    iget-object v3, v7, Lc/e/a/a/j/y;->c:Lc/e/a/a/n/j;

    iget-object v4, v7, Lc/e/a/a/j/y;->k:Lc/e/a/a/j/y$b;

    iget-object v6, v7, Lc/e/a/a/j/y;->l:Lc/e/a/a/o/i;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Lc/e/a/a/j/y$a;-><init>(Lc/e/a/a/j/y;Landroid/net/Uri;Lc/e/a/a/n/j;Lc/e/a/a/j/y$b;Lc/e/a/a/e/i;Lc/e/a/a/o/i;)V

    .line 2
    iget-boolean v0, v7, Lc/e/a/a/j/y;->v:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/j/y;->k()Lc/e/a/a/j/y$d;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/a/j/y$d;->a:Lc/e/a/a/e/o;

    .line 4
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/j/y;->m()Z

    move-result v1

    invoke-static {v1}, Lc/e/a/a/o/e;->b(Z)V

    .line 5
    iget-wide v1, v7, Lc/e/a/a/j/y;->D:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v7, Lc/e/a/a/j/y;->G:J

    cmp-long v9, v5, v1

    if-ltz v9, :cond_0

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, v7, Lc/e/a/a/j/y;->J:Z

    .line 7
    iput-wide v3, v7, Lc/e/a/a/j/y;->G:J

    return-void

    .line 8
    :cond_0
    iget-wide v1, v7, Lc/e/a/a/j/y;->G:J

    .line 9
    invoke-interface {v0, v1, v2}, Lc/e/a/a/e/o;->b(J)Lc/e/a/a/e/o$a;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/a/e/o$a;->a:Lc/e/a/a/e/p;

    iget-wide v0, v0, Lc/e/a/a/e/p;->c:J

    iget-wide v5, v7, Lc/e/a/a/j/y;->G:J

    .line 10
    invoke-static {v8, v0, v1, v5, v6}, Lc/e/a/a/j/y$a;->a(Lc/e/a/a/j/y$a;JJ)V

    .line 11
    iput-wide v3, v7, Lc/e/a/a/j/y;->G:J

    .line 12
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/j/y;->i()I

    move-result v0

    iput v0, v7, Lc/e/a/a/j/y;->I:I

    .line 13
    iget-object v0, v7, Lc/e/a/a/j/y;->j:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v1, v7, Lc/e/a/a/j/y;->d:Lc/e/a/a/n/v;

    iget v2, v7, Lc/e/a/a/j/y;->y:I

    .line 14
    invoke-interface {v1, v2}, Lc/e/a/a/n/v;->a(I)I

    move-result v1

    .line 15
    invoke-virtual {v0, v8, v7, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$d;Lcom/google/android/exoplayer2/upstream/Loader$a;I)J

    move-result-wide v20

    .line 16
    iget-object v9, v7, Lc/e/a/a/j/y;->e:Lc/e/a/a/j/w$a;

    .line 17
    invoke-static {v8}, Lc/e/a/a/j/y$a;->a(Lc/e/a/a/j/y$a;)Lc/e/a/a/n/l;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 18
    invoke-static {v8}, Lc/e/a/a/j/y$a;->c(Lc/e/a/a/j/y$a;)J

    move-result-wide v16

    iget-wide v0, v7, Lc/e/a/a/j/y;->D:J

    move-wide/from16 v18, v0

    .line 19
    invoke-virtual/range {v9 .. v21}, Lc/e/a/a/j/w$a;->a(Lc/e/a/a/n/l;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    return-void
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/j/y;->A:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lc/e/a/a/j/y;->m()Z

    move-result v0

    if-eqz v0, :cond_0

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
