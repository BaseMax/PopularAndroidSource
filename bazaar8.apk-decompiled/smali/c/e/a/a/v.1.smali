.class public Lc/e/a/a/v;
.super Ljava/lang/Object;
.source "DefaultRenderersFactory.java"

# interfaces
.implements Lc/e/a/a/U;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lc/e/a/a/d/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/a/d/l<",
            "Lc/e/a/a/d/p;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:J

.field public e:Z

.field public f:Lc/e/a/a/f/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/v;->a:Landroid/content/Context;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lc/e/a/a/v;->c:I

    const-wide/16 v0, 0x1388

    .line 4
    iput-wide v0, p0, Lc/e/a/a/v;->d:J

    .line 5
    sget-object p1, Lc/e/a/a/f/c;->a:Lc/e/a/a/f/c;

    iput-object p1, p0, Lc/e/a/a/v;->f:Lc/e/a/a/f/c;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ILc/e/a/a/f/c;Lc/e/a/a/d/l;ZLandroid/os/Handler;Lc/e/a/a/p/s;JLjava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lc/e/a/a/f/c;",
            "Lc/e/a/a/d/l<",
            "Lc/e/a/a/d/p;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lc/e/a/a/p/s;",
            "J",
            "Ljava/util/ArrayList<",
            "Lc/e/a/a/Q;",
            ">;)V"
        }
    .end annotation

    move v0, p2

    move-object/from16 v1, p10

    .line 12
    new-instance v12, Lc/e/a/a/p/n;

    const/16 v11, 0x32

    move-object v2, v12

    move-object v3, p1

    move-object/from16 v4, p3

    move-wide/from16 v5, p8

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v11}, Lc/e/a/a/p/n;-><init>(Landroid/content/Context;Lc/e/a/a/f/c;JLc/e/a/a/d/l;ZLandroid/os/Handler;Lc/e/a/a/p/s;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-virtual/range {p10 .. p10}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    const-string v0, "com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer"

    .line 14
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x4

    .line 15
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Landroid/os/Handler;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-class v6, Lc/e/a/a/p/s;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    .line 16
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 17
    new-array v4, v4, [Ljava/lang/Object;

    .line 18
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p6, v4, v8

    aput-object p7, v4, v3

    const/16 v3, 0x32

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v9

    .line 20
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/Q;

    .line 21
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "DefaultRenderersFactory"

    const-string v1, "Loaded LibvpxVideoRenderer."

    .line 22
    invoke-static {v0, v1}, Lc/e/a/a/o/p;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 23
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating VP9 extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;ILc/e/a/a/f/c;Lc/e/a/a/d/l;Z[Lcom/google/android/exoplayer2/audio/AudioProcessor;Landroid/os/Handler;Lc/e/a/a/b/q;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lc/e/a/a/f/c;",
            "Lc/e/a/a/d/l<",
            "Lc/e/a/a/d/p;",
            ">;Z[",
            "Lcom/google/android/exoplayer2/audio/AudioProcessor;",
            "Landroid/os/Handler;",
            "Lc/e/a/a/b/q;",
            "Ljava/util/ArrayList<",
            "Lc/e/a/a/Q;",
            ">;)V"
        }
    .end annotation

    move v0, p2

    move-object/from16 v10, p9

    const-string v11, "DefaultRenderersFactory"

    .line 24
    new-instance v12, Lc/e/a/a/b/B;

    .line 25
    invoke-static {p1}, Lc/e/a/a/b/m;->a(Landroid/content/Context;)Lc/e/a/a/b/m;

    move-result-object v8

    move-object v1, v12

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lc/e/a/a/b/B;-><init>(Landroid/content/Context;Lc/e/a/a/f/c;Lc/e/a/a/d/l;ZLandroid/os/Handler;Lc/e/a/a/b/q;Lc/e/a/a/b/m;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    .line 26
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    const-string v0, "com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer"

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    .line 28
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 29
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/os/Handler;

    aput-object v7, v6, v3

    const-class v7, Lc/e/a/a/b/q;

    aput-object v7, v6, v5

    const-class v7, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aput-object v7, v6, v2

    .line 30
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 31
    new-array v6, v4, [Ljava/lang/Object;

    aput-object p7, v6, v3

    aput-object p8, v6, v5

    aput-object p6, v6, v2

    .line 32
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/Q;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v1, 0x1

    .line 33
    :try_start_1
    invoke-virtual {v10, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded LibopusAudioRenderer."

    .line 34
    invoke-static {v11, v0}, Lc/e/a/a/o/p;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 35
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating Opus extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move v6, v1

    :catch_2
    :goto_0
    const-string v0, "com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer"

    .line 36
    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 37
    new-array v1, v4, [Ljava/lang/Class;

    const-class v7, Landroid/os/Handler;

    aput-object v7, v1, v3

    const-class v7, Lc/e/a/a/b/q;

    aput-object v7, v1, v5

    const-class v7, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aput-object v7, v1, v2

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 39
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p7, v1, v3

    aput-object p8, v1, v5

    aput-object p6, v1, v2

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/Q;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    add-int/lit8 v1, v6, 0x1

    .line 41
    :try_start_3
    invoke-virtual {v10, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded LibflacAudioRenderer."

    .line 42
    invoke-static {v11, v0}, Lc/e/a/a/o/p;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    .line 43
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FLAC extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move v1, v6

    :catch_5
    :goto_1
    const-string v0, "com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer"

    .line 44
    :try_start_4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 45
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/os/Handler;

    aput-object v7, v6, v3

    const-class v7, Lc/e/a/a/b/q;

    aput-object v7, v6, v5

    const-class v7, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aput-object v7, v6, v2

    .line 46
    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 47
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p7, v4, v3

    aput-object p8, v4, v5

    aput-object p6, v4, v2

    .line 48
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/a/Q;

    .line 49
    invoke-virtual {v10, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded FfmpegAudioRenderer."

    .line 50
    invoke-static {v11, v0}, Lc/e/a/a/o/p;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_2

    :catch_6
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FFmpeg extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_7
    :goto_2
    return-void
.end method

.method public a(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lc/e/a/a/Q;",
            ">;)V"
        }
    .end annotation

    .line 54
    new-instance p1, Lc/e/a/a/p/a/b;

    invoke-direct {p1}, Lc/e/a/a/p/a/b;-><init>()V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/ArrayList<",
            "Lc/e/a/a/Q;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Landroid/content/Context;Lc/e/a/a/g/f;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/e/a/a/g/f;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lc/e/a/a/Q;",
            ">;)V"
        }
    .end annotation

    .line 53
    new-instance p1, Lc/e/a/a/g/g;

    invoke-direct {p1, p2, p3}, Lc/e/a/a/g/g;-><init>(Lc/e/a/a/g/f;Landroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/content/Context;Lc/e/a/a/k/k;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/e/a/a/k/k;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lc/e/a/a/Q;",
            ">;)V"
        }
    .end annotation

    .line 52
    new-instance p1, Lc/e/a/a/k/l;

    invoke-direct {p1, p2, p3}, Lc/e/a/a/k/l;-><init>(Lc/e/a/a/k/k;Landroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/os/Handler;Lc/e/a/a/p/s;Lc/e/a/a/b/q;Lc/e/a/a/k/k;Lc/e/a/a/g/f;Lc/e/a/a/d/l;)[Lc/e/a/a/Q;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lc/e/a/a/p/s;",
            "Lc/e/a/a/b/q;",
            "Lc/e/a/a/k/k;",
            "Lc/e/a/a/g/f;",
            "Lc/e/a/a/d/l<",
            "Lc/e/a/a/d/p;",
            ">;)[",
            "Lc/e/a/a/Q;"
        }
    .end annotation

    move-object v11, p0

    if-nez p6, :cond_0

    .line 1
    iget-object v0, v11, Lc/e/a/a/v;->b:Lc/e/a/a/d/l;

    move-object v12, v0

    goto :goto_0

    :cond_0
    move-object/from16 v12, p6

    .line 2
    :goto_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, v11, Lc/e/a/a/v;->a:Landroid/content/Context;

    iget v2, v11, Lc/e/a/a/v;->c:I

    iget-object v3, v11, Lc/e/a/a/v;->f:Lc/e/a/a/f/c;

    iget-boolean v5, v11, Lc/e/a/a/v;->e:Z

    iget-wide v8, v11, Lc/e/a/a/v;->d:J

    move-object v0, p0

    move-object v4, v12

    move-object v6, p1

    move-object/from16 v7, p2

    move-object v10, v13

    invoke-virtual/range {v0 .. v10}, Lc/e/a/a/v;->a(Landroid/content/Context;ILc/e/a/a/f/c;Lc/e/a/a/d/l;ZLandroid/os/Handler;Lc/e/a/a/p/s;JLjava/util/ArrayList;)V

    .line 4
    iget-object v1, v11, Lc/e/a/a/v;->a:Landroid/content/Context;

    iget v2, v11, Lc/e/a/a/v;->c:I

    iget-object v3, v11, Lc/e/a/a/v;->f:Lc/e/a/a/f/c;

    iget-boolean v5, v11, Lc/e/a/a/v;->e:Z

    .line 5
    invoke-virtual {p0}, Lc/e/a/a/v;->a()[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    move-result-object v6

    move-object v7, p1

    move-object/from16 v8, p3

    move-object v9, v13

    .line 6
    invoke-virtual/range {v0 .. v9}, Lc/e/a/a/v;->a(Landroid/content/Context;ILc/e/a/a/f/c;Lc/e/a/a/d/l;Z[Lcom/google/android/exoplayer2/audio/AudioProcessor;Landroid/os/Handler;Lc/e/a/a/b/q;Ljava/util/ArrayList;)V

    .line 7
    iget-object v1, v11, Lc/e/a/a/v;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, v11, Lc/e/a/a/v;->c:I

    move-object/from16 v2, p4

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lc/e/a/a/v;->a(Landroid/content/Context;Lc/e/a/a/k/k;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 8
    iget-object v1, v11, Lc/e/a/a/v;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, v11, Lc/e/a/a/v;->c:I

    move-object/from16 v2, p5

    invoke-virtual/range {v0 .. v5}, Lc/e/a/a/v;->a(Landroid/content/Context;Lc/e/a/a/g/f;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 9
    iget-object v0, v11, Lc/e/a/a/v;->a:Landroid/content/Context;

    iget v1, v11, Lc/e/a/a/v;->c:I

    invoke-virtual {p0, v0, v1, v13}, Lc/e/a/a/v;->a(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 10
    iget-object v0, v11, Lc/e/a/a/v;->a:Landroid/content/Context;

    iget v1, v11, Lc/e/a/a/v;->c:I

    move-object v2, p1

    invoke-virtual {p0, v0, p1, v1, v13}, Lc/e/a/a/v;->a(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    const/4 v0, 0x0

    .line 11
    new-array v0, v0, [Lc/e/a/a/Q;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/e/a/a/Q;

    return-object v0
.end method

.method public a()[Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .locals 1

    const/4 v0, 0x0

    .line 55
    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    return-object v0
.end method
