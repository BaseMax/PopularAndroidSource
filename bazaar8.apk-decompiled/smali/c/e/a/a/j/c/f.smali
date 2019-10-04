.class public final Lc/e/a/a/j/c/f;
.super Lc/e/a/a/j/m;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/j/c/f$f;,
        Lc/e/a/a/j/c/f$d;,
        Lc/e/a/a/j/c/f$i;,
        Lc/e/a/a/j/c/f$h;,
        Lc/e/a/a/j/c/f$e;,
        Lc/e/a/a/j/c/f$b;,
        Lc/e/a/a/j/c/f$a;,
        Lc/e/a/a/j/c/f$g;,
        Lc/e/a/a/j/c/f$c;
    }
.end annotation


# instance fields
.field public A:Landroid/os/Handler;

.field public B:Landroid/net/Uri;

.field public C:Landroid/net/Uri;

.field public D:Lc/e/a/a/j/c/a/b;

.field public E:Z

.field public F:J

.field public G:J

.field public H:J

.field public I:I

.field public J:J

.field public K:I

.field public final f:Z

.field public final g:Lc/e/a/a/n/j$a;

.field public final h:Lc/e/a/a/j/c/c$a;

.field public final i:Lc/e/a/a/j/q;

.field public final j:Lc/e/a/a/n/v;

.field public final k:J

.field public final l:Z

.field public final m:Lc/e/a/a/j/w$a;

.field public final n:Lc/e/a/a/n/y$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/a/n/y$a<",
            "+",
            "Lc/e/a/a/j/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lc/e/a/a/j/c/f$e;

.field public final p:Ljava/lang/Object;

.field public final q:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/e/a/a/j/c/d;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Ljava/lang/Runnable;

.field public final s:Ljava/lang/Runnable;

.field public final t:Lc/e/a/a/j/c/k$b;

.field public final u:Lc/e/a/a/n/x;

.field public final v:Ljava/lang/Object;

.field public w:Lc/e/a/a/n/j;

.field public x:Lcom/google/android/exoplayer2/upstream/Loader;

.field public y:Lc/e/a/a/n/A;

.field public z:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.dash"

    .line 1
    invoke-static {v0}, Lc/e/a/a/C;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lc/e/a/a/j/c/a/b;Landroid/net/Uri;Lc/e/a/a/n/j$a;Lc/e/a/a/n/y$a;Lc/e/a/a/j/c/c$a;Lc/e/a/a/j/q;Lc/e/a/a/n/v;JZLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/j/c/a/b;",
            "Landroid/net/Uri;",
            "Lc/e/a/a/n/j$a;",
            "Lc/e/a/a/n/y$a<",
            "+",
            "Lc/e/a/a/j/c/a/b;",
            ">;",
            "Lc/e/a/a/j/c/c$a;",
            "Lc/e/a/a/j/q;",
            "Lc/e/a/a/n/v;",
            "JZ",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lc/e/a/a/j/m;-><init>()V

    .line 3
    iput-object p2, p0, Lc/e/a/a/j/c/f;->B:Landroid/net/Uri;

    .line 4
    iput-object p1, p0, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    .line 5
    iput-object p2, p0, Lc/e/a/a/j/c/f;->C:Landroid/net/Uri;

    .line 6
    iput-object p3, p0, Lc/e/a/a/j/c/f;->g:Lc/e/a/a/n/j$a;

    .line 7
    iput-object p4, p0, Lc/e/a/a/j/c/f;->n:Lc/e/a/a/n/y$a;

    .line 8
    iput-object p5, p0, Lc/e/a/a/j/c/f;->h:Lc/e/a/a/j/c/c$a;

    .line 9
    iput-object p7, p0, Lc/e/a/a/j/c/f;->j:Lc/e/a/a/n/v;

    .line 10
    iput-wide p8, p0, Lc/e/a/a/j/c/f;->k:J

    .line 11
    iput-boolean p10, p0, Lc/e/a/a/j/c/f;->l:Z

    .line 12
    iput-object p6, p0, Lc/e/a/a/j/c/f;->i:Lc/e/a/a/j/q;

    .line 13
    iput-object p11, p0, Lc/e/a/a/j/c/f;->v:Ljava/lang/Object;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 14
    :goto_0
    iput-boolean p3, p0, Lc/e/a/a/j/c/f;->f:Z

    const/4 p3, 0x0

    .line 15
    invoke-virtual {p0, p3}, Lc/e/a/a/j/m;->a(Lc/e/a/a/j/v$a;)Lc/e/a/a/j/w$a;

    move-result-object p4

    iput-object p4, p0, Lc/e/a/a/j/c/f;->m:Lc/e/a/a/j/w$a;

    .line 16
    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lc/e/a/a/j/c/f;->p:Ljava/lang/Object;

    .line 17
    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4}, Landroid/util/SparseArray;-><init>()V

    iput-object p4, p0, Lc/e/a/a/j/c/f;->q:Landroid/util/SparseArray;

    .line 18
    new-instance p4, Lc/e/a/a/j/c/f$b;

    invoke-direct {p4, p0, p3}, Lc/e/a/a/j/c/f$b;-><init>(Lc/e/a/a/j/c/f;Lc/e/a/a/j/c/e;)V

    iput-object p4, p0, Lc/e/a/a/j/c/f;->t:Lc/e/a/a/j/c/k$b;

    const-wide p4, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    iput-wide p4, p0, Lc/e/a/a/j/c/f;->J:J

    .line 20
    iget-boolean p4, p0, Lc/e/a/a/j/c/f;->f:Z

    if-eqz p4, :cond_1

    .line 21
    iget-boolean p1, p1, Lc/e/a/a/j/c/a/b;->d:Z

    xor-int/2addr p1, p2

    invoke-static {p1}, Lc/e/a/a/o/e;->b(Z)V

    .line 22
    iput-object p3, p0, Lc/e/a/a/j/c/f;->o:Lc/e/a/a/j/c/f$e;

    .line 23
    iput-object p3, p0, Lc/e/a/a/j/c/f;->r:Ljava/lang/Runnable;

    .line 24
    iput-object p3, p0, Lc/e/a/a/j/c/f;->s:Ljava/lang/Runnable;

    .line 25
    new-instance p1, Lc/e/a/a/n/x$a;

    invoke-direct {p1}, Lc/e/a/a/n/x$a;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/c/f;->u:Lc/e/a/a/n/x;

    goto :goto_1

    .line 26
    :cond_1
    new-instance p1, Lc/e/a/a/j/c/f$e;

    invoke-direct {p1, p0, p3}, Lc/e/a/a/j/c/f$e;-><init>(Lc/e/a/a/j/c/f;Lc/e/a/a/j/c/e;)V

    iput-object p1, p0, Lc/e/a/a/j/c/f;->o:Lc/e/a/a/j/c/f$e;

    .line 27
    new-instance p1, Lc/e/a/a/j/c/f$f;

    invoke-direct {p1, p0}, Lc/e/a/a/j/c/f$f;-><init>(Lc/e/a/a/j/c/f;)V

    iput-object p1, p0, Lc/e/a/a/j/c/f;->u:Lc/e/a/a/n/x;

    .line 28
    new-instance p1, Lc/e/a/a/j/c/b;

    invoke-direct {p1, p0}, Lc/e/a/a/j/c/b;-><init>(Lc/e/a/a/j/c/f;)V

    iput-object p1, p0, Lc/e/a/a/j/c/f;->r:Ljava/lang/Runnable;

    .line 29
    new-instance p1, Lc/e/a/a/j/c/a;

    invoke-direct {p1, p0}, Lc/e/a/a/j/c/a;-><init>(Lc/e/a/a/j/c/f;)V

    iput-object p1, p0, Lc/e/a/a/j/c/f;->s:Ljava/lang/Runnable;

    :goto_1
    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/a/j/c/a/b;Landroid/net/Uri;Lc/e/a/a/n/j$a;Lc/e/a/a/n/y$a;Lc/e/a/a/j/c/c$a;Lc/e/a/a/j/q;Lc/e/a/a/n/v;JZLjava/lang/Object;Lc/e/a/a/j/c/e;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p11}, Lc/e/a/a/j/c/f;-><init>(Lc/e/a/a/j/c/a/b;Landroid/net/Uri;Lc/e/a/a/n/j$a;Lc/e/a/a/n/y$a;Lc/e/a/a/j/c/c$a;Lc/e/a/a/j/q;Lc/e/a/a/n/v;JZLjava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/j/c/f;)Lcom/google/android/exoplayer2/upstream/Loader;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/j/c/f;->x:Lcom/google/android/exoplayer2/upstream/Loader;

    return-object p0
.end method

.method public static synthetic b(Lc/e/a/a/j/c/f;)Ljava/io/IOException;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/j/c/f;->z:Ljava/io/IOException;

    return-object p0
.end method


# virtual methods
.method public a(Lc/e/a/a/j/v$a;Lc/e/a/a/n/e;J)Lc/e/a/a/j/u;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 10
    iget-object v2, v1, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lc/e/a/a/j/c/f;->K:I

    sub-int v7, v2, v3

    .line 11
    iget-object v2, v0, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    .line 12
    invoke-virtual {v2, v7}, Lc/e/a/a/j/c/a/b;->a(I)Lc/e/a/a/j/c/a/f;

    move-result-object v2

    iget-wide v2, v2, Lc/e/a/a/j/c/a/f;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lc/e/a/a/j/m;->a(Lc/e/a/a/j/v$a;J)Lc/e/a/a/j/w$a;

    move-result-object v11

    .line 13
    new-instance v1, Lc/e/a/a/j/c/d;

    iget v2, v0, Lc/e/a/a/j/c/f;->K:I

    add-int v5, v2, v7

    iget-object v6, v0, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    iget-object v8, v0, Lc/e/a/a/j/c/f;->h:Lc/e/a/a/j/c/c$a;

    iget-object v9, v0, Lc/e/a/a/j/c/f;->y:Lc/e/a/a/n/A;

    iget-object v10, v0, Lc/e/a/a/j/c/f;->j:Lc/e/a/a/n/v;

    iget-wide v12, v0, Lc/e/a/a/j/c/f;->H:J

    iget-object v14, v0, Lc/e/a/a/j/c/f;->u:Lc/e/a/a/n/x;

    iget-object v2, v0, Lc/e/a/a/j/c/f;->i:Lc/e/a/a/j/q;

    iget-object v3, v0, Lc/e/a/a/j/c/f;->t:Lc/e/a/a/j/c/k$b;

    move-object v4, v1

    move-object/from16 v15, p2

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v4 .. v17}, Lc/e/a/a/j/c/d;-><init>(ILc/e/a/a/j/c/a/b;ILc/e/a/a/j/c/c$a;Lc/e/a/a/n/A;Lc/e/a/a/n/v;Lc/e/a/a/j/w$a;JLc/e/a/a/n/x;Lc/e/a/a/n/e;Lc/e/a/a/j/q;Lc/e/a/a/j/c/k$b;)V

    .line 14
    iget-object v2, v0, Lc/e/a/a/j/c/f;->q:Landroid/util/SparseArray;

    iget v3, v1, Lc/e/a/a/j/c/d;->b:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method public a(Lc/e/a/a/n/y;JJLjava/io/IOException;)Lcom/google/android/exoplayer2/upstream/Loader$b;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/n/y<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")",
            "Lcom/google/android/exoplayer2/upstream/Loader$b;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 30
    iget-object v2, v0, Lc/e/a/a/j/c/f;->m:Lc/e/a/a/j/w$a;

    iget-object v3, v1, Lc/e/a/a/n/y;->a:Lc/e/a/a/n/l;

    .line 31
    invoke-virtual {p1}, Lc/e/a/a/n/y;->f()Landroid/net/Uri;

    move-result-object v4

    .line 32
    invoke-virtual {p1}, Lc/e/a/a/n/y;->d()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Lc/e/a/a/n/y;->b:I

    .line 33
    invoke-virtual {p1}, Lc/e/a/a/n/y;->c()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    .line 34
    invoke-virtual/range {v1 .. v13}, Lc/e/a/a/j/w$a;->a(Lc/e/a/a/n/l;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    move-object/from16 v1, p6

    .line 35
    invoke-virtual {p0, v1}, Lc/e/a/a/j/c/f;->a(Ljava/io/IOException;)V

    .line 36
    sget-object v1, Lcom/google/android/exoplayer2/upstream/Loader;->c:Lcom/google/android/exoplayer2/upstream/Loader$b;

    return-object v1
.end method

.method public a(Lc/e/a/a/n/y;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/n/y<",
            "Lc/e/a/a/j/c/a/b;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lcom/google/android/exoplayer2/upstream/Loader$b;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 20
    iget-object v2, v0, Lc/e/a/a/j/c/f;->j:Lc/e/a/a/n/v;

    const/4 v3, 0x4

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 21
    invoke-interface/range {v2 .. v7}, Lc/e/a/a/n/v;->a(IJLjava/io/IOException;I)J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 22
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->d:Lcom/google/android/exoplayer2/upstream/Loader$b;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 23
    invoke-static {v4, v2, v3}, Lcom/google/android/exoplayer2/upstream/Loader;->a(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$b;

    move-result-object v2

    .line 24
    :goto_0
    iget-object v3, v0, Lc/e/a/a/j/c/f;->m:Lc/e/a/a/j/w$a;

    iget-object v4, v1, Lc/e/a/a/n/y;->a:Lc/e/a/a/n/l;

    .line 25
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/n/y;->f()Landroid/net/Uri;

    move-result-object v5

    .line 26
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/n/y;->d()Ljava/util/Map;

    move-result-object v6

    iget v7, v1, Lc/e/a/a/n/y;->b:I

    .line 27
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/n/y;->c()J

    move-result-wide v12

    .line 28
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader$b;->a()Z

    move-result v1

    xor-int/lit8 v15, v1, 0x1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-object/from16 v14, p6

    .line 29
    invoke-virtual/range {v3 .. v15}, Lc/e/a/a/j/w$a;->a(Lc/e/a/a/n/l;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    return-object v2
.end method

.method public a()V
    .locals 1

    .line 9
    iget-object v0, p0, Lc/e/a/a/j/c/f;->u:Lc/e/a/a/n/x;

    invoke-interface {v0}, Lc/e/a/a/n/x;->a()V

    return-void
.end method

.method public a(J)V
    .locals 5

    .line 18
    iget-wide v0, p0, Lc/e/a/a/j/c/f;->J:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    .line 19
    :cond_0
    iput-wide p1, p0, Lc/e/a/a/j/c/f;->J:J

    :cond_1
    return-void
.end method

.method public final a(Lc/e/a/a/j/c/a/n;)V
    .locals 2

    .line 42
    iget-object v0, p1, Lc/e/a/a/j/c/a/n;->a:Ljava/lang/String;

    const-string v1, "urn:mpeg:dash:utc:direct:2014"

    .line 43
    invoke-static {v0, v1}, Lc/e/a/a/o/I;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "urn:mpeg:dash:utc:direct:2012"

    .line 44
    invoke-static {v0, v1}, Lc/e/a/a/o/I;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "urn:mpeg:dash:utc:http-iso:2014"

    .line 45
    invoke-static {v0, v1}, Lc/e/a/a/o/I;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "urn:mpeg:dash:utc:http-iso:2012"

    .line 46
    invoke-static {v0, v1}, Lc/e/a/a/o/I;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2014"

    .line 47
    invoke-static {v0, v1}, Lc/e/a/a/o/I;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2012"

    .line 48
    invoke-static {v0, v1}, Lc/e/a/a/o/I;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 49
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unsupported UTC timing scheme"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lc/e/a/a/j/c/f;->a(Ljava/io/IOException;)V

    goto :goto_3

    .line 50
    :cond_3
    :goto_0
    new-instance v0, Lc/e/a/a/j/c/f$i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/e/a/a/j/c/f$i;-><init>(Lc/e/a/a/j/c/e;)V

    invoke-virtual {p0, p1, v0}, Lc/e/a/a/j/c/f;->a(Lc/e/a/a/j/c/a/n;Lc/e/a/a/n/y$a;)V

    goto :goto_3

    .line 51
    :cond_4
    :goto_1
    new-instance v0, Lc/e/a/a/j/c/f$d;

    invoke-direct {v0}, Lc/e/a/a/j/c/f$d;-><init>()V

    invoke-virtual {p0, p1, v0}, Lc/e/a/a/j/c/f;->a(Lc/e/a/a/j/c/a/n;Lc/e/a/a/n/y$a;)V

    goto :goto_3

    .line 52
    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lc/e/a/a/j/c/f;->b(Lc/e/a/a/j/c/a/n;)V

    :goto_3
    return-void
.end method

.method public final a(Lc/e/a/a/j/c/a/n;Lc/e/a/a/n/y$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/j/c/a/n;",
            "Lc/e/a/a/n/y$a<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 53
    new-instance v0, Lc/e/a/a/n/y;

    iget-object v1, p0, Lc/e/a/a/j/c/f;->w:Lc/e/a/a/n/j;

    iget-object p1, p1, Lc/e/a/a/j/c/a/n;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x5

    invoke-direct {v0, v1, p1, v2, p2}, Lc/e/a/a/n/y;-><init>(Lc/e/a/a/n/j;Landroid/net/Uri;ILc/e/a/a/n/y$a;)V

    new-instance p1, Lc/e/a/a/j/c/f$h;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lc/e/a/a/j/c/f$h;-><init>(Lc/e/a/a/j/c/f;Lc/e/a/a/j/c/e;)V

    const/4 p2, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lc/e/a/a/j/c/f;->a(Lc/e/a/a/n/y;Lcom/google/android/exoplayer2/upstream/Loader$a;I)V

    return-void
.end method

.method public a(Lc/e/a/a/j/u;)V
    .locals 1

    .line 15
    check-cast p1, Lc/e/a/a/j/c/d;

    .line 16
    invoke-virtual {p1}, Lc/e/a/a/j/c/d;->c()V

    .line 17
    iget-object v0, p0, Lc/e/a/a/j/c/f;->q:Landroid/util/SparseArray;

    iget p1, p1, Lc/e/a/a/j/c/d;->b:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public a(Lc/e/a/a/n/A;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lc/e/a/a/j/c/f;->y:Lc/e/a/a/n/A;

    .line 3
    iget-boolean p1, p0, Lc/e/a/a/j/c/f;->f:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lc/e/a/a/j/c/f;->a(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lc/e/a/a/j/c/f;->g:Lc/e/a/a/n/j$a;

    invoke-interface {p1}, Lc/e/a/a/n/j$a;->a()Lc/e/a/a/n/j;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/j/c/f;->w:Lc/e/a/a/n/j;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v0, "Loader:DashMediaSource"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lc/e/a/a/j/c/f;->x:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 7
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/c/f;->A:Landroid/os/Handler;

    .line 8
    invoke-virtual {p0}, Lc/e/a/a/j/c/f;->g()V

    :goto_0
    return-void
.end method

.method public a(Lc/e/a/a/n/y;JJ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/n/y<",
            "*>;JJ)V"
        }
    .end annotation

    move-object v0, p1

    move-object v1, p0

    .line 37
    iget-object v2, v1, Lc/e/a/a/j/c/f;->m:Lc/e/a/a/j/w$a;

    iget-object v3, v0, Lc/e/a/a/n/y;->a:Lc/e/a/a/n/l;

    .line 38
    invoke-virtual {p1}, Lc/e/a/a/n/y;->f()Landroid/net/Uri;

    move-result-object v4

    .line 39
    invoke-virtual {p1}, Lc/e/a/a/n/y;->d()Ljava/util/Map;

    move-result-object v5

    iget v6, v0, Lc/e/a/a/n/y;->b:I

    .line 40
    invoke-virtual {p1}, Lc/e/a/a/n/y;->c()J

    move-result-wide v11

    move-wide v7, p2

    move-wide/from16 v9, p4

    .line 41
    invoke-virtual/range {v2 .. v12}, Lc/e/a/a/j/w$a;->a(Lc/e/a/a/n/l;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    return-void
.end method

.method public final a(Lc/e/a/a/n/y;Lcom/google/android/exoplayer2/upstream/Loader$a;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/e/a/a/n/y<",
            "TT;>;",
            "Lcom/google/android/exoplayer2/upstream/Loader$a<",
            "Lc/e/a/a/n/y<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lc/e/a/a/j/c/f;->x:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$d;Lcom/google/android/exoplayer2/upstream/Loader$a;I)J

    move-result-wide p2

    .line 100
    iget-object v0, p0, Lc/e/a/a/j/c/f;->m:Lc/e/a/a/j/w$a;

    iget-object v1, p1, Lc/e/a/a/n/y;->a:Lc/e/a/a/n/l;

    iget p1, p1, Lc/e/a/a/n/y;->b:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lc/e/a/a/j/w$a;->a(Lc/e/a/a/n/l;IJ)V

    return-void
.end method

.method public final a(Ljava/io/IOException;)V
    .locals 2

    const-string v0, "DashMediaSource"

    const-string v1, "Failed to resolve UtcTiming element."

    .line 54
    invoke-static {v0, v1, p1}, Lc/e/a/a/o/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 55
    invoke-virtual {p0, p1}, Lc/e/a/a/j/c/f;->a(Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 28

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 56
    :goto_0
    iget-object v3, v0, Lc/e/a/a/j/c/f;->q:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 57
    iget-object v3, v0, Lc/e/a/a/j/c/f;->q:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 58
    iget v4, v0, Lc/e/a/a/j/c/f;->K:I

    if-lt v3, v4, :cond_0

    .line 59
    iget-object v4, v0, Lc/e/a/a/j/c/f;->q:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/a/a/j/c/d;

    iget-object v5, v0, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    iget v6, v0, Lc/e/a/a/j/c/f;->K:I

    sub-int/2addr v3, v6

    invoke-virtual {v4, v5, v3}, Lc/e/a/a/j/c/d;->a(Lc/e/a/a/j/c/a/b;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_1
    iget-object v2, v0, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    invoke-virtual {v2}, Lc/e/a/a/j/c/a/b;->a()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 61
    iget-object v4, v0, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    invoke-virtual {v4, v1}, Lc/e/a/a/j/c/a/b;->a(I)Lc/e/a/a/j/c/a/f;

    move-result-object v4

    iget-object v5, v0, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    .line 62
    invoke-virtual {v5, v1}, Lc/e/a/a/j/c/a/b;->c(I)J

    move-result-wide v5

    .line 63
    invoke-static {v4, v5, v6}, Lc/e/a/a/j/c/f$g;->a(Lc/e/a/a/j/c/a/f;J)Lc/e/a/a/j/c/f$g;

    move-result-object v4

    .line 64
    iget-object v5, v0, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    .line 65
    invoke-virtual {v5, v2}, Lc/e/a/a/j/c/a/b;->a(I)Lc/e/a/a/j/c/a/f;

    move-result-object v5

    iget-object v6, v0, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    invoke-virtual {v6, v2}, Lc/e/a/a/j/c/a/b;->c(I)J

    move-result-wide v6

    .line 66
    invoke-static {v5, v6, v7}, Lc/e/a/a/j/c/f$g;->a(Lc/e/a/a/j/c/a/f;J)Lc/e/a/a/j/c/f$g;

    move-result-object v5

    .line 67
    iget-wide v6, v4, Lc/e/a/a/j/c/f$g;->b:J

    .line 68
    iget-wide v8, v5, Lc/e/a/a/j/c/f$g;->c:J

    .line 69
    iget-object v4, v0, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    iget-boolean v4, v4, Lc/e/a/a/j/c/a/b;->d:Z

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v12, 0x0

    if-eqz v4, :cond_5

    iget-boolean v4, v5, Lc/e/a/a/j/c/f$g;->a:Z

    if-nez v4, :cond_5

    .line 70
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/j/c/f;->d()J

    move-result-wide v4

    iget-object v14, v0, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    iget-wide v14, v14, Lc/e/a/a/j/c/a/b;->a:J

    invoke-static {v14, v15}, Lc/e/a/a/q;->a(J)J

    move-result-wide v14

    sub-long/2addr v4, v14

    .line 71
    iget-object v14, v0, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    .line 72
    invoke-virtual {v14, v2}, Lc/e/a/a/j/c/a/b;->a(I)Lc/e/a/a/j/c/a/f;

    move-result-object v14

    iget-wide v14, v14, Lc/e/a/a/j/c/a/f;->b:J

    invoke-static {v14, v15}, Lc/e/a/a/q;->a(J)J

    move-result-wide v14

    sub-long/2addr v4, v14

    .line 73
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 74
    iget-object v4, v0, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    iget-wide v4, v4, Lc/e/a/a/j/c/a/b;->f:J

    cmp-long v14, v4, v10

    if-eqz v14, :cond_4

    .line 75
    invoke-static {v4, v5}, Lc/e/a/a/q;->a(J)J

    move-result-wide v4

    sub-long v4, v8, v4

    :goto_1
    cmp-long v14, v4, v12

    if-gez v14, :cond_2

    if-lez v2, :cond_2

    .line 76
    iget-object v14, v0, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v14, v2}, Lc/e/a/a/j/c/a/b;->c(I)J

    move-result-wide v14

    add-long/2addr v4, v14

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    .line 77
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_2

    .line 78
    :cond_3
    iget-object v2, v0, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    invoke-virtual {v2, v1}, Lc/e/a/a/j/c/a/b;->c(I)J

    move-result-wide v4

    :goto_2
    move-wide v6, v4

    :cond_4
    move-wide/from16 v20, v6

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    move-wide/from16 v20, v6

    const/4 v2, 0x0

    :goto_3
    sub-long v8, v8, v20

    move-wide/from16 v22, v8

    const/4 v4, 0x0

    .line 79
    :goto_4
    iget-object v5, v0, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    invoke-virtual {v5}, Lc/e/a/a/j/c/a/b;->a()I

    move-result v5

    sub-int/2addr v5, v3

    if-ge v4, v5, :cond_6

    .line 80
    iget-object v5, v0, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    invoke-virtual {v5, v4}, Lc/e/a/a/j/c/a/b;->c(I)J

    move-result-wide v5

    add-long v22, v22, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 81
    :cond_6
    iget-object v3, v0, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    iget-boolean v4, v3, Lc/e/a/a/j/c/a/b;->d:Z

    if-eqz v4, :cond_9

    .line 82
    iget-wide v4, v0, Lc/e/a/a/j/c/f;->k:J

    .line 83
    iget-boolean v6, v0, Lc/e/a/a/j/c/f;->l:Z

    if-nez v6, :cond_7

    iget-wide v6, v3, Lc/e/a/a/j/c/a/b;->g:J

    cmp-long v3, v6, v10

    if-eqz v3, :cond_7

    move-wide v4, v6

    .line 84
    :cond_7
    invoke-static {v4, v5}, Lc/e/a/a/q;->a(J)J

    move-result-wide v3

    sub-long v3, v22, v3

    const-wide/32 v5, 0x4c4b40

    cmp-long v7, v3, v5

    if-gez v7, :cond_8

    const-wide/16 v3, 0x2

    .line 85
    div-long v3, v22, v3

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_8
    move-wide/from16 v24, v3

    goto :goto_5

    :cond_9
    move-wide/from16 v24, v12

    .line 86
    :goto_5
    iget-object v3, v0, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    iget-wide v4, v3, Lc/e/a/a/j/c/a/b;->a:J

    .line 87
    invoke-virtual {v3, v1}, Lc/e/a/a/j/c/a/b;->a(I)Lc/e/a/a/j/c/a/f;

    move-result-object v1

    iget-wide v6, v1, Lc/e/a/a/j/c/a/f;->b:J

    add-long/2addr v4, v6

    invoke-static/range {v20 .. v21}, Lc/e/a/a/q;->b(J)J

    move-result-wide v6

    add-long v17, v4, v6

    .line 88
    new-instance v1, Lc/e/a/a/j/c/f$a;

    iget-object v3, v0, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    iget-wide v4, v3, Lc/e/a/a/j/c/a/b;->a:J

    iget v6, v0, Lc/e/a/a/j/c/f;->K:I

    iget-object v7, v0, Lc/e/a/a/j/c/f;->v:Ljava/lang/Object;

    move-object v14, v1

    move-wide v15, v4

    move/from16 v19, v6

    move-object/from16 v26, v3

    move-object/from16 v27, v7

    invoke-direct/range {v14 .. v27}, Lc/e/a/a/j/c/f$a;-><init>(JJIJJJLc/e/a/a/j/c/a/b;Ljava/lang/Object;)V

    .line 89
    iget-object v3, v0, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    invoke-virtual {v0, v1, v3}, Lc/e/a/a/j/m;->a(Lc/e/a/a/Z;Ljava/lang/Object;)V

    .line 90
    iget-boolean v1, v0, Lc/e/a/a/j/c/f;->f:Z

    if-nez v1, :cond_d

    .line 91
    iget-object v1, v0, Lc/e/a/a/j/c/f;->A:Landroid/os/Handler;

    iget-object v3, v0, Lc/e/a/a/j/c/f;->s:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x1388

    if-eqz v2, :cond_a

    .line 92
    iget-object v1, v0, Lc/e/a/a/j/c/f;->A:Landroid/os/Handler;

    iget-object v2, v0, Lc/e/a/a/j/c/f;->s:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    :cond_a
    iget-boolean v1, v0, Lc/e/a/a/j/c/f;->E:Z

    if-eqz v1, :cond_b

    .line 94
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/j/c/f;->g()V

    goto :goto_6

    :cond_b
    if-eqz p1, :cond_d

    .line 95
    iget-object v1, v0, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    iget-boolean v2, v1, Lc/e/a/a/j/c/a/b;->d:Z

    if-eqz v2, :cond_d

    iget-wide v1, v1, Lc/e/a/a/j/c/a/b;->e:J

    cmp-long v5, v1, v10

    if-eqz v5, :cond_d

    cmp-long v5, v1, v12

    if-nez v5, :cond_c

    move-wide v1, v3

    .line 96
    :cond_c
    iget-wide v3, v0, Lc/e/a/a/j/c/f;->F:J

    add-long/2addr v3, v1

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v3, v1

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 98
    invoke-virtual {v0, v1, v2}, Lc/e/a/a/j/c/f;->c(J)V

    :cond_d
    :goto_6
    return-void
.end method

.method public b()V
    .locals 5

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/e/a/a/j/c/f;->E:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lc/e/a/a/j/c/f;->w:Lc/e/a/a/n/j;

    .line 4
    iget-object v2, p0, Lc/e/a/a/j/c/f;->x:Lcom/google/android/exoplayer2/upstream/Loader;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader;->d()V

    .line 6
    iput-object v1, p0, Lc/e/a/a/j/c/f;->x:Lcom/google/android/exoplayer2/upstream/Loader;

    :cond_0
    const-wide/16 v2, 0x0

    .line 7
    iput-wide v2, p0, Lc/e/a/a/j/c/f;->F:J

    .line 8
    iput-wide v2, p0, Lc/e/a/a/j/c/f;->G:J

    .line 9
    iget-boolean v4, p0, Lc/e/a/a/j/c/f;->f:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    iput-object v4, p0, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    .line 10
    iget-object v4, p0, Lc/e/a/a/j/c/f;->B:Landroid/net/Uri;

    iput-object v4, p0, Lc/e/a/a/j/c/f;->C:Landroid/net/Uri;

    .line 11
    iput-object v1, p0, Lc/e/a/a/j/c/f;->z:Ljava/io/IOException;

    .line 12
    iget-object v4, p0, Lc/e/a/a/j/c/f;->A:Landroid/os/Handler;

    if-eqz v4, :cond_2

    .line 13
    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    iput-object v1, p0, Lc/e/a/a/j/c/f;->A:Landroid/os/Handler;

    .line 15
    :cond_2
    iput-wide v2, p0, Lc/e/a/a/j/c/f;->H:J

    .line 16
    iput v0, p0, Lc/e/a/a/j/c/f;->I:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    iput-wide v1, p0, Lc/e/a/a/j/c/f;->J:J

    .line 18
    iput v0, p0, Lc/e/a/a/j/c/f;->K:I

    .line 19
    iget-object v0, p0, Lc/e/a/a/j/c/f;->q:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final b(J)V
    .locals 0

    .line 57
    iput-wide p1, p0, Lc/e/a/a/j/c/f;->H:J

    const/4 p1, 0x1

    .line 58
    invoke-virtual {p0, p1}, Lc/e/a/a/j/c/f;->a(Z)V

    return-void
.end method

.method public final b(Lc/e/a/a/j/c/a/n;)V
    .locals 4

    .line 54
    :try_start_0
    iget-object p1, p1, Lc/e/a/a/j/c/a/n;->b:Ljava/lang/String;

    invoke-static {p1}, Lc/e/a/a/o/I;->i(Ljava/lang/String;)J

    move-result-wide v0

    .line 55
    iget-wide v2, p0, Lc/e/a/a/j/c/f;->G:J

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lc/e/a/a/j/c/f;->b(J)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 56
    invoke-virtual {p0, p1}, Lc/e/a/a/j/c/f;->a(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method public b(Lc/e/a/a/n/y;JJ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/n/y<",
            "Lc/e/a/a/j/c/a/b;",
            ">;JJ)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v13, p2

    .line 20
    iget-object v2, v1, Lc/e/a/a/j/c/f;->m:Lc/e/a/a/j/w$a;

    iget-object v3, v0, Lc/e/a/a/n/y;->a:Lc/e/a/a/n/l;

    .line 21
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/n/y;->f()Landroid/net/Uri;

    move-result-object v4

    .line 22
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/n/y;->d()Ljava/util/Map;

    move-result-object v5

    iget v6, v0, Lc/e/a/a/n/y;->b:I

    .line 23
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/n/y;->c()J

    move-result-wide v11

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    .line 24
    invoke-virtual/range {v2 .. v12}, Lc/e/a/a/j/w$a;->b(Lc/e/a/a/n/l;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    .line 25
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/n/y;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/a/j/c/a/b;

    .line 26
    iget-object v3, v1, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lc/e/a/a/j/c/a/b;->a()I

    move-result v3

    .line 27
    :goto_0
    invoke-virtual {v2, v4}, Lc/e/a/a/j/c/a/b;->a(I)Lc/e/a/a/j/c/a/f;

    move-result-object v5

    iget-wide v5, v5, Lc/e/a/a/j/c/a/f;->b:J

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_1

    .line 28
    iget-object v8, v1, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    .line 29
    invoke-virtual {v8, v7}, Lc/e/a/a/j/c/a/b;->a(I)Lc/e/a/a/j/c/a/f;

    move-result-object v8

    iget-wide v8, v8, Lc/e/a/a/j/c/a/f;->b:J

    cmp-long v10, v8, v5

    if-gez v10, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 30
    :cond_1
    iget-boolean v5, v2, Lc/e/a/a/j/c/a/b;->d:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    sub-int v5, v3, v7

    .line 31
    invoke-virtual {v2}, Lc/e/a/a/j/c/a/b;->a()I

    move-result v8

    if-le v5, v8, :cond_2

    const-string v5, "DashMediaSource"

    const-string v8, "Loaded out of sync manifest"

    .line 32
    invoke-static {v5, v8}, Lc/e/a/a/o/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 v5, 0x1

    goto :goto_3

    .line 33
    :cond_2
    iget-wide v8, v1, Lc/e/a/a/j/c/f;->J:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v8, v10

    if-eqz v5, :cond_3

    iget-wide v10, v2, Lc/e/a/a/j/c/a/b;->h:J

    const-wide/16 v15, 0x3e8

    mul-long v10, v10, v15

    cmp-long v5, v10, v8

    if-gtz v5, :cond_3

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loaded stale dynamic manifest: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v2, Lc/e/a/a/j/c/a/b;->h:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lc/e/a/a/j/c/f;->J:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "DashMediaSource"

    invoke-static {v8, v5}, Lc/e/a/a/o/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_5

    .line 35
    iget v2, v1, Lc/e/a/a/j/c/f;->I:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lc/e/a/a/j/c/f;->I:I

    iget-object v3, v1, Lc/e/a/a/j/c/f;->j:Lc/e/a/a/n/v;

    iget v0, v0, Lc/e/a/a/n/y;->b:I

    .line 36
    invoke-interface {v3, v0}, Lc/e/a/a/n/v;->a(I)I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 37
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/j/c/f;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lc/e/a/a/j/c/f;->c(J)V

    goto :goto_4

    .line 38
    :cond_4
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashManifestStaleException;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/dash/DashManifestStaleException;-><init>()V

    iput-object v0, v1, Lc/e/a/a/j/c/f;->z:Ljava/io/IOException;

    :goto_4
    return-void

    .line 39
    :cond_5
    iput v4, v1, Lc/e/a/a/j/c/f;->I:I

    .line 40
    :cond_6
    iput-object v2, v1, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    .line 41
    iget-boolean v2, v1, Lc/e/a/a/j/c/f;->E:Z

    iget-object v5, v1, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    iget-boolean v8, v5, Lc/e/a/a/j/c/a/b;->d:Z

    and-int/2addr v2, v8

    iput-boolean v2, v1, Lc/e/a/a/j/c/f;->E:Z

    sub-long v8, v13, p4

    .line 42
    iput-wide v8, v1, Lc/e/a/a/j/c/f;->F:J

    .line 43
    iput-wide v13, v1, Lc/e/a/a/j/c/f;->G:J

    .line 44
    iget-object v2, v5, Lc/e/a/a/j/c/a/b;->j:Landroid/net/Uri;

    if-eqz v2, :cond_9

    .line 45
    iget-object v2, v1, Lc/e/a/a/j/c/f;->p:Ljava/lang/Object;

    monitor-enter v2

    .line 46
    :try_start_0
    iget-object v0, v0, Lc/e/a/a/n/y;->a:Lc/e/a/a/n/l;

    iget-object v0, v0, Lc/e/a/a/n/l;->a:Landroid/net/Uri;

    iget-object v5, v1, Lc/e/a/a/j/c/f;->C:Landroid/net/Uri;

    if-ne v0, v5, :cond_7

    const/4 v4, 0x1

    :cond_7
    if-eqz v4, :cond_8

    .line 47
    iget-object v0, v1, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    iget-object v0, v0, Lc/e/a/a/j/c/a/b;->j:Landroid/net/Uri;

    iput-object v0, v1, Lc/e/a/a/j/c/f;->C:Landroid/net/Uri;

    .line 48
    :cond_8
    monitor-exit v2

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_9
    :goto_5
    if-nez v3, :cond_b

    .line 49
    iget-object v0, v1, Lc/e/a/a/j/c/f;->D:Lc/e/a/a/j/c/a/b;

    iget-boolean v2, v0, Lc/e/a/a/j/c/a/b;->d:Z

    if-eqz v2, :cond_a

    iget-object v0, v0, Lc/e/a/a/j/c/a/b;->i:Lc/e/a/a/j/c/a/n;

    if-eqz v0, :cond_a

    .line 50
    invoke-virtual {v1, v0}, Lc/e/a/a/j/c/f;->a(Lc/e/a/a/j/c/a/n;)V

    goto :goto_6

    .line 51
    :cond_a
    invoke-virtual {v1, v6}, Lc/e/a/a/j/c/f;->a(Z)V

    goto :goto_6

    .line 52
    :cond_b
    iget v0, v1, Lc/e/a/a/j/c/f;->K:I

    add-int/2addr v0, v7

    iput v0, v1, Lc/e/a/a/j/c/f;->K:I

    .line 53
    invoke-virtual {v1, v6}, Lc/e/a/a/j/c/f;->a(Z)V

    :goto_6
    return-void
.end method

.method public final c()J
    .locals 2

    .line 8
    iget v0, p0, Lc/e/a/a/j/c/f;->I:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final c(J)V
    .locals 2

    .line 7
    iget-object v0, p0, Lc/e/a/a/j/c/f;->A:Landroid/os/Handler;

    iget-object v1, p0, Lc/e/a/a/j/c/f;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public c(Lc/e/a/a/n/y;JJ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/n/y<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 1
    iget-object v2, v0, Lc/e/a/a/j/c/f;->m:Lc/e/a/a/j/w$a;

    iget-object v3, v1, Lc/e/a/a/n/y;->a:Lc/e/a/a/n/l;

    .line 2
    invoke-virtual {p1}, Lc/e/a/a/n/y;->f()Landroid/net/Uri;

    move-result-object v4

    .line 3
    invoke-virtual {p1}, Lc/e/a/a/n/y;->d()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Lc/e/a/a/n/y;->b:I

    .line 4
    invoke-virtual {p1}, Lc/e/a/a/n/y;->c()J

    move-result-wide v11

    move-wide v7, p2

    move-wide/from16 v9, p4

    .line 5
    invoke-virtual/range {v2 .. v12}, Lc/e/a/a/j/w$a;->b(Lc/e/a/a/n/l;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    .line 6
    invoke-virtual {p1}, Lc/e/a/a/n/y;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {p0, v1, v2}, Lc/e/a/a/j/c/f;->b(J)V

    return-void
.end method

.method public final d()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lc/e/a/a/j/c/f;->H:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lc/e/a/a/j/c/f;->H:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lc/e/a/a/q;->a(J)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lc/e/a/a/q;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lc/e/a/a/j/c/f;->a(Z)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/f;->A:Landroid/os/Handler;

    iget-object v1, p0, Lc/e/a/a/j/c/f;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/j/c/f;->g()V

    return-void
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/f;->A:Landroid/os/Handler;

    iget-object v1, p0, Lc/e/a/a/j/c/f;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/c/f;->x:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lc/e/a/a/j/c/f;->E:Z

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/c/f;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lc/e/a/a/j/c/f;->C:Landroid/net/Uri;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lc/e/a/a/j/c/f;->E:Z

    .line 8
    new-instance v0, Lc/e/a/a/n/y;

    iget-object v2, p0, Lc/e/a/a/j/c/f;->w:Lc/e/a/a/n/j;

    iget-object v3, p0, Lc/e/a/a/j/c/f;->n:Lc/e/a/a/n/y$a;

    const/4 v4, 0x4

    invoke-direct {v0, v2, v1, v4, v3}, Lc/e/a/a/n/y;-><init>(Lc/e/a/a/n/j;Landroid/net/Uri;ILc/e/a/a/n/y$a;)V

    iget-object v1, p0, Lc/e/a/a/j/c/f;->o:Lc/e/a/a/j/c/f$e;

    iget-object v2, p0, Lc/e/a/a/j/c/f;->j:Lc/e/a/a/n/v;

    .line 9
    invoke-interface {v2, v4}, Lc/e/a/a/n/v;->a(I)I

    move-result v2

    .line 10
    invoke-virtual {p0, v0, v1, v2}, Lc/e/a/a/j/c/f;->a(Lc/e/a/a/n/y;Lcom/google/android/exoplayer2/upstream/Loader$a;I)V

    return-void

    :catchall_0
    move-exception v1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
