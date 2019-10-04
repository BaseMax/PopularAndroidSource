.class public final Lc/e/a/a/j/e/f;
.super Lc/e/a/a/j/m;
.source "SsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/j/e/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/a/j/m;",
        "Lcom/google/android/exoplayer2/upstream/Loader$a<",
        "Lc/e/a/a/n/y<",
        "Lc/e/a/a/j/e/a/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final f:Z

.field public final g:Landroid/net/Uri;

.field public final h:Lc/e/a/a/n/j$a;

.field public final i:Lc/e/a/a/j/e/c$a;

.field public final j:Lc/e/a/a/j/q;

.field public final k:Lc/e/a/a/n/v;

.field public final l:J

.field public final m:Lc/e/a/a/j/w$a;

.field public final n:Lc/e/a/a/n/y$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/a/n/y$a<",
            "+",
            "Lc/e/a/a/j/e/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/e/a/a/j/e/d;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ljava/lang/Object;

.field public q:Lc/e/a/a/n/j;

.field public r:Lcom/google/android/exoplayer2/upstream/Loader;

.field public s:Lc/e/a/a/n/x;

.field public t:Lc/e/a/a/n/A;

.field public u:J

.field public v:Lc/e/a/a/j/e/a/a;

.field public w:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.smoothstreaming"

    .line 1
    invoke-static {v0}, Lc/e/a/a/C;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lc/e/a/a/j/e/a/a;Landroid/net/Uri;Lc/e/a/a/n/j$a;Lc/e/a/a/n/y$a;Lc/e/a/a/j/e/c$a;Lc/e/a/a/j/q;Lc/e/a/a/n/v;JLjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/j/e/a/a;",
            "Landroid/net/Uri;",
            "Lc/e/a/a/n/j$a;",
            "Lc/e/a/a/n/y$a<",
            "+",
            "Lc/e/a/a/j/e/a/a;",
            ">;",
            "Lc/e/a/a/j/e/c$a;",
            "Lc/e/a/a/j/q;",
            "Lc/e/a/a/n/v;",
            "J",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lc/e/a/a/j/m;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 3
    iget-boolean v2, p1, Lc/e/a/a/j/e/a/a;->d:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lc/e/a/a/o/e;->b(Z)V

    .line 4
    iput-object p1, p0, Lc/e/a/a/j/e/f;->v:Lc/e/a/a/j/e/a/a;

    const/4 v2, 0x0

    if-nez p2, :cond_2

    move-object p2, v2

    goto :goto_2

    .line 5
    :cond_2
    invoke-static {p2}, Lc/e/a/a/j/e/a/b;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    :goto_2
    iput-object p2, p0, Lc/e/a/a/j/e/f;->g:Landroid/net/Uri;

    .line 6
    iput-object p3, p0, Lc/e/a/a/j/e/f;->h:Lc/e/a/a/n/j$a;

    .line 7
    iput-object p4, p0, Lc/e/a/a/j/e/f;->n:Lc/e/a/a/n/y$a;

    .line 8
    iput-object p5, p0, Lc/e/a/a/j/e/f;->i:Lc/e/a/a/j/e/c$a;

    .line 9
    iput-object p6, p0, Lc/e/a/a/j/e/f;->j:Lc/e/a/a/j/q;

    .line 10
    iput-object p7, p0, Lc/e/a/a/j/e/f;->k:Lc/e/a/a/n/v;

    .line 11
    iput-wide p8, p0, Lc/e/a/a/j/e/f;->l:J

    .line 12
    invoke-virtual {p0, v2}, Lc/e/a/a/j/m;->a(Lc/e/a/a/j/v$a;)Lc/e/a/a/j/w$a;

    move-result-object p2

    iput-object p2, p0, Lc/e/a/a/j/e/f;->m:Lc/e/a/a/j/w$a;

    .line 13
    iput-object p10, p0, Lc/e/a/a/j/e/f;->p:Ljava/lang/Object;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 14
    :cond_3
    iput-boolean v0, p0, Lc/e/a/a/j/e/f;->f:Z

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/e/f;->o:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/a/j/e/a/a;Landroid/net/Uri;Lc/e/a/a/n/j$a;Lc/e/a/a/n/y$a;Lc/e/a/a/j/e/c$a;Lc/e/a/a/j/q;Lc/e/a/a/n/v;JLjava/lang/Object;Lc/e/a/a/j/e/e;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lc/e/a/a/j/e/f;-><init>(Lc/e/a/a/j/e/a/a;Landroid/net/Uri;Lc/e/a/a/n/j$a;Lc/e/a/a/n/y$a;Lc/e/a/a/j/e/c$a;Lc/e/a/a/j/q;Lc/e/a/a/n/v;JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/j/v$a;Lc/e/a/a/n/e;J)Lc/e/a/a/j/u;
    .locals 9

    .line 14
    invoke-virtual {p0, p1}, Lc/e/a/a/j/m;->a(Lc/e/a/a/j/v$a;)Lc/e/a/a/j/w$a;

    move-result-object v6

    .line 15
    new-instance p1, Lc/e/a/a/j/e/d;

    iget-object v1, p0, Lc/e/a/a/j/e/f;->v:Lc/e/a/a/j/e/a/a;

    iget-object v2, p0, Lc/e/a/a/j/e/f;->i:Lc/e/a/a/j/e/c$a;

    iget-object v3, p0, Lc/e/a/a/j/e/f;->t:Lc/e/a/a/n/A;

    iget-object v4, p0, Lc/e/a/a/j/e/f;->j:Lc/e/a/a/j/q;

    iget-object v5, p0, Lc/e/a/a/j/e/f;->k:Lc/e/a/a/n/v;

    iget-object v7, p0, Lc/e/a/a/j/e/f;->s:Lc/e/a/a/n/x;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lc/e/a/a/j/e/d;-><init>(Lc/e/a/a/j/e/a/a;Lc/e/a/a/j/e/c$a;Lc/e/a/a/n/A;Lc/e/a/a/j/q;Lc/e/a/a/n/v;Lc/e/a/a/j/w$a;Lc/e/a/a/n/x;Lc/e/a/a/n/e;)V

    .line 16
    iget-object p2, p0, Lc/e/a/a/j/e/f;->o:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public a(Lc/e/a/a/n/y;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/n/y<",
            "Lc/e/a/a/j/e/a/a;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lcom/google/android/exoplayer2/upstream/Loader$b;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 33
    iget-object v2, v0, Lc/e/a/a/j/e/f;->k:Lc/e/a/a/n/v;

    const/4 v3, 0x4

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 34
    invoke-interface/range {v2 .. v7}, Lc/e/a/a/n/v;->a(IJLjava/io/IOException;I)J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 35
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->d:Lcom/google/android/exoplayer2/upstream/Loader$b;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 36
    invoke-static {v4, v2, v3}, Lcom/google/android/exoplayer2/upstream/Loader;->a(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$b;

    move-result-object v2

    .line 37
    :goto_0
    iget-object v3, v0, Lc/e/a/a/j/e/f;->m:Lc/e/a/a/j/w$a;

    iget-object v4, v1, Lc/e/a/a/n/y;->a:Lc/e/a/a/n/l;

    .line 38
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/n/y;->f()Landroid/net/Uri;

    move-result-object v5

    .line 39
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/n/y;->d()Ljava/util/Map;

    move-result-object v6

    iget v7, v1, Lc/e/a/a/n/y;->b:I

    .line 40
    invoke-virtual/range {p1 .. p1}, Lc/e/a/a/n/y;->c()J

    move-result-wide v12

    .line 41
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader$b;->a()Z

    move-result v1

    xor-int/lit8 v15, v1, 0x1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-object/from16 v14, p6

    .line 42
    invoke-virtual/range {v3 .. v15}, Lc/e/a/a/j/w$a;->a(Lc/e/a/a/n/l;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    return-object v2
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;
    .locals 0

    .line 3
    check-cast p1, Lc/e/a/a/n/y;

    invoke-virtual/range {p0 .. p7}, Lc/e/a/a/j/e/f;->a(Lc/e/a/a/n/y;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$b;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 13
    iget-object v0, p0, Lc/e/a/a/j/e/f;->s:Lc/e/a/a/n/x;

    invoke-interface {v0}, Lc/e/a/a/n/x;->a()V

    return-void
.end method

.method public a(Lc/e/a/a/j/u;)V
    .locals 1

    .line 17
    move-object v0, p1

    check-cast v0, Lc/e/a/a/j/e/d;

    invoke-virtual {v0}, Lc/e/a/a/j/e/d;->c()V

    .line 18
    iget-object v0, p0, Lc/e/a/a/j/e/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lc/e/a/a/n/A;)V
    .locals 1

    .line 4
    iput-object p1, p0, Lc/e/a/a/j/e/f;->t:Lc/e/a/a/n/A;

    .line 5
    iget-boolean p1, p0, Lc/e/a/a/j/e/f;->f:Z

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Lc/e/a/a/n/x$a;

    invoke-direct {p1}, Lc/e/a/a/n/x$a;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/e/f;->s:Lc/e/a/a/n/x;

    .line 7
    invoke-virtual {p0}, Lc/e/a/a/j/e/f;->c()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lc/e/a/a/j/e/f;->h:Lc/e/a/a/n/j$a;

    invoke-interface {p1}, Lc/e/a/a/n/j$a;->a()Lc/e/a/a/n/j;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/j/e/f;->q:Lc/e/a/a/n/j;

    .line 9
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v0, "Loader:Manifest"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lc/e/a/a/j/e/f;->r:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 10
    iget-object p1, p0, Lc/e/a/a/j/e/f;->r:Lcom/google/android/exoplayer2/upstream/Loader;

    iput-object p1, p0, Lc/e/a/a/j/e/f;->s:Lc/e/a/a/n/x;

    .line 11
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/e/f;->w:Landroid/os/Handler;

    .line 12
    invoke-virtual {p0}, Lc/e/a/a/j/e/f;->e()V

    :goto_0
    return-void
.end method

.method public a(Lc/e/a/a/n/y;JJ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/n/y<",
            "Lc/e/a/a/j/e/a/a;",
            ">;JJ)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 19
    iget-object v2, v0, Lc/e/a/a/j/e/f;->m:Lc/e/a/a/j/w$a;

    iget-object v3, v1, Lc/e/a/a/n/y;->a:Lc/e/a/a/n/l;

    .line 20
    invoke-virtual {p1}, Lc/e/a/a/n/y;->f()Landroid/net/Uri;

    move-result-object v4

    .line 21
    invoke-virtual {p1}, Lc/e/a/a/n/y;->d()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Lc/e/a/a/n/y;->b:I

    .line 22
    invoke-virtual {p1}, Lc/e/a/a/n/y;->c()J

    move-result-wide v11

    move-wide v7, p2

    move-wide/from16 v9, p4

    .line 23
    invoke-virtual/range {v2 .. v12}, Lc/e/a/a/j/w$a;->b(Lc/e/a/a/n/l;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    .line 24
    invoke-virtual {p1}, Lc/e/a/a/n/y;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/j/e/a/a;

    iput-object v1, v0, Lc/e/a/a/j/e/f;->v:Lc/e/a/a/j/e/a/a;

    sub-long v1, p2, p4

    .line 25
    iput-wide v1, v0, Lc/e/a/a/j/e/f;->u:J

    .line 26
    invoke-virtual {p0}, Lc/e/a/a/j/e/f;->c()V

    .line 27
    invoke-virtual {p0}, Lc/e/a/a/j/e/f;->d()V

    return-void
.end method

.method public a(Lc/e/a/a/n/y;JJZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/n/y<",
            "Lc/e/a/a/j/e/a/a;",
            ">;JJZ)V"
        }
    .end annotation

    move-object v0, p1

    move-object v1, p0

    .line 28
    iget-object v2, v1, Lc/e/a/a/j/e/f;->m:Lc/e/a/a/j/w$a;

    iget-object v3, v0, Lc/e/a/a/n/y;->a:Lc/e/a/a/n/l;

    .line 29
    invoke-virtual {p1}, Lc/e/a/a/n/y;->f()Landroid/net/Uri;

    move-result-object v4

    .line 30
    invoke-virtual {p1}, Lc/e/a/a/n/y;->d()Ljava/util/Map;

    move-result-object v5

    iget v6, v0, Lc/e/a/a/n/y;->b:I

    .line 31
    invoke-virtual {p1}, Lc/e/a/a/n/y;->c()J

    move-result-wide v11

    move-wide v7, p2

    move-wide/from16 v9, p4

    .line 32
    invoke-virtual/range {v2 .. v12}, Lc/e/a/a/j/w$a;->a(Lc/e/a/a/n/l;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJ)V
    .locals 0

    .line 2
    check-cast p1, Lc/e/a/a/n/y;

    invoke-virtual/range {p0 .. p5}, Lc/e/a/a/j/e/f;->a(Lc/e/a/a/n/y;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/Loader$d;JJZ)V
    .locals 0

    .line 1
    check-cast p1, Lc/e/a/a/n/y;

    invoke-virtual/range {p0 .. p6}, Lc/e/a/a/j/e/f;->a(Lc/e/a/a/n/y;JJZ)V

    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/j/e/f;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/a/j/e/f;->v:Lc/e/a/a/j/e/a/a;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lc/e/a/a/j/e/f;->v:Lc/e/a/a/j/e/a/a;

    .line 2
    iput-object v1, p0, Lc/e/a/a/j/e/f;->q:Lc/e/a/a/n/j;

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lc/e/a/a/j/e/f;->u:J

    .line 4
    iget-object v0, p0, Lc/e/a/a/j/e/f;->r:Lcom/google/android/exoplayer2/upstream/Loader;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->d()V

    .line 6
    iput-object v1, p0, Lc/e/a/a/j/e/f;->r:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 7
    :cond_1
    iget-object v0, p0, Lc/e/a/a/j/e/f;->w:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    iput-object v1, p0, Lc/e/a/a/j/e/f;->w:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 27

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v3, v0, Lc/e/a/a/j/e/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2
    iget-object v3, v0, Lc/e/a/a/j/e/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/e/a/a/j/e/d;

    iget-object v4, v0, Lc/e/a/a/j/e/f;->v:Lc/e/a/a/j/e/a/a;

    invoke-virtual {v3, v4}, Lc/e/a/a/j/e/d;->b(Lc/e/a/a/j/e/a/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    .line 3
    iget-object v4, v0, Lc/e/a/a/j/e/f;->v:Lc/e/a/a/j/e/a/a;

    iget-object v4, v4, Lc/e/a/a/j/e/a/a;->f:[Lc/e/a/a/j/e/a/a$b;

    array-length v5, v4

    const-wide v6, 0x7fffffffffffffffL

    move-wide v8, v2

    move-wide v13, v6

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v3, v4, v2

    .line 4
    iget v10, v3, Lc/e/a/a/j/e/a/a$b;->k:I

    if-lez v10, :cond_1

    .line 5
    invoke-virtual {v3, v1}, Lc/e/a/a/j/e/a/a$b;->b(I)J

    move-result-wide v10

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 6
    iget v12, v3, Lc/e/a/a/j/e/a/a$b;->k:I

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v3, v12}, Lc/e/a/a/j/e/a/a$b;->b(I)J

    move-result-wide v12

    iget v14, v3, Lc/e/a/a/j/e/a/a$b;->k:I

    add-int/lit8 v14, v14, -0x1

    .line 7
    invoke-virtual {v3, v14}, Lc/e/a/a/j/e/a/a$b;->a(I)J

    move-result-wide v14

    add-long/2addr v12, v14

    .line 8
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-wide v13, v10

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v13, v6

    if-nez v5, :cond_4

    .line 9
    iget-object v5, v0, Lc/e/a/a/j/e/f;->v:Lc/e/a/a/j/e/a/a;

    iget-boolean v5, v5, Lc/e/a/a/j/e/a/a;->d:Z

    if-eqz v5, :cond_3

    move-wide v7, v3

    goto :goto_2

    :cond_3
    move-wide v7, v1

    .line 10
    :goto_2
    new-instance v1, Lc/e/a/a/j/E;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    iget-object v2, v0, Lc/e/a/a/j/e/f;->v:Lc/e/a/a/j/e/a/a;

    iget-boolean v2, v2, Lc/e/a/a/j/e/a/a;->d:Z

    iget-object v3, v0, Lc/e/a/a/j/e/f;->p:Ljava/lang/Object;

    move-object v6, v1

    move/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v6 .. v17}, Lc/e/a/a/j/E;-><init>(JJJJZZLjava/lang/Object;)V

    goto :goto_4

    .line 11
    :cond_4
    iget-object v5, v0, Lc/e/a/a/j/e/f;->v:Lc/e/a/a/j/e/a/a;

    iget-boolean v6, v5, Lc/e/a/a/j/e/a/a;->d:Z

    if-eqz v6, :cond_7

    .line 12
    iget-wide v5, v5, Lc/e/a/a/j/e/a/a;->h:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_5

    cmp-long v3, v5, v1

    if-lez v3, :cond_5

    sub-long v1, v8, v5

    .line 13
    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    :cond_5
    move-wide/from16 v20, v13

    sub-long v18, v8, v20

    .line 14
    iget-wide v1, v0, Lc/e/a/a/j/e/f;->l:J

    invoke-static {v1, v2}, Lc/e/a/a/q;->a(J)J

    move-result-wide v1

    sub-long v1, v18, v1

    const-wide/32 v3, 0x4c4b40

    cmp-long v5, v1, v3

    if-gez v5, :cond_6

    const-wide/16 v1, 0x2

    .line 15
    div-long v1, v18, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_6
    move-wide/from16 v22, v1

    .line 16
    new-instance v1, Lc/e/a/a/j/E;

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v24, 0x1

    const/16 v25, 0x1

    iget-object v2, v0, Lc/e/a/a/j/e/f;->p:Ljava/lang/Object;

    move-object v15, v1

    move-object/from16 v26, v2

    invoke-direct/range {v15 .. v26}, Lc/e/a/a/j/E;-><init>(JJJJZZLjava/lang/Object;)V

    goto :goto_4

    .line 17
    :cond_7
    iget-wide v1, v5, Lc/e/a/a/j/e/a/a;->g:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_8

    move-wide v11, v1

    goto :goto_3

    :cond_8
    sub-long/2addr v8, v13

    move-wide v11, v8

    .line 18
    :goto_3
    new-instance v1, Lc/e/a/a/j/E;

    add-long v9, v13, v11

    const-wide/16 v15, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    iget-object v2, v0, Lc/e/a/a/j/e/f;->p:Ljava/lang/Object;

    move-object v8, v1

    move-object/from16 v19, v2

    invoke-direct/range {v8 .. v19}, Lc/e/a/a/j/E;-><init>(JJJJZZLjava/lang/Object;)V

    .line 19
    :goto_4
    iget-object v2, v0, Lc/e/a/a/j/e/f;->v:Lc/e/a/a/j/e/a/a;

    invoke-virtual {v0, v1, v2}, Lc/e/a/a/j/m;->a(Lc/e/a/a/Z;Ljava/lang/Object;)V

    return-void
.end method

.method public final d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/e/f;->v:Lc/e/a/a/j/e/a/a;

    iget-boolean v0, v0, Lc/e/a/a/j/e/a/a;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lc/e/a/a/j/e/f;->u:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lc/e/a/a/j/e/f;->w:Landroid/os/Handler;

    new-instance v3, Lc/e/a/a/j/e/a;

    invoke-direct {v3, p0}, Lc/e/a/a/j/e/a;-><init>(Lc/e/a/a/j/e/f;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    new-instance v0, Lc/e/a/a/n/y;

    iget-object v1, p0, Lc/e/a/a/j/e/f;->q:Lc/e/a/a/n/j;

    iget-object v2, p0, Lc/e/a/a/j/e/f;->g:Landroid/net/Uri;

    iget-object v3, p0, Lc/e/a/a/j/e/f;->n:Lc/e/a/a/n/y$a;

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v4, v3}, Lc/e/a/a/n/y;-><init>(Lc/e/a/a/n/j;Landroid/net/Uri;ILc/e/a/a/n/y$a;)V

    .line 2
    iget-object v1, p0, Lc/e/a/a/j/e/f;->r:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v2, p0, Lc/e/a/a/j/e/f;->k:Lc/e/a/a/n/v;

    iget v3, v0, Lc/e/a/a/n/y;->b:I

    .line 3
    invoke-interface {v2, v3}, Lc/e/a/a/n/v;->a(I)I

    move-result v2

    .line 4
    invoke-virtual {v1, v0, p0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$d;Lcom/google/android/exoplayer2/upstream/Loader$a;I)J

    move-result-wide v1

    .line 5
    iget-object v3, p0, Lc/e/a/a/j/e/f;->m:Lc/e/a/a/j/w$a;

    iget-object v4, v0, Lc/e/a/a/n/y;->a:Lc/e/a/a/n/l;

    iget v0, v0, Lc/e/a/a/n/y;->b:I

    invoke-virtual {v3, v4, v0, v1, v2}, Lc/e/a/a/j/w$a;->a(Lc/e/a/a/n/l;IJ)V

    return-void
.end method
