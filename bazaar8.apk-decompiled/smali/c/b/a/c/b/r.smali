.class public Lc/b/a/c/b/r;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lc/b/a/c/b/u;
.implements Lc/b/a/c/b/b/i$a;
.implements Lc/b/a/c/b/x$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/c/b/r$b;,
        Lc/b/a/c/b/r$a;,
        Lc/b/a/c/b/r$c;,
        Lc/b/a/c/b/r$d;
    }
.end annotation


# static fields
.field public static final a:Z


# instance fields
.field public final b:Lc/b/a/c/b/z;

.field public final c:Lc/b/a/c/b/w;

.field public final d:Lc/b/a/c/b/b/i;

.field public final e:Lc/b/a/c/b/r$b;

.field public final f:Lc/b/a/c/b/G;

.field public final g:Lc/b/a/c/b/r$c;

.field public final h:Lc/b/a/c/b/r$a;

.field public final i:Lc/b/a/c/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lc/b/a/c/b/r;->a:Z

    return-void
.end method

.method public constructor <init>(Lc/b/a/c/b/b/i;Lc/b/a/c/b/b/a$a;Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/z;Lc/b/a/c/b/w;Lc/b/a/c/b/c;Lc/b/a/c/b/r$b;Lc/b/a/c/b/r$a;Lc/b/a/c/b/G;Z)V
    .locals 9

    move-object v6, p0

    move-object v7, p1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v7, v6, Lc/b/a/c/b/r;->d:Lc/b/a/c/b/b/i;

    .line 4
    new-instance v0, Lc/b/a/c/b/r$c;

    move-object v1, p2

    invoke-direct {v0, p2}, Lc/b/a/c/b/r$c;-><init>(Lc/b/a/c/b/b/a$a;)V

    iput-object v0, v6, Lc/b/a/c/b/r;->g:Lc/b/a/c/b/r$c;

    if-nez p9, :cond_0

    .line 5
    new-instance v0, Lc/b/a/c/b/c;

    move/from16 v1, p13

    invoke-direct {v0, v1}, Lc/b/a/c/b/c;-><init>(Z)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p9

    .line 6
    :goto_0
    iput-object v0, v6, Lc/b/a/c/b/r;->i:Lc/b/a/c/b/c;

    .line 7
    invoke-virtual {v0, p0}, Lc/b/a/c/b/c;->a(Lc/b/a/c/b/x$a;)V

    if-nez p8, :cond_1

    .line 8
    new-instance v0, Lc/b/a/c/b/w;

    invoke-direct {v0}, Lc/b/a/c/b/w;-><init>()V

    goto :goto_1

    :cond_1
    move-object/from16 v0, p8

    .line 9
    :goto_1
    iput-object v0, v6, Lc/b/a/c/b/r;->c:Lc/b/a/c/b/w;

    if-nez p7, :cond_2

    .line 10
    new-instance v0, Lc/b/a/c/b/z;

    invoke-direct {v0}, Lc/b/a/c/b/z;-><init>()V

    goto :goto_2

    :cond_2
    move-object/from16 v0, p7

    .line 11
    :goto_2
    iput-object v0, v6, Lc/b/a/c/b/r;->b:Lc/b/a/c/b/z;

    if-nez p10, :cond_3

    .line 12
    new-instance v8, Lc/b/a/c/b/r$b;

    move-object v0, v8

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lc/b/a/c/b/r$b;-><init>(Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/u;)V

    goto :goto_3

    :cond_3
    move-object/from16 v8, p10

    .line 13
    :goto_3
    iput-object v8, v6, Lc/b/a/c/b/r;->e:Lc/b/a/c/b/r$b;

    if-nez p11, :cond_4

    .line 14
    new-instance v0, Lc/b/a/c/b/r$a;

    iget-object v1, v6, Lc/b/a/c/b/r;->g:Lc/b/a/c/b/r$c;

    invoke-direct {v0, v1}, Lc/b/a/c/b/r$a;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob$d;)V

    goto :goto_4

    :cond_4
    move-object/from16 v0, p11

    .line 15
    :goto_4
    iput-object v0, v6, Lc/b/a/c/b/r;->h:Lc/b/a/c/b/r$a;

    if-nez p12, :cond_5

    .line 16
    new-instance v0, Lc/b/a/c/b/G;

    invoke-direct {v0}, Lc/b/a/c/b/G;-><init>()V

    goto :goto_5

    :cond_5
    move-object/from16 v0, p12

    .line 17
    :goto_5
    iput-object v0, v6, Lc/b/a/c/b/r;->f:Lc/b/a/c/b/G;

    .line 18
    invoke-interface {p1, p0}, Lc/b/a/c/b/b/i;->a(Lc/b/a/c/b/b/i$a;)V

    return-void
.end method

.method public constructor <init>(Lc/b/a/c/b/b/i;Lc/b/a/c/b/b/a$a;Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Z)V
    .locals 14

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v13, p7

    .line 1
    invoke-direct/range {v0 .. v13}, Lc/b/a/c/b/r;-><init>(Lc/b/a/c/b/b/i;Lc/b/a/c/b/b/a$a;Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/c/b;Lc/b/a/c/b/z;Lc/b/a/c/b/w;Lc/b/a/c/b/c;Lc/b/a/c/b/r$b;Lc/b/a/c/b/r$a;Lc/b/a/c/b/G;Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;JLc/b/a/c/c;)V
    .locals 1

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lc/b/a/i/e;->a(J)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "ms, key: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Engine"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/g;Ljava/lang/Object;Lc/b/a/c/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lc/b/a/c/b/p;Ljava/util/Map;ZZLc/b/a/c/f;ZZZZLc/b/a/g/h;)Lc/b/a/c/b/r$d;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/b/a/g;",
            "Ljava/lang/Object;",
            "Lc/b/a/c/c;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lc/b/a/c/b/p;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/b/a/c/i<",
            "*>;>;ZZ",
            "Lc/b/a/c/f;",
            "ZZZZ",
            "Lc/b/a/g/h;",
            ")",
            "Lc/b/a/c/b/r$d;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v3, p14

    move-object/from16 v7, p18

    .line 1
    invoke-static {}, Lc/b/a/i/k;->b()V

    .line 2
    sget-boolean v1, Lc/b/a/c/b/r;->a:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lc/b/a/i/e;->a()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    move-wide v8, v1

    .line 3
    iget-object v10, v0, Lc/b/a/c/b/r;->c:Lc/b/a/c/b/w;

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p10

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    move-object/from16 v18, p13

    invoke-virtual/range {v10 .. v18}, Lc/b/a/c/b/w;->a(Ljava/lang/Object;Lc/b/a/c/c;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/f;)Lc/b/a/c/b/v;

    move-result-object v10

    .line 4
    invoke-virtual {v0, v10, v3}, Lc/b/a/c/b/r;->a(Lc/b/a/c/c;Z)Lc/b/a/c/b/x;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 5
    sget-object v3, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v7, v1, v3}, Lc/b/a/g/h;->a(Lc/b/a/c/b/D;Lcom/bumptech/glide/load/DataSource;)V

    .line 6
    sget-boolean v1, Lc/b/a/c/b/r;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "Loaded resource from active resources"

    .line 7
    invoke-static {v1, v8, v9, v10}, Lc/b/a/c/b/r;->a(Ljava/lang/String;JLc/b/a/c/c;)V

    :cond_1
    return-object v2

    .line 8
    :cond_2
    invoke-virtual {v0, v10, v3}, Lc/b/a/c/b/r;->b(Lc/b/a/c/c;Z)Lc/b/a/c/b/x;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 9
    sget-object v3, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v7, v1, v3}, Lc/b/a/g/h;->a(Lc/b/a/c/b/D;Lcom/bumptech/glide/load/DataSource;)V

    .line 10
    sget-boolean v1, Lc/b/a/c/b/r;->a:Z

    if-eqz v1, :cond_3

    const-string v1, "Loaded resource from cache"

    .line 11
    invoke-static {v1, v8, v9, v10}, Lc/b/a/c/b/r;->a(Ljava/lang/String;JLc/b/a/c/c;)V

    :cond_3
    return-object v2

    .line 12
    :cond_4
    iget-object v1, v0, Lc/b/a/c/b/r;->b:Lc/b/a/c/b/z;

    move/from16 v15, p17

    invoke-virtual {v1, v10, v15}, Lc/b/a/c/b/z;->a(Lc/b/a/c/c;Z)Lc/b/a/c/b/t;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 13
    invoke-virtual {v1, v7}, Lc/b/a/c/b/t;->a(Lc/b/a/g/h;)V

    .line 14
    sget-boolean v2, Lc/b/a/c/b/r;->a:Z

    if-eqz v2, :cond_5

    const-string v2, "Added to existing load"

    .line 15
    invoke-static {v2, v8, v9, v10}, Lc/b/a/c/b/r;->a(Ljava/lang/String;JLc/b/a/c/c;)V

    .line 16
    :cond_5
    new-instance v2, Lc/b/a/c/b/r$d;

    invoke-direct {v2, v7, v1}, Lc/b/a/c/b/r$d;-><init>(Lc/b/a/g/h;Lc/b/a/c/b/t;)V

    return-object v2

    .line 17
    :cond_6
    iget-object v1, v0, Lc/b/a/c/b/r;->e:Lc/b/a/c/b/r$b;

    move-object v2, v10

    move/from16 v3, p14

    move/from16 v4, p15

    move/from16 v5, p16

    move/from16 v6, p17

    .line 18
    invoke-virtual/range {v1 .. v6}, Lc/b/a/c/b/r$b;->a(Lc/b/a/c/c;ZZZZ)Lc/b/a/c/b/t;

    move-result-object v1

    move-object/from16 v27, v1

    .line 19
    iget-object v11, v0, Lc/b/a/c/b/r;->h:Lc/b/a/c/b/r$a;

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v10

    move-object/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    move-object/from16 v20, p8

    move-object/from16 v21, p9

    move-object/from16 v22, p10

    move/from16 v23, p11

    move/from16 v24, p12

    move/from16 v25, p17

    move-object/from16 v26, p13

    .line 20
    invoke-virtual/range {v11 .. v27}, Lc/b/a/c/b/r$a;->a(Lc/b/a/g;Ljava/lang/Object;Lc/b/a/c/b/v;Lc/b/a/c/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lc/b/a/c/b/p;Ljava/util/Map;ZZZLc/b/a/c/f;Lcom/bumptech/glide/load/engine/DecodeJob$a;)Lcom/bumptech/glide/load/engine/DecodeJob;

    move-result-object v2

    .line 21
    iget-object v3, v0, Lc/b/a/c/b/r;->b:Lc/b/a/c/b/z;

    invoke-virtual {v3, v10, v1}, Lc/b/a/c/b/z;->a(Lc/b/a/c/c;Lc/b/a/c/b/t;)V

    .line 22
    invoke-virtual {v1, v7}, Lc/b/a/c/b/t;->a(Lc/b/a/g/h;)V

    .line 23
    invoke-virtual {v1, v2}, Lc/b/a/c/b/t;->b(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    .line 24
    sget-boolean v2, Lc/b/a/c/b/r;->a:Z

    if-eqz v2, :cond_7

    const-string v2, "Started new load"

    .line 25
    invoke-static {v2, v8, v9, v10}, Lc/b/a/c/b/r;->a(Ljava/lang/String;JLc/b/a/c/c;)V

    .line 26
    :cond_7
    new-instance v2, Lc/b/a/c/b/r$d;

    invoke-direct {v2, v7, v1}, Lc/b/a/c/b/r$d;-><init>(Lc/b/a/g/h;Lc/b/a/c/b/t;)V

    return-object v2
.end method

.method public final a(Lc/b/a/c/c;)Lc/b/a/c/b/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c;",
            ")",
            "Lc/b/a/c/b/x<",
            "*>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lc/b/a/c/b/r;->d:Lc/b/a/c/b/b/i;

    invoke-interface {v0, p1}, Lc/b/a/c/b/b/i;->a(Lc/b/a/c/c;)Lc/b/a/c/b/D;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 31
    :cond_0
    instance-of v0, p1, Lc/b/a/c/b/x;

    if-eqz v0, :cond_1

    .line 32
    check-cast p1, Lc/b/a/c/b/x;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lc/b/a/c/b/x;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, v1}, Lc/b/a/c/b/x;-><init>(Lc/b/a/c/b/D;ZZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final a(Lc/b/a/c/c;Z)Lc/b/a/c/b/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c;",
            "Z)",
            "Lc/b/a/c/b/x<",
            "*>;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 28
    :cond_0
    iget-object p2, p0, Lc/b/a/c/b/r;->i:Lc/b/a/c/b/c;

    invoke-virtual {p2, p1}, Lc/b/a/c/b/c;->b(Lc/b/a/c/c;)Lc/b/a/c/b/x;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 29
    invoke-virtual {p1}, Lc/b/a/c/b/x;->d()V

    :cond_1
    return-object p1
.end method

.method public a(Lc/b/a/c/b/D;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/D<",
            "*>;)V"
        }
    .end annotation

    .line 41
    invoke-static {}, Lc/b/a/i/k;->b()V

    .line 42
    iget-object v0, p0, Lc/b/a/c/b/r;->f:Lc/b/a/c/b/G;

    invoke-virtual {v0, p1}, Lc/b/a/c/b/G;->a(Lc/b/a/c/b/D;)V

    return-void
.end method

.method public a(Lc/b/a/c/b/t;Lc/b/a/c/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/t<",
            "*>;",
            "Lc/b/a/c/c;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-static {}, Lc/b/a/i/k;->b()V

    .line 40
    iget-object v0, p0, Lc/b/a/c/b/r;->b:Lc/b/a/c/b/z;

    invoke-virtual {v0, p2, p1}, Lc/b/a/c/b/z;->b(Lc/b/a/c/c;Lc/b/a/c/b/t;)V

    return-void
.end method

.method public a(Lc/b/a/c/b/t;Lc/b/a/c/c;Lc/b/a/c/b/x;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/t<",
            "*>;",
            "Lc/b/a/c/c;",
            "Lc/b/a/c/b/x<",
            "*>;)V"
        }
    .end annotation

    .line 34
    invoke-static {}, Lc/b/a/i/k;->b()V

    if-eqz p3, :cond_0

    .line 35
    invoke-virtual {p3, p2, p0}, Lc/b/a/c/b/x;->a(Lc/b/a/c/c;Lc/b/a/c/b/x$a;)V

    .line 36
    invoke-virtual {p3}, Lc/b/a/c/b/x;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lc/b/a/c/b/r;->i:Lc/b/a/c/b/c;

    invoke-virtual {v0, p2, p3}, Lc/b/a/c/b/c;->a(Lc/b/a/c/c;Lc/b/a/c/b/x;)V

    .line 38
    :cond_0
    iget-object p3, p0, Lc/b/a/c/b/r;->b:Lc/b/a/c/b/z;

    invoke-virtual {p3, p2, p1}, Lc/b/a/c/b/z;->b(Lc/b/a/c/c;Lc/b/a/c/b/t;)V

    return-void
.end method

.method public a(Lc/b/a/c/c;Lc/b/a/c/b/x;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c;",
            "Lc/b/a/c/b/x<",
            "*>;)V"
        }
    .end annotation

    .line 43
    invoke-static {}, Lc/b/a/i/k;->b()V

    .line 44
    iget-object v0, p0, Lc/b/a/c/b/r;->i:Lc/b/a/c/b/c;

    invoke-virtual {v0, p1}, Lc/b/a/c/b/c;->a(Lc/b/a/c/c;)V

    .line 45
    invoke-virtual {p2}, Lc/b/a/c/b/x;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lc/b/a/c/b/r;->d:Lc/b/a/c/b/b/i;

    invoke-interface {v0, p1, p2}, Lc/b/a/c/b/b/i;->a(Lc/b/a/c/c;Lc/b/a/c/b/D;)Lc/b/a/c/b/D;

    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lc/b/a/c/b/r;->f:Lc/b/a/c/b/G;

    invoke-virtual {p1, p2}, Lc/b/a/c/b/G;->a(Lc/b/a/c/b/D;)V

    :goto_0
    return-void
.end method

.method public final b(Lc/b/a/c/c;Z)Lc/b/a/c/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c;",
            "Z)",
            "Lc/b/a/c/b/x<",
            "*>;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lc/b/a/c/b/r;->a(Lc/b/a/c/c;)Lc/b/a/c/b/x;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Lc/b/a/c/b/x;->d()V

    .line 3
    iget-object v0, p0, Lc/b/a/c/b/r;->i:Lc/b/a/c/b/c;

    invoke-virtual {v0, p1, p2}, Lc/b/a/c/b/c;->a(Lc/b/a/c/c;Lc/b/a/c/b/x;)V

    :cond_1
    return-object p2
.end method

.method public b(Lc/b/a/c/b/D;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/D<",
            "*>;)V"
        }
    .end annotation

    .line 4
    invoke-static {}, Lc/b/a/i/k;->b()V

    .line 5
    instance-of v0, p1, Lc/b/a/c/b/x;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lc/b/a/c/b/x;

    invoke-virtual {p1}, Lc/b/a/c/b/x;->g()V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
