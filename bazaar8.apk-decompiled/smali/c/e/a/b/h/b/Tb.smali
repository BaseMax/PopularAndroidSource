.class public Lc/e/a/b/h/b/Tb;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/h/b/wa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/b/h/b/Tb$a;
    }
.end annotation


# static fields
.field public static volatile a:Lc/e/a/b/h/b/Tb;


# instance fields
.field public b:Lc/e/a/b/h/b/T;

.field public c:Lc/e/a/b/h/b/x;

.field public d:Lc/e/a/b/h/b/sc;

.field public e:Lc/e/a/b/h/b/D;

.field public f:Lc/e/a/b/h/b/Pb;

.field public g:Lc/e/a/b/h/b/lc;

.field public final h:Lc/e/a/b/h/b/Zb;

.field public i:Lc/e/a/b/h/b/ab;

.field public final j:Lc/e/a/b/h/b/Y;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:J

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public p:I

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Ljava/nio/channels/FileLock;

.field public v:Ljava/nio/channels/FileChannel;

.field public w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public y:J


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Yb;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lc/e/a/b/h/b/Tb;-><init>(Lc/e/a/b/h/b/Yb;Lc/e/a/b/h/b/Y;)V

    return-void
.end method

.method public constructor <init>(Lc/e/a/b/h/b/Yb;Lc/e/a/b/h/b/Y;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lc/e/a/b/h/b/Tb;->k:Z

    .line 4
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p2, p1, Lc/e/a/b/h/b/Yb;->a:Landroid/content/Context;

    const/4 v0, 0x0

    .line 6
    invoke-static {p2, v0}, Lc/e/a/b/h/b/Y;->a(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzy;)Lc/e/a/b/h/b/Y;

    move-result-object p2

    .line 7
    iput-object p2, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lc/e/a/b/h/b/Tb;->y:J

    .line 9
    new-instance p2, Lc/e/a/b/h/b/Zb;

    invoke-direct {p2, p0}, Lc/e/a/b/h/b/Zb;-><init>(Lc/e/a/b/h/b/Tb;)V

    .line 10
    invoke-virtual {p2}, Lc/e/a/b/h/b/Sb;->t()V

    .line 11
    iput-object p2, p0, Lc/e/a/b/h/b/Tb;->h:Lc/e/a/b/h/b/Zb;

    .line 12
    new-instance p2, Lc/e/a/b/h/b/x;

    invoke-direct {p2, p0}, Lc/e/a/b/h/b/x;-><init>(Lc/e/a/b/h/b/Tb;)V

    .line 13
    invoke-virtual {p2}, Lc/e/a/b/h/b/Sb;->t()V

    .line 14
    iput-object p2, p0, Lc/e/a/b/h/b/Tb;->c:Lc/e/a/b/h/b/x;

    .line 15
    new-instance p2, Lc/e/a/b/h/b/T;

    invoke-direct {p2, p0}, Lc/e/a/b/h/b/T;-><init>(Lc/e/a/b/h/b/Tb;)V

    .line 16
    invoke-virtual {p2}, Lc/e/a/b/h/b/Sb;->t()V

    .line 17
    iput-object p2, p0, Lc/e/a/b/h/b/Tb;->b:Lc/e/a/b/h/b/T;

    .line 18
    iget-object p2, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p2}, Lc/e/a/b/h/b/Y;->d()Lc/e/a/b/h/b/U;

    move-result-object p2

    .line 19
    new-instance v0, Lc/e/a/b/h/b/Ub;

    invoke-direct {v0, p0, p1}, Lc/e/a/b/h/b/Ub;-><init>(Lc/e/a/b/h/b/Tb;Lc/e/a/b/h/b/Yb;)V

    .line 20
    invoke-virtual {p2, v0}, Lc/e/a/b/h/b/U;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lc/e/a/b/h/b/Tb;
    .locals 2

    .line 1
    invoke-static {p0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lc/e/a/b/h/b/Tb;->a:Lc/e/a/b/h/b/Tb;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lc/e/a/b/h/b/Tb;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lc/e/a/b/h/b/Tb;->a:Lc/e/a/b/h/b/Tb;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lc/e/a/b/h/b/Yb;

    invoke-direct {v1, p0}, Lc/e/a/b/h/b/Yb;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance p0, Lc/e/a/b/h/b/Tb;

    invoke-direct {p0, v1}, Lc/e/a/b/h/b/Tb;-><init>(Lc/e/a/b/h/b/Yb;)V

    .line 8
    sput-object p0, Lc/e/a/b/h/b/Tb;->a:Lc/e/a/b/h/b/Tb;

    .line 9
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 10
    :cond_1
    :goto_0
    sget-object p0, Lc/e/a/b/h/b/Tb;->a:Lc/e/a/b/h/b/Tb;

    return-object p0
.end method

.method public static synthetic a(Lc/e/a/b/h/b/Tb;Lcom/google/android/gms/measurement/internal/zzm;)Lc/e/a/b/h/b/_b;
    .locals 0

    .line 1071
    invoke-virtual {p0, p1}, Lc/e/a/b/h/b/Tb;->d(Lcom/google/android/gms/measurement/internal/zzm;)Lc/e/a/b/h/b/_b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lc/e/a/b/h/b/Sb;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 37
    invoke-virtual {p0}, Lc/e/a/b/h/b/Sb;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lc/e/a/b/h/b/Tb;Lc/e/a/b/h/b/Yb;)V
    .locals 0

    .line 1070
    invoke-virtual {p0, p1}, Lc/e/a/b/h/b/Tb;->a(Lc/e/a/b/h/b/Yb;)V

    return-void
.end method

.method public static a([Lc/e/a/b/g/f/K;I)[Lc/e/a/b/g/f/K;
    .locals 3

    .line 633
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Lc/e/a/b/g/f/K;

    if-lez p1, :cond_0

    const/4 v1, 0x0

    .line 634
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 635
    :cond_0
    array-length v1, v0

    if-ge p1, v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    .line 636
    array-length v2, v0

    sub-int/2addr v2, p1

    invoke-static {p0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v0
.end method

.method public static a([Lc/e/a/b/g/f/K;ILjava/lang/String;)[Lc/e/a/b/g/f/K;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 637
    :goto_0
    array-length v2, p0

    const-string v3, "_err"

    if-ge v1, v2, :cond_1

    .line 638
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lc/e/a/b/g/f/K;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    :cond_1
    array-length v1, p0

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lc/e/a/b/g/f/K;

    .line 640
    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 641
    invoke-static {}, Lc/e/a/b/g/f/K;->B()Lc/e/a/b/g/f/K$a;

    move-result-object p0

    .line 642
    invoke-virtual {p0, v3}, Lc/e/a/b/g/f/K$a;->a(Ljava/lang/String;)Lc/e/a/b/g/f/K$a;

    int-to-long v2, p1

    .line 643
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lc/e/a/b/g/f/K$a;->a(J)Lc/e/a/b/g/f/K$a;

    .line 644
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb$a;->o()Lc/e/a/b/g/f/Sb;

    move-result-object p0

    check-cast p0, Lc/e/a/b/g/f/K;

    .line 645
    invoke-static {}, Lc/e/a/b/g/f/K;->B()Lc/e/a/b/g/f/K$a;

    move-result-object p1

    const-string v0, "_ev"

    invoke-virtual {p1, v0}, Lc/e/a/b/g/f/K$a;->a(Ljava/lang/String;)Lc/e/a/b/g/f/K$a;

    invoke-virtual {p1, p2}, Lc/e/a/b/g/f/K$a;->b(Ljava/lang/String;)Lc/e/a/b/g/f/K$a;

    invoke-virtual {p1}, Lc/e/a/b/g/f/nb$a;->o()Lc/e/a/b/g/f/Sb;

    move-result-object p1

    check-cast p1, Lc/e/a/b/g/f/K;

    .line 646
    array-length p2, v1

    add-int/lit8 p2, p2, -0x2

    aput-object p0, v1, p2

    .line 647
    array-length p0, v1

    add-int/lit8 p0, p0, -0x1

    aput-object p1, v1, p0

    return-object v1
.end method

.method public static a([Lc/e/a/b/g/f/K;Ljava/lang/String;)[Lc/e/a/b/g/f/K;
    .locals 2

    const/4 v0, 0x0

    .line 630
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 631
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lc/e/a/b/g/f/K;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-gez v0, :cond_2

    return-object p0

    .line 632
    :cond_2
    invoke-static {p0, v0}, Lc/e/a/b/h/b/Tb;->a([Lc/e/a/b/g/f/K;I)[Lc/e/a/b/g/f/K;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()V
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/b/h/b/Tb;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/e/a/b/h/b/Tb;->q:I

    return-void
.end method

.method public final B()Lc/e/a/b/h/b/Y;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    return-object v0
.end method

.method public final C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lc/e/a/b/h/b/U;->l()V

    return-void
.end method

.method public final a(Ljava/nio/channels/FileChannel;)I
    .locals 5

    .line 815
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->C()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 816
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    .line 817
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 818
    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 819
    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-eq p1, v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 820
    iget-object v1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 821
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "Unexpected data length. Bytes read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return v0

    .line 822
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 823
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 824
    iget-object v1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 825
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "Failed to read from channel"

    invoke-virtual {v1, v2, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return v0

    .line 826
    :cond_3
    :goto_1
    iget-object p1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 827
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string v1, "Bad channel to read from"

    invoke-virtual {p1, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    return v0
.end method

.method public final a()Lc/e/a/b/h/b/nc;
    .locals 1

    .line 36
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->a()Lc/e/a/b/h/b/nc;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZJLjava/lang/String;)Lcom/google/android/gms/measurement/internal/zzm;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    const-string v1, "Unknown"

    .line 872
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 873
    iget-object v1, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 874
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "PackageManager is null, can not log app install information"

    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    return-object v4

    .line 875
    :cond_0
    :try_start_0
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 876
    :catch_0
    iget-object v3, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v3

    .line 877
    invoke-virtual {v3}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v3

    .line 878
    invoke-static/range {p2 .. p2}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Error retrieving installer package name. appId"

    invoke-virtual {v3, v6, v5}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v3, v1

    :goto_0
    if-nez v3, :cond_1

    const-string v3, "manual_install"

    goto :goto_1

    :cond_1
    const-string v5, "com.android.vending"

    .line 879
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v3, ""

    :cond_2
    :goto_1
    move-object v7, v3

    .line 880
    :try_start_1
    invoke-static/range {p1 .. p1}, Lc/e/a/b/d/h/c;->a(Landroid/content/Context;)Lc/e/a/b/d/h/b;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Lc/e/a/b/d/h/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 881
    invoke-static/range {p1 .. p1}, Lc/e/a/b/d/h/c;->a(Landroid/content/Context;)Lc/e/a/b/d/h/b;

    move-result-object v5

    invoke-virtual {v5, v2}, Lc/e/a/b/d/h/b;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 882
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 883
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 884
    :cond_3
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 885
    iget v1, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v1

    move-object v4, v5

    goto :goto_2

    :cond_4
    const/high16 v3, -0x80000000

    move-object v4, v1

    :goto_2
    const-wide/16 v16, 0x0

    .line 886
    iget-object v1, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->a()Lc/e/a/b/h/b/nc;

    const-wide/16 v5, 0x0

    .line 887
    iget-object v1, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v1

    .line 888
    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/pc;->p(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-wide/from16 v18, p7

    goto :goto_3

    :cond_5
    move-wide/from16 v18, v5

    .line 889
    :goto_3
    new-instance v28, Lcom/google/android/gms/measurement/internal/zzm;

    move-object/from16 v1, v28

    int-to-long v5, v3

    .line 890
    iget-object v3, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v3

    .line 891
    invoke-virtual {v3}, Lc/e/a/b/h/b/pc;->n()J

    move-result-wide v8

    .line 892
    iget-object v3, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v3

    move-object/from16 v10, p1

    .line 893
    invoke-virtual {v3, v10, v2}, Lc/e/a/b/h/b/cc;->b(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const-string v15, ""

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v13, p4

    move/from16 v21, p5

    move/from16 v22, p6

    move-object/from16 v24, p9

    invoke-direct/range {v1 .. v27}, Lcom/google/android/gms/measurement/internal/zzm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;J)V

    return-object v28

    .line 894
    :catch_1
    iget-object v3, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v3

    .line 895
    invoke-virtual {v3}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v3

    .line 896
    invoke-static/range {p2 .. p2}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "Error retrieving newly installed package info. appId, appName"

    .line 897
    invoke-virtual {v3, v5, v2, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzm;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 974
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v1

    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/sc;->b(Ljava/lang/String;)Lc/e/a/b/h/b/_b;

    move-result-object v15

    const/4 v1, 0x0

    if-eqz v15, :cond_2

    .line 975
    invoke-virtual {v15}, Lc/e/a/b/h/b/_b;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 976
    :cond_0
    invoke-virtual {v0, v15}, Lc/e/a/b/h/b/Tb;->b(Lc/e/a/b/h/b/_b;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 977
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 978
    iget-object v3, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v3

    .line 979
    invoke-virtual {v3}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v3

    .line 980
    invoke-static/range {p1 .. p1}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "App version does not match; dropping. appId"

    invoke-virtual {v3, v4, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 981
    :cond_1
    new-instance v28, Lcom/google/android/gms/measurement/internal/zzm;

    move-object/from16 v1, v28

    .line 982
    invoke-virtual {v15}, Lc/e/a/b/h/b/_b;->c()Ljava/lang/String;

    move-result-object v3

    .line 983
    invoke-virtual {v15}, Lc/e/a/b/h/b/_b;->k()Ljava/lang/String;

    move-result-object v4

    .line 984
    invoke-virtual {v15}, Lc/e/a/b/h/b/_b;->l()J

    move-result-wide v5

    .line 985
    invoke-virtual {v15}, Lc/e/a/b/h/b/_b;->m()Ljava/lang/String;

    move-result-object v7

    .line 986
    invoke-virtual {v15}, Lc/e/a/b/h/b/_b;->n()J

    move-result-wide v8

    .line 987
    invoke-virtual {v15}, Lc/e/a/b/h/b/_b;->o()J

    move-result-wide v10

    const/4 v12, 0x0

    .line 988
    invoke-virtual {v15}, Lc/e/a/b/h/b/_b;->d()Z

    move-result v13

    const/4 v14, 0x0

    .line 989
    invoke-virtual {v15}, Lc/e/a/b/h/b/_b;->b()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v26, v15

    move-object/from16 v15, v16

    .line 990
    invoke-virtual/range {v26 .. v26}, Lc/e/a/b/h/b/_b;->C()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    .line 991
    invoke-virtual/range {v26 .. v26}, Lc/e/a/b/h/b/_b;->D()Z

    move-result v21

    .line 992
    invoke-virtual/range {v26 .. v26}, Lc/e/a/b/h/b/_b;->E()Z

    move-result v22

    const/16 v23, 0x0

    .line 993
    invoke-virtual/range {v26 .. v26}, Lc/e/a/b/h/b/_b;->g()Ljava/lang/String;

    move-result-object v24

    .line 994
    invoke-virtual/range {v26 .. v26}, Lc/e/a/b/h/b/_b;->F()Ljava/lang/Boolean;

    move-result-object v25

    .line 995
    invoke-virtual/range {v26 .. v26}, Lc/e/a/b/h/b/_b;->p()J

    move-result-wide v26

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v27}, Lcom/google/android/gms/measurement/internal/zzm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;J)V

    return-object v28

    .line 996
    :cond_2
    :goto_0
    iget-object v3, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v3

    .line 997
    invoke-virtual {v3}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object v3

    const-string v4, "No app data available; dropping"

    invoke-virtual {v3, v4, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final a(ILjava/lang/Throwable;[BLjava/lang/String;)V
    .locals 9

    .line 648
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 649
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->r()V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 650
    :try_start_0
    new-array p3, v0, [B

    .line 651
    :cond_0
    iget-object v1, p0, Lc/e/a/b/h/b/Tb;->w:Ljava/util/List;

    const/4 v2, 0x0

    .line 652
    iput-object v2, p0, Lc/e/a/b/h/b/Tb;->w:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0xc8

    const/4 v4, 0x1

    if-eq p1, v3, :cond_1

    const/16 v3, 0xcc

    if-ne p1, v3, :cond_6

    :cond_1
    if-nez p2, :cond_6

    .line 653
    :try_start_1
    iget-object p2, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p2}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object p2

    .line 654
    iget-object p2, p2, Lc/e/a/b/h/b/F;->f:Lc/e/a/b/h/b/I;

    .line 655
    iget-object p4, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p4}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object p4

    .line 656
    invoke-interface {p4}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Lc/e/a/b/h/b/I;->a(J)V

    .line 657
    iget-object p2, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p2}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object p2

    .line 658
    iget-object p2, p2, Lc/e/a/b/h/b/F;->g:Lc/e/a/b/h/b/I;

    const-wide/16 v5, 0x0

    invoke-virtual {p2, v5, v6}, Lc/e/a/b/h/b/I;->a(J)V

    .line 659
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->v()V

    .line 660
    iget-object p2, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p2}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p2

    .line 661
    invoke-virtual {p2}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object p2

    const-string p4, "Successful upload. Got network response. code, size"

    .line 662
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p4, p1, p3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 663
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/sc;->v()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 664
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 665
    :try_start_3
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 666
    invoke-virtual {p3}, Lc/e/a/b/h/b/ua;->l()V

    .line 667
    invoke-virtual {p3}, Lc/e/a/b/h/b/Sb;->s()V

    .line 668
    invoke-virtual {p3}, Lc/e/a/b/h/b/sc;->x()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p4

    .line 669
    new-array v1, v4, [Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v3, "queue"

    const-string v7, "rowid=?"

    .line 670
    invoke-virtual {p4, v3, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p4

    if-ne p4, v4, :cond_2

    goto :goto_0

    .line 671
    :cond_2
    new-instance p4, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Deleted fewer rows from queue than expected"

    invoke-direct {p4, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p4
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception p4

    .line 672
    :try_start_5
    invoke-virtual {p3}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object p3

    invoke-virtual {p3}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p3

    const-string v1, "Failed to delete a bundle in a queue table"

    invoke-virtual {p3, v1, p4}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 673
    throw p4
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception p3

    .line 674
    :try_start_6
    iget-object p4, p0, Lc/e/a/b/h/b/Tb;->x:Ljava/util/List;

    if-eqz p4, :cond_3

    iget-object p4, p0, Lc/e/a/b/h/b/Tb;->x:Ljava/util/List;

    .line 675
    invoke-interface {p4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 676
    :cond_3
    throw p3

    .line 677
    :cond_4
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/sc;->y()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 678
    :try_start_7
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/sc;->w()V

    .line 679
    iput-object v2, p0, Lc/e/a/b/h/b/Tb;->x:Ljava/util/List;

    .line 680
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->n()Lc/e/a/b/h/b/x;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/x;->v()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->u()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 681
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->t()V

    goto :goto_1

    :cond_5
    const-wide/16 p1, -0x1

    .line 682
    iput-wide p1, p0, Lc/e/a/b/h/b/Tb;->y:J

    .line 683
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->v()V

    .line 684
    :goto_1
    iput-wide v5, p0, Lc/e/a/b/h/b/Tb;->n:J

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    .line 685
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p2

    invoke-virtual {p2}, Lc/e/a/b/h/b/sc;->w()V

    throw p1
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_2
    move-exception p1

    .line 686
    :try_start_8
    iget-object p2, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p2}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p2

    .line 687
    invoke-virtual {p2}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 688
    iget-object p1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object p1

    .line 689
    invoke-interface {p1}, Lc/e/a/b/d/g/e;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lc/e/a/b/h/b/Tb;->n:J

    .line 690
    iget-object p1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 691
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide p3, p0, Lc/e/a/b/h/b/Tb;->n:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 692
    :cond_6
    iget-object p3, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p3}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p3

    .line 693
    invoke-virtual {p3}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object p3

    const-string v2, "Network upload failed. Will retry later. code, error"

    .line 694
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 695
    iget-object p2, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p2}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object p2

    .line 696
    iget-object p2, p2, Lc/e/a/b/h/b/F;->g:Lc/e/a/b/h/b/I;

    .line 697
    iget-object p3, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p3}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object p3

    .line 698
    invoke-interface {p3}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lc/e/a/b/h/b/I;->a(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_8

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    :cond_8
    :goto_2
    if-eqz v4, :cond_9

    .line 699
    iget-object p1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object p1

    .line 700
    iget-object p1, p1, Lc/e/a/b/h/b/F;->h:Lc/e/a/b/h/b/I;

    .line 701
    iget-object p2, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p2}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object p2

    .line 702
    invoke-interface {p2}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lc/e/a/b/h/b/I;->a(J)V

    .line 703
    :cond_9
    iget-object p1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object p1

    .line 704
    invoke-virtual {p1, p4}, Lc/e/a/b/h/b/pc;->j(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 705
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p1

    invoke-virtual {p1, v1}, Lc/e/a/b/h/b/sc;->a(Ljava/util/List;)V

    .line 706
    :cond_a
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->v()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 707
    :goto_3
    iput-boolean v0, p0, Lc/e/a/b/h/b/Tb;->s:Z

    .line 708
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->w()V

    return-void

    :catchall_1
    move-exception p1

    .line 709
    iput-boolean v0, p0, Lc/e/a/b/h/b/Tb;->s:Z

    .line 710
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->w()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public final a(Lc/e/a/b/h/b/Yb;)V
    .locals 3

    .line 11
    iget-object p1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->d()Lc/e/a/b/h/b/U;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lc/e/a/b/h/b/U;->l()V

    .line 13
    new-instance p1, Lc/e/a/b/h/b/sc;

    invoke-direct {p1, p0}, Lc/e/a/b/h/b/sc;-><init>(Lc/e/a/b/h/b/Tb;)V

    .line 14
    invoke-virtual {p1}, Lc/e/a/b/h/b/Sb;->t()V

    .line 15
    iput-object p1, p0, Lc/e/a/b/h/b/Tb;->d:Lc/e/a/b/h/b/sc;

    .line 16
    iget-object p1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->b:Lc/e/a/b/h/b/T;

    invoke-virtual {p1, v0}, Lc/e/a/b/h/b/pc;->a(Lc/e/a/b/h/b/rc;)V

    .line 18
    new-instance p1, Lc/e/a/b/h/b/lc;

    invoke-direct {p1, p0}, Lc/e/a/b/h/b/lc;-><init>(Lc/e/a/b/h/b/Tb;)V

    .line 19
    invoke-virtual {p1}, Lc/e/a/b/h/b/Sb;->t()V

    .line 20
    iput-object p1, p0, Lc/e/a/b/h/b/Tb;->g:Lc/e/a/b/h/b/lc;

    .line 21
    new-instance p1, Lc/e/a/b/h/b/ab;

    invoke-direct {p1, p0}, Lc/e/a/b/h/b/ab;-><init>(Lc/e/a/b/h/b/Tb;)V

    .line 22
    invoke-virtual {p1}, Lc/e/a/b/h/b/Sb;->t()V

    .line 23
    iput-object p1, p0, Lc/e/a/b/h/b/Tb;->i:Lc/e/a/b/h/b/ab;

    .line 24
    new-instance p1, Lc/e/a/b/h/b/Pb;

    invoke-direct {p1, p0}, Lc/e/a/b/h/b/Pb;-><init>(Lc/e/a/b/h/b/Tb;)V

    .line 25
    invoke-virtual {p1}, Lc/e/a/b/h/b/Sb;->t()V

    .line 26
    iput-object p1, p0, Lc/e/a/b/h/b/Tb;->f:Lc/e/a/b/h/b/Pb;

    .line 27
    new-instance p1, Lc/e/a/b/h/b/D;

    invoke-direct {p1, p0}, Lc/e/a/b/h/b/D;-><init>(Lc/e/a/b/h/b/Tb;)V

    .line 28
    iput-object p1, p0, Lc/e/a/b/h/b/Tb;->e:Lc/e/a/b/h/b/D;

    .line 29
    iget p1, p0, Lc/e/a/b/h/b/Tb;->p:I

    iget v0, p0, Lc/e/a/b/h/b/Tb;->q:I

    if-eq p1, v0, :cond_0

    .line 30
    iget-object p1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p1

    iget v0, p0, Lc/e/a/b/h/b/Tb;->p:I

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lc/e/a/b/h/b/Tb;->q:I

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all upload components initialized"

    .line 34
    invoke-virtual {p1, v2, v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lc/e/a/b/h/b/Tb;->k:Z

    return-void
.end method

.method public final a(Lc/e/a/b/h/b/_b;)V
    .locals 12

    .line 711
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 712
    invoke-virtual {p1}, Lc/e/a/b/h/b/_b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    invoke-static {}, Lc/e/a/b/h/b/pc;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {p1}, Lc/e/a/b/h/b/_b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    :cond_0
    invoke-virtual {p1}, Lc/e/a/b/h/b/_b;->f()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lc/e/a/b/h/b/Tb;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 716
    :cond_1
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v0

    .line 717
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 718
    invoke-virtual {p1}, Lc/e/a/b/h/b/_b;->c()Ljava/lang/String;

    move-result-object v2

    .line 719
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lc/e/a/b/h/b/pc;->x()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 720
    invoke-virtual {p1}, Lc/e/a/b/h/b/_b;->g()Ljava/lang/String;

    move-result-object v2

    .line 721
    :cond_2
    sget-object v3, Lc/e/a/b/h/b/k;->s:Lc/e/a/b/h/b/k$a;

    const/4 v4, 0x0

    .line 722
    invoke-virtual {v3, v4}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 723
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v5, Lc/e/a/b/h/b/k;->t:Lc/e/a/b/h/b/k$a;

    .line 724
    invoke-virtual {v5, v4}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 725
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "config/app/"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 726
    :goto_0
    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 727
    invoke-virtual {p1}, Lc/e/a/b/h/b/_b;->a()Ljava/lang/String;

    move-result-object v3

    const-string v5, "app_instance_id"

    invoke-virtual {v2, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "platform"

    const-string v5, "android"

    .line 728
    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 729
    invoke-virtual {v0}, Lc/e/a/b/h/b/pc;->n()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v3, "gmp_version"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 730
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 732
    iget-object v1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 733
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {p1}, Lc/e/a/b/h/b/_b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 734
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->m()Lc/e/a/b/h/b/T;

    move-result-object v1

    invoke-virtual {p1}, Lc/e/a/b/h/b/_b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/T;->b(Ljava/lang/String;)Lc/e/a/b/g/f/aa;

    move-result-object v1

    .line 735
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->m()Lc/e/a/b/h/b/T;

    move-result-object v2

    invoke-virtual {p1}, Lc/e/a/b/h/b/_b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc/e/a/b/h/b/T;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_4

    .line 736
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 737
    new-instance v4, Lb/f/b;

    invoke-direct {v4}, Lb/f/b;-><init>()V

    const-string v1, "If-Modified-Since"

    .line 738
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v10, v4

    const/4 v1, 0x1

    .line 739
    iput-boolean v1, p0, Lc/e/a/b/h/b/Tb;->r:Z

    .line 740
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->n()Lc/e/a/b/h/b/x;

    move-result-object v6

    .line 741
    invoke-virtual {p1}, Lc/e/a/b/h/b/_b;->f()Ljava/lang/String;

    move-result-object v7

    new-instance v11, Lc/e/a/b/h/b/Wb;

    invoke-direct {v11, p0}, Lc/e/a/b/h/b/Wb;-><init>(Lc/e/a/b/h/b/Tb;)V

    .line 742
    invoke-virtual {v6}, Lc/e/a/b/h/b/ua;->l()V

    .line 743
    invoke-virtual {v6}, Lc/e/a/b/h/b/Sb;->s()V

    .line 744
    invoke-static {v8}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    invoke-static {v11}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    invoke-virtual {v6}, Lc/e/a/b/h/b/ua;->d()Lc/e/a/b/h/b/U;

    move-result-object v1

    new-instance v2, Lc/e/a/b/h/b/C;

    const/4 v9, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lc/e/a/b/h/b/C;-><init>(Lc/e/a/b/h/b/x;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lc/e/a/b/h/b/A;)V

    .line 747
    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/U;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 748
    :catch_0
    iget-object v1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 749
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v1

    .line 750
    invoke-virtual {p1}, Lc/e/a/b/h/b/_b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    .line 751
    invoke-virtual {v1, v2, p1, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 69
    invoke-static/range {p2 .. p2}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-static {v3}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 72
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->r()V

    .line 73
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    .line 74
    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzaj;->d:J

    .line 75
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lc/e/a/b/h/b/Zb;->a(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 76
    :cond_0
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzm;->h:Z

    if-nez v4, :cond_1

    .line 77
    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/Tb;->d(Lcom/google/android/gms/measurement/internal/zzm;)Lc/e/a/b/h/b/_b;

    return-void

    .line 78
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v4

    invoke-virtual {v4}, Lc/e/a/b/h/b/sc;->v()V

    .line 79
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v4

    .line 80
    invoke-static {v3}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    invoke-virtual {v4}, Lc/e/a/b/h/b/ua;->l()V

    .line 82
    invoke-virtual {v4}, Lc/e/a/b/h/b/Sb;->s()V

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    cmp-long v8, v11, v6

    if-gez v8, :cond_2

    .line 83
    invoke-virtual {v4}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v4

    .line 84
    invoke-virtual {v4}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v4

    const-string v8, "Invalid time querying timed out conditional properties"

    .line 85
    invoke-static {v3}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 86
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 87
    invoke-virtual {v4, v8, v9, v10}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v8, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    .line 89
    new-array v9, v5, [Ljava/lang/String;

    aput-object v3, v9, v13

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v14

    .line 90
    invoke-virtual {v4, v8, v9}, Lc/e/a/b/h/b/sc;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 91
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzr;

    if-eqz v8, :cond_3

    .line 92
    iget-object v9, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v9}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v9

    .line 93
    invoke-virtual {v9}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object v9

    const-string v10, "User property timed out"

    iget-object v15, v8, Lcom/google/android/gms/measurement/internal/zzr;->a:Ljava/lang/String;

    .line 94
    iget-object v14, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v14}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v14

    .line 95
    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    invoke-virtual {v14, v13}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    .line 96
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzga;->x()Ljava/lang/Object;

    move-result-object v14

    .line 97
    invoke-virtual {v9, v10, v15, v13, v14}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzr;->g:Lcom/google/android/gms/measurement/internal/zzaj;

    if-eqz v9, :cond_4

    .line 99
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzaj;

    iget-object v10, v8, Lcom/google/android/gms/measurement/internal/zzr;->g:Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-direct {v9, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Lcom/google/android/gms/measurement/internal/zzaj;J)V

    invoke-virtual {v1, v9, v2}, Lc/e/a/b/h/b/Tb;->b(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 100
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v9

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    invoke-virtual {v9, v3, v8}, Lc/e/a/b/h/b/sc;->f(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto :goto_1

    .line 101
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v4

    .line 102
    invoke-static {v3}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    invoke-virtual {v4}, Lc/e/a/b/h/b/ua;->l()V

    .line 104
    invoke-virtual {v4}, Lc/e/a/b/h/b/Sb;->s()V

    cmp-long v8, v11, v6

    if-gez v8, :cond_6

    .line 105
    invoke-virtual {v4}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v4

    .line 106
    invoke-virtual {v4}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v4

    const-string v8, "Invalid time querying expired conditional properties"

    .line 107
    invoke-static {v3}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 108
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 109
    invoke-virtual {v4, v8, v9, v10}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_2

    :cond_6
    const-string v8, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    .line 111
    new-array v9, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v9, v13

    .line 112
    invoke-virtual {v4, v8, v9}, Lc/e/a/b/h/b/sc;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 113
    :goto_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzr;

    if-eqz v9, :cond_7

    .line 115
    iget-object v10, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v10}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v10

    .line 116
    invoke-virtual {v10}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object v10

    const-string v13, "User property expired"

    iget-object v14, v9, Lcom/google/android/gms/measurement/internal/zzr;->a:Ljava/lang/String;

    .line 117
    iget-object v15, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v15}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v15

    .line 118
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    invoke-virtual {v15, v5}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v15, v9, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    .line 119
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzga;->x()Ljava/lang/Object;

    move-result-object v15

    .line 120
    invoke-virtual {v10, v13, v14, v5, v15}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v5

    iget-object v10, v9, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    invoke-virtual {v5, v3, v10}, Lc/e/a/b/h/b/sc;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzr;->k:Lcom/google/android/gms/measurement/internal/zzaj;

    if-eqz v5, :cond_8

    .line 123
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzr;->k:Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v5

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    invoke-virtual {v5, v3, v9}, Lc/e/a/b/h/b/sc;->f(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    goto :goto_3

    .line 125
    :cond_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_a

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzaj;

    .line 126
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-direct {v10, v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Lcom/google/android/gms/measurement/internal/zzaj;J)V

    invoke-virtual {v1, v10, v2}, Lc/e/a/b/h/b/Tb;->b(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_4

    .line 127
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzaj;->a:Ljava/lang/String;

    .line 128
    invoke-static {v3}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    invoke-static {v5}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    invoke-virtual {v4}, Lc/e/a/b/h/b/ua;->l()V

    .line 131
    invoke-virtual {v4}, Lc/e/a/b/h/b/Sb;->s()V

    cmp-long v8, v11, v6

    if-gez v8, :cond_b

    .line 132
    invoke-virtual {v4}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v6

    .line 133
    invoke-virtual {v6}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v6

    const-string v7, "Invalid time querying triggered conditional properties"

    .line 134
    invoke-static {v3}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 135
    invoke-virtual {v4}, Lc/e/a/b/h/b/ua;->f()Lc/e/a/b/h/b/r;

    move-result-object v4

    invoke-virtual {v4, v5}, Lc/e/a/b/h/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 137
    invoke-virtual {v6, v7, v3, v4, v5}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v13, 0x0

    goto :goto_5

    :cond_b
    const-string v6, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v7, 0x3

    .line 139
    new-array v7, v7, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v3, v7, v13

    const/4 v3, 0x1

    aput-object v5, v7, v3

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v7, v5

    .line 140
    invoke-virtual {v4, v6, v7}, Lc/e/a/b/h/b/sc;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 141
    :goto_5
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/google/android/gms/measurement/internal/zzr;

    if-eqz v15, :cond_c

    .line 143
    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    .line 144
    new-instance v10, Lc/e/a/b/h/b/bc;

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/zzr;->a:Ljava/lang/String;

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzr;->b:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    .line 145
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzga;->x()Ljava/lang/Object;

    move-result-object v16

    move-object v4, v10

    move-wide v8, v11

    move-object v13, v10

    move-object/from16 v10, v16

    invoke-direct/range {v4 .. v10}, Lc/e/a/b/h/b/bc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 146
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v4

    invoke-virtual {v4, v13}, Lc/e/a/b/h/b/sc;->a(Lc/e/a/b/h/b/bc;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 147
    iget-object v4, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v4}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v4

    .line 148
    invoke-virtual {v4}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object v4

    const-string v5, "User property triggered"

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzr;->a:Ljava/lang/String;

    .line 149
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v7

    .line 150
    iget-object v8, v13, Lc/e/a/b/h/b/bc;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lc/e/a/b/h/b/bc;->e:Ljava/lang/Object;

    .line 151
    invoke-virtual {v4, v5, v6, v7, v8}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    .line 152
    :cond_d
    iget-object v4, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v4}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v4

    .line 153
    invoke-virtual {v4}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v4

    const-string v5, "Too many active user properties, ignoring"

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzr;->a:Ljava/lang/String;

    .line 154
    invoke-static {v6}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 155
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v7

    .line 156
    iget-object v8, v13, Lc/e/a/b/h/b/bc;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lc/e/a/b/h/b/bc;->e:Ljava/lang/Object;

    .line 157
    invoke-virtual {v4, v5, v6, v7, v8}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    :goto_7
    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzr;->i:Lcom/google/android/gms/measurement/internal/zzaj;

    if-eqz v4, :cond_e

    .line 159
    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzr;->i:Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_e
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzga;

    invoke-direct {v4, v13}, Lcom/google/android/gms/measurement/internal/zzga;-><init>(Lc/e/a/b/h/b/bc;)V

    iput-object v4, v15, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    const/4 v4, 0x1

    .line 161
    iput-boolean v4, v15, Lcom/google/android/gms/measurement/internal/zzr;->e:Z

    .line 162
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v5

    invoke-virtual {v5, v15}, Lc/e/a/b/h/b/sc;->a(Lcom/google/android/gms/measurement/internal/zzr;)Z

    const/4 v13, 0x0

    goto/16 :goto_6

    .line 163
    :cond_f
    invoke-virtual/range {p0 .. p2}, Lc/e/a/b/h/b/Tb;->b(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 164
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_10

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzaj;

    .line 165
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-direct {v5, v4, v11, v12}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Lcom/google/android/gms/measurement/internal/zzaj;J)V

    invoke-virtual {v1, v5, v2}, Lc/e/a/b/h/b/Tb;->b(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_8

    .line 166
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/sc;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/sc;->w()V

    return-void

    :catchall_0
    move-exception v0

    .line 168
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/sc;->w()V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzaj;Ljava/lang/String;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 40
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v2

    invoke-virtual {v2, v3}, Lc/e/a/b/h/b/sc;->b(Ljava/lang/String;)Lc/e/a/b/h/b/_b;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 41
    invoke-virtual {v15}, Lc/e/a/b/h/b/_b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 42
    :cond_0
    invoke-virtual {v0, v15}, Lc/e/a/b/h/b/Tb;->b(Lc/e/a/b/h/b/_b;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    .line 43
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzaj;->a:Ljava/lang/String;

    const-string v4, "_ui"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 44
    iget-object v2, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v2}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Could not find package. appId"

    invoke-virtual {v2, v5, v4}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 47
    iget-object v1, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v1

    .line 49
    invoke-static/range {p2 .. p2}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "App version does not match; dropping event. appId"

    .line 50
    invoke-virtual {v1, v3, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 51
    :cond_2
    :goto_0
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzm;

    move-object v2, v14

    .line 52
    invoke-virtual {v15}, Lc/e/a/b/h/b/_b;->c()Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-virtual {v15}, Lc/e/a/b/h/b/_b;->k()Ljava/lang/String;

    move-result-object v5

    .line 54
    invoke-virtual {v15}, Lc/e/a/b/h/b/_b;->l()J

    move-result-wide v6

    .line 55
    invoke-virtual {v15}, Lc/e/a/b/h/b/_b;->m()Ljava/lang/String;

    move-result-object v8

    .line 56
    invoke-virtual {v15}, Lc/e/a/b/h/b/_b;->n()J

    move-result-wide v9

    .line 57
    invoke-virtual {v15}, Lc/e/a/b/h/b/_b;->o()J

    move-result-wide v11

    const/4 v13, 0x0

    .line 58
    invoke-virtual {v15}, Lc/e/a/b/h/b/_b;->d()Z

    move-result v16

    move-object/from16 v29, v14

    move/from16 v14, v16

    const/16 v16, 0x0

    move-object/from16 v27, v15

    move/from16 v15, v16

    .line 59
    invoke-virtual/range {v27 .. v27}, Lc/e/a/b/h/b/_b;->b()Ljava/lang/String;

    move-result-object v16

    .line 60
    invoke-virtual/range {v27 .. v27}, Lc/e/a/b/h/b/_b;->C()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    .line 61
    invoke-virtual/range {v27 .. v27}, Lc/e/a/b/h/b/_b;->D()Z

    move-result v22

    .line 62
    invoke-virtual/range {v27 .. v27}, Lc/e/a/b/h/b/_b;->E()Z

    move-result v23

    const/16 v24, 0x0

    .line 63
    invoke-virtual/range {v27 .. v27}, Lc/e/a/b/h/b/_b;->g()Ljava/lang/String;

    move-result-object v25

    .line 64
    invoke-virtual/range {v27 .. v27}, Lc/e/a/b/h/b/_b;->F()Ljava/lang/Boolean;

    move-result-object v26

    .line 65
    invoke-virtual/range {v27 .. v27}, Lc/e/a/b/h/b/_b;->p()J

    move-result-wide v27

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v28}, Lcom/google/android/gms/measurement/internal/zzm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;J)V

    move-object/from16 v2, v29

    .line 66
    invoke-virtual {v0, v1, v2}, Lc/e/a/b/h/b/Tb;->a(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)V

    return-void

    .line 67
    :cond_3
    :goto_1
    iget-object v1, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzga;Lcom/google/android/gms/measurement/internal/zzm;)V
    .locals 12

    .line 898
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 899
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->r()V

    .line 900
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 901
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->h:Z

    if-nez v0, :cond_1

    .line 902
    invoke-virtual {p0, p2}, Lc/e/a/b/h/b/Tb;->d(Lcom/google/android/gms/measurement/internal/zzm;)Lc/e/a/b/h/b/_b;

    return-void

    .line 903
    :cond_1
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v0

    .line 904
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/cc;->c(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-eqz v4, :cond_3

    .line 905
    iget-object v3, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    .line 906
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    .line 907
    invoke-static {v3, v2, v1}, Lc/e/a/b/h/b/cc;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    .line 908
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v7, p1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 909
    :goto_0
    iget-object p1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v2

    .line 910
    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    const-string v5, "_ev"

    .line 911
    invoke-virtual/range {v2 .. v7}, Lc/e/a/b/h/b/cc;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 912
    :cond_3
    iget-object v3, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v3

    .line 913
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->x()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lc/e/a/b/h/b/cc;->b(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v8

    if-eqz v8, :cond_6

    .line 914
    iget-object v3, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    .line 915
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    .line 916
    invoke-static {v3, v2, v1}, Lc/e/a/b/h/b/cc;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v10

    .line 917
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->x()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 918
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_4

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    .line 919
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 920
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v11, v0

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    .line 921
    :goto_1
    iget-object p1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v6

    .line 922
    iget-object v7, p2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    const-string v9, "_ev"

    .line 923
    invoke-virtual/range {v6 .. v11}, Lc/e/a/b/h/b/cc;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 924
    :cond_6
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v0

    .line 925
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    .line 926
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->x()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/e/a/b/h/b/cc;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 927
    :cond_7
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    const-string v2, "_sid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 928
    iget-object v1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v1

    .line 929
    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/pc;->u(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 930
    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzga;->c:J

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzga;->g:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 931
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v3

    iget-object v6, p2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    const-string v8, "_sno"

    .line 932
    invoke-virtual {v3, v6, v8}, Lc/e/a/b/h/b/sc;->d(Ljava/lang/String;Ljava/lang/String;)Lc/e/a/b/h/b/bc;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 933
    iget-object v6, v3, Lc/e/a/b/h/b/bc;->e:Ljava/lang/Object;

    instance-of v8, v6, Ljava/lang/Long;

    if-eqz v8, :cond_8

    .line 934
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    .line 935
    iget-object v6, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v6}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v6

    .line 936
    invoke-virtual {v6}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v6

    iget-object v3, v3, Lc/e/a/b/h/b/bc;->e:Ljava/lang/Object;

    const-string v8, "Retrieved last session number from database does not contain a valid (long) value"

    .line 937
    invoke-virtual {v6, v8, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 938
    :cond_9
    iget-object v3, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v3

    .line 939
    iget-object v6, p2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    sget-object v8, Lc/e/a/b/h/b/k;->ta:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v3, v6, v8}, Lc/e/a/b/h/b/pc;->e(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 940
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v3

    iget-object v6, p2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    const-string v8, "_s"

    .line 941
    invoke-virtual {v3, v6, v8}, Lc/e/a/b/h/b/sc;->b(Ljava/lang/String;Ljava/lang/String;)Lc/e/a/b/h/b/g;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 942
    iget-wide v1, v3, Lc/e/a/b/h/b/g;->c:J

    .line 943
    iget-object v3, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v3

    .line 944
    invoke-virtual {v3}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v3

    .line 945
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "Backfill the session number. Last used session number"

    invoke-virtual {v3, v8, v6}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    :goto_2
    const-wide/16 v8, 0x1

    add-long/2addr v1, v8

    .line 946
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzga;

    .line 947
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "_sno"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzga;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 948
    invoke-virtual {p0, v8, p2}, Lc/e/a/b/h/b/Tb;->a(Lcom/google/android/gms/measurement/internal/zzga;Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 949
    :cond_b
    new-instance v1, Lc/e/a/b/h/b/bc;

    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzga;->g:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    iget-wide v7, p1, Lcom/google/android/gms/measurement/internal/zzga;->c:J

    move-object v3, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lc/e/a/b/h/b/bc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 950
    iget-object p1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 951
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object p1

    .line 952
    iget-object v2, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v2}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v2

    .line 953
    iget-object v3, v1, Lc/e/a/b/h/b/bc;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Setting user property"

    .line 954
    invoke-virtual {p1, v3, v2, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 955
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/sc;->v()V

    .line 956
    :try_start_0
    invoke-virtual {p0, p2}, Lc/e/a/b/h/b/Tb;->d(Lcom/google/android/gms/measurement/internal/zzm;)Lc/e/a/b/h/b/_b;

    .line 957
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p1

    invoke-virtual {p1, v1}, Lc/e/a/b/h/b/sc;->a(Lc/e/a/b/h/b/bc;)Z

    move-result p1

    .line 958
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/sc;->y()V

    if-eqz p1, :cond_c

    .line 959
    iget-object p1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 960
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string p2, "User property set"

    .line 961
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v0

    .line 962
    iget-object v2, v1, Lc/e/a/b/h/b/bc;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lc/e/a/b/h/b/bc;->e:Ljava/lang/Object;

    .line 963
    invoke-virtual {p1, p2, v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 964
    :cond_c
    iget-object p1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 965
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    .line 966
    iget-object v2, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v2}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v2

    .line 967
    iget-object v3, v1, Lc/e/a/b/h/b/bc;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lc/e/a/b/h/b/bc;->e:Ljava/lang/Object;

    .line 968
    invoke-virtual {p1, v0, v2, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 969
    iget-object p1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v0

    .line 970
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 971
    invoke-virtual/range {v0 .. v5}, Lc/e/a/b/h/b/cc;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 972
    :goto_3
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/sc;->w()V

    return-void

    :catchall_0
    move-exception p1

    .line 973
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p2

    invoke-virtual {p2}, Lc/e/a/b/h/b/sc;->w()V

    throw p1
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzm;)V
    .locals 11

    const-string v0, "app_id=?"

    .line 843
    iget-object v1, p0, Lc/e/a/b/h/b/Tb;->w:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 844
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc/e/a/b/h/b/Tb;->x:Ljava/util/List;

    .line 845
    iget-object v1, p0, Lc/e/a/b/h/b/Tb;->x:Ljava/util/List;

    iget-object v2, p0, Lc/e/a/b/h/b/Tb;->w:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 846
    :cond_0
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    .line 847
    invoke-static {v2}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 848
    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->l()V

    .line 849
    invoke-virtual {v1}, Lc/e/a/b/h/b/Sb;->s()V

    .line 850
    :try_start_0
    invoke-virtual {v1}, Lc/e/a/b/h/b/sc;->x()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    .line 851
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v6, "apps"

    .line 852
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v5

    const-string v5, "events"

    .line 853
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "user_attributes"

    .line 854
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "conditional_properties"

    .line 855
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "raw_events"

    .line 856
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "raw_events_metadata"

    .line 857
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "queue"

    .line 858
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "audience_filter_values"

    .line 859
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "main_event_params"

    .line 860
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v6, v0

    if-lez v6, :cond_1

    .line 861
    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 862
    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 863
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v1

    .line 864
    invoke-static {v2}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error resetting analytics data. appId, error"

    invoke-virtual {v1, v3, v2, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 865
    :cond_1
    :goto_0
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->b()Landroid/content/Context;

    move-result-object v2

    .line 866
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzm;->b:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/google/android/gms/measurement/internal/zzm;->h:Z

    iget-boolean v6, p1, Lcom/google/android/gms/measurement/internal/zzm;->o:Z

    iget-boolean v7, p1, Lcom/google/android/gms/measurement/internal/zzm;->p:Z

    iget-wide v8, p1, Lcom/google/android/gms/measurement/internal/zzm;->m:J

    iget-object v10, p1, Lcom/google/android/gms/measurement/internal/zzm;->r:Ljava/lang/String;

    move-object v1, p0

    .line 867
    invoke-virtual/range {v1 .. v10}, Lc/e/a/b/h/b/Tb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZJLjava/lang/String;)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    .line 868
    iget-object v1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v1

    .line 869
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/pc;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 870
    iget-boolean p1, p1, Lcom/google/android/gms/measurement/internal/zzm;->h:Z

    if-eqz p1, :cond_3

    .line 871
    :cond_2
    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/Tb;->c(Lcom/google/android/gms/measurement/internal/zzm;)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 1

    .line 998
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/Tb;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 999
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/Tb;->a(Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzm;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzm;)V
    .locals 10

    .line 1000
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->a:Ljava/lang/String;

    invoke-static {v0}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 1002
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->b:Ljava/lang/String;

    invoke-static {v0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-static {v0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    invoke-static {v0}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 1005
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 1006
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->r()V

    .line 1007
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1008
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->h:Z

    if-nez v0, :cond_1

    .line 1009
    invoke-virtual {p0, p2}, Lc/e/a/b/h/b/Tb;->d(Lcom/google/android/gms/measurement/internal/zzm;)Lc/e/a/b/h/b/_b;

    return-void

    .line 1010
    :cond_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzr;-><init>(Lcom/google/android/gms/measurement/internal/zzr;)V

    const/4 p1, 0x0

    .line 1011
    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzr;->e:Z

    .line 1012
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/sc;->v()V

    .line 1013
    :try_start_0
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lc/e/a/b/h/b/sc;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1014
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzr;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzr;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1015
    iget-object v2, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v2}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    .line 1016
    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    .line 1017
    iget-object v4, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v4}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v4

    .line 1018
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzr;->b:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzr;->b:Ljava/lang/String;

    .line 1019
    invoke-virtual {v2, v3, v4, v5, v6}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 1020
    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzr;->e:Z

    if-eqz v3, :cond_3

    .line 1021
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzr;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->b:Ljava/lang/String;

    .line 1022
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzr;->d:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->d:J

    .line 1023
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzr;->h:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->h:J

    .line 1024
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzr;->f:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->f:Ljava/lang/String;

    .line 1025
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzr;->i:Lcom/google/android/gms/measurement/internal/zzaj;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->i:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 1026
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzr;->e:Z

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->e:Z

    .line 1027
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzga;->c:J

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    .line 1028
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->x()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzga;->g:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzga;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    goto :goto_0

    .line 1029
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzr;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1030
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzr;->d:J

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    .line 1031
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->x()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzga;->g:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzga;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    .line 1032
    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->e:Z

    const/4 p1, 0x1

    .line 1033
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzr;->e:Z

    if-eqz v1, :cond_6

    .line 1034
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    .line 1035
    new-instance v9, Lc/e/a/b/h/b/bc;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzr;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzr;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzga;->c:J

    .line 1036
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzga;->x()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lc/e/a/b/h/b/bc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 1037
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v1

    invoke-virtual {v1, v9}, Lc/e/a/b/h/b/sc;->a(Lc/e/a/b/h/b/bc;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1038
    iget-object v1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 1039
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzr;->a:Ljava/lang/String;

    .line 1040
    iget-object v4, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v4}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v4

    .line 1041
    iget-object v5, v9, Lc/e/a/b/h/b/bc;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lc/e/a/b/h/b/bc;->e:Ljava/lang/Object;

    .line 1042
    invoke-virtual {v1, v2, v3, v4, v5}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1043
    :cond_5
    iget-object v1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 1044
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzr;->a:Ljava/lang/String;

    .line 1045
    invoke-static {v3}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1046
    iget-object v4, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v4}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v4

    .line 1047
    iget-object v5, v9, Lc/e/a/b/h/b/bc;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lc/e/a/b/h/b/bc;->e:Ljava/lang/Object;

    .line 1048
    invoke-virtual {v1, v2, v3, v4, v5}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    if-eqz p1, :cond_6

    .line 1049
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzr;->i:Lcom/google/android/gms/measurement/internal/zzaj;

    if-eqz p1, :cond_6

    .line 1050
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzaj;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzr;->i:Lcom/google/android/gms/measurement/internal/zzaj;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzr;->d:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Lcom/google/android/gms/measurement/internal/zzaj;J)V

    .line 1051
    invoke-virtual {p0, p1, p2}, Lc/e/a/b/h/b/Tb;->b(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 1052
    :cond_6
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p1

    invoke-virtual {p1, v0}, Lc/e/a/b/h/b/sc;->a(Lcom/google/android/gms/measurement/internal/zzr;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1053
    iget-object p1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 1054
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzr;->a:Ljava/lang/String;

    .line 1055
    iget-object v2, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v2}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v2

    .line 1056
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    .line 1057
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->x()Ljava/lang/Object;

    move-result-object v0

    .line 1058
    invoke-virtual {p1, p2, v1, v2, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 1059
    :cond_7
    iget-object p1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 1060
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzr;->a:Ljava/lang/String;

    .line 1061
    invoke-static {v1}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1062
    iget-object v2, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v2}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v2

    .line 1063
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    .line 1064
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->x()Ljava/lang/Object;

    move-result-object v0

    .line 1065
    invoke-virtual {p1, p2, v1, v2, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1066
    :goto_2
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/sc;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1067
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/sc;->w()V

    return-void

    :catchall_0
    move-exception p1

    .line 1068
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p2

    invoke-virtual {p2}, Lc/e/a/b/h/b/sc;->w()V

    throw p1
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .line 811
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 812
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->o:Ljava/util/List;

    if-nez v0, :cond_0

    .line 813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/e/a/b/h/b/Tb;->o:Ljava/util/List;

    .line 814
    :cond_0
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 752
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 753
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->r()V

    .line 754
    invoke-static {p1}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 755
    :try_start_0
    new-array p4, v0, [B

    .line 756
    :cond_0
    iget-object v1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 757
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 758
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/sc;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 759
    :try_start_1
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc/e/a/b/h/b/sc;->b(Ljava/lang/String;)Lc/e/a/b/h/b/_b;

    move-result-object v1

    const/16 v2, 0xc8

    const/16 v3, 0x130

    const/4 v4, 0x1

    if-eq p2, v2, :cond_1

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_1

    if-ne p2, v3, :cond_2

    :cond_1
    if-nez p3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 760
    iget-object p2, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p2}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p2

    .line 761
    invoke-virtual {p2}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    .line 762
    invoke-static {p1}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    const/16 v5, 0x194

    if-nez v2, :cond_8

    if-ne p2, v5, :cond_4

    goto :goto_2

    .line 763
    :cond_4
    iget-object p4, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p4}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object p4

    .line 764
    invoke-interface {p4}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lc/e/a/b/h/b/_b;->i(J)V

    .line 765
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p4

    invoke-virtual {p4, v1}, Lc/e/a/b/h/b/sc;->a(Lc/e/a/b/h/b/_b;)V

    .line 766
    iget-object p4, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p4}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p4

    .line 767
    invoke-virtual {p4}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 768
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->m()Lc/e/a/b/h/b/T;

    move-result-object p3

    invoke-virtual {p3, p1}, Lc/e/a/b/h/b/T;->d(Ljava/lang/String;)V

    .line 769
    iget-object p1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object p1

    .line 770
    iget-object p1, p1, Lc/e/a/b/h/b/F;->g:Lc/e/a/b/h/b/I;

    .line 771
    iget-object p3, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p3}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object p3

    .line 772
    invoke-interface {p3}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lc/e/a/b/h/b/I;->a(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_6

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_1
    if-eqz v4, :cond_7

    .line 773
    iget-object p1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object p1

    .line 774
    iget-object p1, p1, Lc/e/a/b/h/b/F;->h:Lc/e/a/b/h/b/I;

    .line 775
    iget-object p2, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p2}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object p2

    .line 776
    invoke-interface {p2}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lc/e/a/b/h/b/I;->a(J)V

    .line 777
    :cond_7
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->v()V

    goto/16 :goto_7

    :cond_8
    :goto_2
    const/4 p3, 0x0

    if-eqz p5, :cond_9

    const-string v2, "Last-Modified"

    .line 778
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_3

    :cond_9
    move-object p5, p3

    :goto_3
    if-eqz p5, :cond_a

    .line 779
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 780
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object p5, p3

    :goto_4
    if-eq p2, v5, :cond_c

    if-ne p2, v3, :cond_b

    goto :goto_5

    .line 781
    :cond_b
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->m()Lc/e/a/b/h/b/T;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p5}, Lc/e/a/b/h/b/T;->a(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_d

    .line 782
    :try_start_2
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/sc;->w()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 783
    iput-boolean v0, p0, Lc/e/a/b/h/b/Tb;->r:Z

    .line 784
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->w()V

    return-void

    .line 785
    :cond_c
    :goto_5
    :try_start_3
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->m()Lc/e/a/b/h/b/T;

    move-result-object p5

    invoke-virtual {p5, p1}, Lc/e/a/b/h/b/T;->b(Ljava/lang/String;)Lc/e/a/b/g/f/aa;

    move-result-object p5

    if-nez p5, :cond_d

    .line 786
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->m()Lc/e/a/b/h/b/T;

    move-result-object p5

    invoke-virtual {p5, p1, p3, p3}, Lc/e/a/b/h/b/T;->a(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p3, :cond_d

    .line 787
    :try_start_4
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/sc;->w()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 788
    iput-boolean v0, p0, Lc/e/a/b/h/b/Tb;->r:Z

    .line 789
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->w()V

    return-void

    .line 790
    :cond_d
    :try_start_5
    iget-object p3, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p3}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object p3

    .line 791
    invoke-interface {p3}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lc/e/a/b/h/b/_b;->h(J)V

    .line 792
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p3

    invoke-virtual {p3, v1}, Lc/e/a/b/h/b/sc;->a(Lc/e/a/b/h/b/_b;)V

    if-ne p2, v5, :cond_e

    .line 793
    iget-object p2, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p2}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p2

    .line 794
    invoke-virtual {p2}, Lc/e/a/b/h/b/t;->y()Lc/e/a/b/h/b/v;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    .line 795
    invoke-virtual {p2, p3, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 796
    :cond_e
    iget-object p1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 797
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 798
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    .line 799
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 800
    invoke-virtual {p1, p3, p2, p4}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 801
    :goto_6
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->n()Lc/e/a/b/h/b/x;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/x;->v()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->u()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 802
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->t()V

    goto :goto_7

    .line 803
    :cond_f
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->v()V

    .line 804
    :goto_7
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/sc;->y()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 805
    :try_start_6
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/sc;->w()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 806
    iput-boolean v0, p0, Lc/e/a/b/h/b/Tb;->r:Z

    .line 807
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->w()V

    return-void

    :catchall_0
    move-exception p1

    .line 808
    :try_start_7
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p2

    invoke-virtual {p2}, Lc/e/a/b/h/b/sc;->w()V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    .line 809
    iput-boolean v0, p0, Lc/e/a/b/h/b/Tb;->r:Z

    .line 810
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->w()V

    throw p1
.end method

.method public final a(Z)V
    .locals 0

    .line 1069
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->v()V

    return-void
.end method

.method public final a(ILjava/nio/channels/FileChannel;)Z
    .locals 6

    .line 828
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->C()V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 829
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 830
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 831
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 832
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v2, 0x0

    .line 833
    :try_start_0
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 834
    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    .line 835
    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 836
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 837
    iget-object v1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 838
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return p1

    :catch_0
    move-exception p1

    .line 839
    iget-object p2, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p2}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p2

    .line 840
    invoke-virtual {p2}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p2

    const-string v1, "Failed to write to channel"

    invoke-virtual {p2, v1, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 841
    :cond_2
    :goto_0
    iget-object p1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 842
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string p2, "Bad channel to read from"

    invoke-virtual {p1, p2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    return v0
.end method

.method public final a(Lc/e/a/b/g/f/ba;Lc/e/a/b/g/f/ba;)Z
    .locals 10

    .line 615
    iget-object v0, p1, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lc/e/a/b/d/d/r;->a(Z)V

    .line 616
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    const-string v0, "_sc"

    invoke-static {p1, v0}, Lc/e/a/b/h/b/Zb;->a(Lc/e/a/b/g/f/ba;Ljava/lang/String;)Lc/e/a/b/g/f/K;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 617
    :cond_0
    invoke-virtual {v0}, Lc/e/a/b/g/f/K;->t()Ljava/lang/String;

    move-result-object v0

    .line 618
    :goto_0
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    const-string v2, "_pc"

    invoke-static {p2, v2}, Lc/e/a/b/h/b/Zb;->a(Lc/e/a/b/g/f/ba;Ljava/lang/String;)Lc/e/a/b/g/f/K;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 619
    :cond_1
    invoke-virtual {v2}, Lc/e/a/b/g/f/K;->t()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_5

    .line 620
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 621
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    const-string v0, "_et"

    invoke-static {p1, v0}, Lc/e/a/b/h/b/Zb;->a(Lc/e/a/b/g/f/ba;Ljava/lang/String;)Lc/e/a/b/g/f/K;

    move-result-object v1

    .line 622
    invoke-virtual {v1}, Lc/e/a/b/g/f/K;->v()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lc/e/a/b/g/f/K;->w()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gtz v2, :cond_2

    goto :goto_2

    .line 623
    :cond_2
    invoke-virtual {v1}, Lc/e/a/b/g/f/K;->w()J

    move-result-wide v1

    .line 624
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    invoke-static {p2, v0}, Lc/e/a/b/h/b/Zb;->a(Lc/e/a/b/g/f/ba;Ljava/lang/String;)Lc/e/a/b/g/f/K;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 625
    invoke-virtual {v4}, Lc/e/a/b/g/f/K;->w()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-lez v5, :cond_3

    .line 626
    invoke-virtual {v4}, Lc/e/a/b/g/f/K;->w()J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 627
    :cond_3
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    iget-object v4, p2, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    .line 628
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lc/e/a/b/h/b/Zb;->a([Lc/e/a/b/g/f/K;Ljava/lang/String;Ljava/lang/Object;)[Lc/e/a/b/g/f/K;

    move-result-object v0

    iput-object v0, p2, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    .line 629
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    iget-object p2, p1, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "_fr"

    invoke-static {p2, v1, v0}, Lc/e/a/b/h/b/Zb;->a([Lc/e/a/b/g/f/K;Ljava/lang/String;Ljava/lang/Object;)[Lc/e/a/b/g/f/K;

    move-result-object p2

    iput-object p2, p1, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    :cond_4
    :goto_2
    return v3

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/String;J)Z
    .locals 44

    move-object/from16 v1, p0

    const-string v2, "_lte"

    .line 169
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v3

    invoke-virtual {v3}, Lc/e/a/b/h/b/sc;->v()V

    .line 170
    :try_start_0
    new-instance v3, Lc/e/a/b/h/b/Tb$a;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lc/e/a/b/h/b/Tb$a;-><init>(Lc/e/a/b/h/b/Tb;Lc/e/a/b/h/b/Ub;)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v5

    iget-wide v6, v1, Lc/e/a/b/h/b/Tb;->y:J

    .line 172
    invoke-static {v3}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-virtual {v5}, Lc/e/a/b/h/b/ua;->l()V

    .line 174
    invoke-virtual {v5}, Lc/e/a/b/h/b/Sb;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const-wide/16 v9, -0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 175
    :try_start_1
    invoke-virtual {v5}, Lc/e/a/b/h/b/sc;->x()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 176
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v14, :cond_3

    cmp-long v14, v6, v9

    if-eqz v14, :cond_0

    .line 177
    :try_start_2
    new-array v14, v11, [Ljava/lang/String;

    .line 178
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v12

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v13
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v9, v4

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v8, v4

    move-object v9, v8

    :goto_0
    move-object v4, v0

    goto/16 :goto_8

    .line 179
    :cond_0
    :try_start_3
    new-array v14, v13, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v12
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_1
    cmp-long v16, v6, v9

    if-eqz v16, :cond_1

    :try_start_4
    const-string v16, "rowid <= ? and "
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_1
    :try_start_5
    const-string v16, ""

    :goto_2
    move-object/from16 p1, v16

    .line 180
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit16 v8, v8, 0x94

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p1

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-virtual {v15, v4, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 182
    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v8, :cond_2

    if-eqz v4, :cond_c

    .line 183
    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto/16 :goto_9

    .line 184
    :cond_2
    :try_start_8
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 185
    :try_start_9
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 186
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v9, v4

    move-object v4, v8

    move-object v8, v14

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v9, v4

    goto :goto_0

    :cond_3
    cmp-long v4, v6, v9

    if-eqz v4, :cond_4

    .line 187
    :try_start_a
    new-array v4, v11, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v8, v4, v12

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v13

    goto :goto_3

    .line 188
    :cond_4
    new-array v4, v13, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v8, v4, v12

    :goto_3
    cmp-long v8, v6, v9

    if-eqz v8, :cond_5

    const-string v8, " and rowid <= ?"

    goto :goto_4

    :cond_5
    const-string v8, ""

    .line 189
    :goto_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x54

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " order by rowid limit 1;"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 190
    invoke-virtual {v15, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 191
    :try_start_b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v8, :cond_6

    if-eqz v4, :cond_c

    .line 192
    :try_start_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto/16 :goto_9

    .line 193
    :cond_6
    :try_start_d
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 194
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object v9, v4

    move-object v8, v14

    const/4 v4, 0x0

    :goto_5
    :try_start_e
    const-string v10, "raw_events_metadata"

    .line 195
    new-array v14, v13, [Ljava/lang/String;

    const-string v16, "metadata"

    aput-object v16, v14, v12

    const-string v17, "app_id = ? and metadata_fingerprint = ?"

    new-array v13, v11, [Ljava/lang/String;

    aput-object v4, v13, v12

    const/16 v16, 0x1

    aput-object v8, v13, v16

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "rowid"

    const-string v22, "2"

    move-object/from16 v16, v14

    move-object v14, v15

    move-object/from16 v24, v15

    move-object v15, v10

    move-object/from16 v18, v13

    .line 196
    invoke-virtual/range {v14 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 197
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-nez v10, :cond_7

    .line 198
    invoke-virtual {v5}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v6

    .line 199
    invoke-virtual {v6}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v6

    const-string v7, "Raw event metadata record is missing. appId"

    .line 200
    invoke-static {v4}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-eqz v9, :cond_c

    .line 201
    :try_start_f
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto/16 :goto_9

    .line 202
    :cond_7
    :try_start_10
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 203
    :try_start_11
    invoke-static {v10}, Lc/e/a/b/g/f/da;->a([B)Lc/e/a/b/g/f/da;

    move-result-object v10
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 204
    :try_start_12
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 205
    invoke-virtual {v5}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v13

    .line 206
    invoke-virtual {v13}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v13

    const-string v14, "Get multiple raw event metadata records, expected one. appId"

    .line 207
    invoke-static {v4}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 208
    invoke-virtual {v13, v14, v15}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 210
    invoke-interface {v3, v10}, Lc/e/a/b/h/b/uc;->a(Lc/e/a/b/g/f/da;)V

    const-wide/16 v13, -0x1

    cmp-long v10, v6, v13

    if-eqz v10, :cond_9

    const-string v10, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    const/4 v13, 0x3

    .line 211
    new-array v14, v13, [Ljava/lang/String;

    aput-object v4, v14, v12

    const/4 v13, 0x1

    aput-object v8, v14, v13

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v11

    move-object/from16 v17, v10

    move-object/from16 v18, v14

    goto :goto_6

    :cond_9
    const-string v6, "app_id = ? and metadata_fingerprint = ?"

    .line 212
    new-array v7, v11, [Ljava/lang/String;

    aput-object v4, v7, v12

    const/4 v10, 0x1

    aput-object v8, v7, v10

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    :goto_6
    const-string v15, "raw_events"

    const/4 v6, 0x4

    .line 213
    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "rowid"

    aput-object v7, v6, v12

    const-string v7, "name"

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-string v7, "timestamp"

    aput-object v7, v6, v11

    const-string v7, "data"

    const/4 v8, 0x3

    aput-object v7, v6, v8

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "rowid"

    const/16 v22, 0x0

    move-object/from16 v14, v24

    move-object/from16 v16, v6

    .line 214
    invoke-virtual/range {v14 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 215
    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_a

    .line 216
    invoke-virtual {v5}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v7

    .line 217
    invoke-virtual {v7}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v7

    const-string v8, "Raw event data disappeared while in transaction. appId"

    .line 218
    invoke-static {v4}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 219
    invoke-virtual {v7, v8, v9}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-eqz v6, :cond_c

    .line 220
    :try_start_14
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    goto/16 :goto_9

    .line 221
    :cond_a
    :try_start_15
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v9, 0x3

    .line 222
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 223
    :try_start_16
    invoke-static {v10}, Lc/e/a/b/g/f/ba;->a([B)Lc/e/a/b/g/f/ba;

    move-result-object v9
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    const/4 v10, 0x1

    .line 224
    :try_start_17
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    .line 225
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v9, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    .line 226
    invoke-interface {v3, v7, v8, v9}, Lc/e/a/b/h/b/uc;->a(JLc/e/a/b/g/f/ba;)Z

    move-result v7
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    if-nez v7, :cond_b

    if-eqz v6, :cond_c

    .line 227
    :try_start_18
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    goto/16 :goto_9

    :catch_2
    move-exception v0

    move-object v7, v0

    .line 228
    :try_start_19
    invoke-virtual {v5}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v8

    .line 229
    invoke-virtual {v8}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v8

    const-string v9, "Data loss. Failed to merge raw event. appId"

    .line 230
    invoke-static {v4}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v7}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 231
    :cond_b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_3
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    if-nez v7, :cond_a

    if-eqz v6, :cond_c

    .line 232
    :try_start_1a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v5, v1

    move-object v9, v6

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v8, v4

    move-object v9, v6

    goto/16 :goto_0

    :catch_4
    move-exception v0

    move-object v6, v0

    .line 233
    :try_start_1b
    invoke-virtual {v5}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v7

    .line 234
    invoke-virtual {v7}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v7

    const-string v8, "Data loss. Failed to merge raw event metadata. appId"

    .line 235
    invoke-static {v4}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 236
    invoke-virtual {v7, v8, v10, v6}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1b} :catch_5
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    if-eqz v9, :cond_c

    .line 237
    :try_start_1c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v8, v4

    goto/16 :goto_0

    :catch_6
    move-exception v0

    move-object v9, v4

    const/4 v8, 0x0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v5, v1

    const/4 v9, 0x0

    :goto_7
    move-object v1, v0

    goto/16 :goto_48

    :catch_7
    move-exception v0

    move-object v4, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 238
    :goto_8
    :try_start_1d
    invoke-virtual {v5}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v5

    .line 239
    invoke-virtual {v5}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v5

    const-string v6, "Data loss. Error selecting raw event. appId"

    .line 240
    invoke-static {v8}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v4}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    if-eqz v9, :cond_c

    .line 241
    :try_start_1e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 242
    :cond_c
    :goto_9
    iget-object v4, v3, Lc/e/a/b/h/b/Tb$a;->c:Ljava/util/List;

    if-eqz v4, :cond_e

    iget-object v4, v3, Lc/e/a/b/h/b/Tb$a;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_a

    :cond_d
    const/4 v4, 0x0

    goto :goto_b

    :cond_e
    :goto_a
    const/4 v4, 0x1

    :goto_b
    if-nez v4, :cond_80

    .line 243
    iget-object v4, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    .line 244
    iget-object v5, v3, Lc/e/a/b/h/b/Tb$a;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lc/e/a/b/g/f/ba;

    iput-object v5, v4, Lc/e/a/b/g/f/da;->e:[Lc/e/a/b/g/f/ba;

    .line 245
    iget-object v5, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v5}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v5

    .line 246
    iget-object v6, v4, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lc/e/a/b/h/b/pc;->h(Ljava/lang/String;)Z

    move-result v5

    .line 247
    iget-object v6, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v6}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v6

    .line 248
    iget-object v7, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v7, v7, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    sget-object v8, Lc/e/a/b/h/b/k;->xa:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v6, v7, v8}, Lc/e/a/b/h/b/pc;->e(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    .line 249
    :goto_c
    iget-object v12, v3, Lc/e/a/b/h/b/Tb$a;->c:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    const-string v11, "_et"

    move/from16 v18, v13

    const-string v13, "_e"

    move-wide/from16 v19, v14

    if-ge v9, v12, :cond_42

    .line 250
    :try_start_1f
    iget-object v12, v3, Lc/e/a/b/h/b/Tb$a;->c:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc/e/a/b/g/f/ba;

    .line 251
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->m()Lc/e/a/b/h/b/T;

    move-result-object v14

    iget-object v15, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v15, v15, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    move-object/from16 v24, v2

    iget-object v2, v12, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    invoke-virtual {v14, v15, v2}, Lc/e/a/b/h/b/T;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    const-string v14, "_err"

    if-eqz v2, :cond_12

    .line 252
    :try_start_20
    iget-object v2, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v2}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    .line 253
    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v2

    const-string v11, "Dropping blacklisted raw event. appId"

    iget-object v13, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v13, v13, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    .line 254
    invoke-static {v13}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 255
    iget-object v15, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v15}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v15

    move/from16 v25, v9

    .line 256
    iget-object v9, v12, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    invoke-virtual {v15, v9}, Lc/e/a/b/h/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 257
    invoke-virtual {v2, v11, v13, v9}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 258
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->m()Lc/e/a/b/h/b/T;

    move-result-object v2

    iget-object v9, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v9, v9, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lc/e/a/b/h/b/T;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 259
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->m()Lc/e/a/b/h/b/T;

    move-result-object v2

    iget-object v9, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v9, v9, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lc/e/a/b/h/b/T;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_d

    :cond_f
    const/4 v2, 0x0

    goto :goto_e

    :cond_10
    :goto_d
    const/4 v2, 0x1

    :goto_e
    if-nez v2, :cond_11

    .line 260
    iget-object v2, v12, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 261
    iget-object v2, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v2}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v26

    .line 262
    iget-object v2, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v2, v2, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    const/16 v28, 0xb

    const-string v29, "_ev"

    iget-object v9, v12, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    const/16 v31, 0x0

    move-object/from16 v27, v2

    move-object/from16 v30, v9

    .line 263
    invoke-virtual/range {v26 .. v31}, Lc/e/a/b/h/b/cc;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_11
    move/from16 v30, v5

    move/from16 v29, v6

    move/from16 v13, v18

    move-wide/from16 v14, v19

    move-object v5, v4

    move-object v4, v7

    const/4 v7, 0x3

    goto/16 :goto_27

    :cond_12
    move/from16 v25, v9

    .line 264
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->m()Lc/e/a/b/h/b/T;

    move-result-object v2

    iget-object v9, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v9, v9, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    iget-object v15, v12, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    invoke-virtual {v2, v9, v15}, Lc/e/a/b/h/b/T;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    const-string v9, "_c"

    if-nez v2, :cond_19

    .line 265
    :try_start_21
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    iget-object v15, v12, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    .line 266
    invoke-static {v15}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move/from16 v27, v10

    .line 267
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v10

    move-object/from16 v28, v4

    const v4, 0x171c4

    if-eq v10, v4, :cond_15

    const v4, 0x17331

    if-eq v10, v4, :cond_14

    const v4, 0x17333

    if-eq v10, v4, :cond_13

    goto :goto_f

    :cond_13
    const-string v4, "_ui"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    goto :goto_10

    :cond_14
    const-string v4, "_ug"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x2

    goto :goto_10

    :cond_15
    const-string v4, "_in"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    goto :goto_10

    :cond_16
    :goto_f
    const/4 v4, -0x1

    :goto_10
    if-eqz v4, :cond_17

    const/4 v10, 0x1

    if-eq v4, v10, :cond_17

    const/4 v10, 0x2

    if-eq v4, v10, :cond_17

    const/4 v4, 0x0

    goto :goto_11

    :cond_17
    const/4 v4, 0x1

    :goto_11
    if-eqz v4, :cond_18

    goto :goto_12

    :cond_18
    move/from16 v30, v5

    move/from16 v29, v6

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object v8, v11

    goto/16 :goto_19

    :cond_19
    move-object/from16 v28, v4

    move/from16 v27, v10

    .line 268
    :goto_12
    iget-object v4, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    if-nez v4, :cond_1a

    const/4 v4, 0x0

    .line 269
    new-array v10, v4, [Lc/e/a/b/g/f/K;

    iput-object v10, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    :cond_1a
    move/from16 v29, v6

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    .line 270
    :goto_13
    iget-object v6, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    array-length v6, v6
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    move/from16 v30, v5

    const-string v5, "_r"

    if-ge v4, v6, :cond_1d

    .line 271
    :try_start_22
    iget-object v6, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    aget-object v6, v6, v4

    .line 272
    invoke-virtual {v6}, Lc/e/a/b/g/f/nb;->k()Lc/e/a/b/g/f/nb$a;

    move-result-object v6

    .line 273
    check-cast v6, Lc/e/a/b/g/f/K$a;

    move-object/from16 v31, v7

    .line 274
    invoke-virtual {v6}, Lc/e/a/b/g/f/K$a;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    move-object/from16 v32, v8

    const-wide/16 v7, 0x1

    .line 275
    invoke-virtual {v6, v7, v8}, Lc/e/a/b/g/f/K$a;->a(J)Lc/e/a/b/g/f/K$a;

    const/4 v10, 0x1

    goto :goto_14

    :cond_1b
    move-object/from16 v32, v8

    .line 276
    invoke-virtual {v6}, Lc/e/a/b/g/f/K$a;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const-wide/16 v7, 0x1

    .line 277
    invoke-virtual {v6, v7, v8}, Lc/e/a/b/g/f/K$a;->a(J)Lc/e/a/b/g/f/K$a;

    const/4 v15, 0x1

    .line 278
    :cond_1c
    :goto_14
    iget-object v5, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    invoke-virtual {v6}, Lc/e/a/b/g/f/nb$a;->o()Lc/e/a/b/g/f/Sb;

    move-result-object v6

    check-cast v6, Lc/e/a/b/g/f/nb;

    check-cast v6, Lc/e/a/b/g/f/K;

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v30

    move-object/from16 v7, v31

    move-object/from16 v8, v32

    goto :goto_13

    :cond_1d
    move-object/from16 v31, v7

    move-object/from16 v32, v8

    if-nez v10, :cond_1e

    if-eqz v2, :cond_1e

    .line 279
    iget-object v4, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v4}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v4

    .line 280
    invoke-virtual {v4}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v4

    const-string v6, "Marking event as conversion"

    .line 281
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v7

    .line 282
    iget-object v8, v12, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lc/e/a/b/h/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 283
    invoke-virtual {v4, v6, v7}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    iget-object v4, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    iget-object v6, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    array-length v6, v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lc/e/a/b/g/f/K;

    .line 285
    invoke-static {}, Lc/e/a/b/g/f/K;->B()Lc/e/a/b/g/f/K$a;

    move-result-object v6

    .line 286
    invoke-virtual {v6, v9}, Lc/e/a/b/g/f/K$a;->a(Ljava/lang/String;)Lc/e/a/b/g/f/K$a;

    const-wide/16 v7, 0x1

    .line 287
    invoke-virtual {v6, v7, v8}, Lc/e/a/b/g/f/K$a;->a(J)Lc/e/a/b/g/f/K$a;

    .line 288
    invoke-virtual {v6}, Lc/e/a/b/g/f/nb$a;->o()Lc/e/a/b/g/f/Sb;

    move-result-object v6

    check-cast v6, Lc/e/a/b/g/f/nb;

    check-cast v6, Lc/e/a/b/g/f/K;

    .line 289
    array-length v7, v4

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aput-object v6, v4, v7

    .line 290
    iput-object v4, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    :cond_1e
    if-nez v15, :cond_1f

    .line 291
    iget-object v4, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v4}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v4

    .line 292
    invoke-virtual {v4}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v4

    const-string v6, "Marking event as real-time"

    .line 293
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v7

    .line 294
    iget-object v8, v12, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lc/e/a/b/h/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 295
    invoke-virtual {v4, v6, v7}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    iget-object v4, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    iget-object v6, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    array-length v6, v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lc/e/a/b/g/f/K;

    .line 297
    invoke-static {}, Lc/e/a/b/g/f/K;->B()Lc/e/a/b/g/f/K$a;

    move-result-object v6

    .line 298
    invoke-virtual {v6, v5}, Lc/e/a/b/g/f/K$a;->a(Ljava/lang/String;)Lc/e/a/b/g/f/K$a;

    const-wide/16 v7, 0x1

    .line 299
    invoke-virtual {v6, v7, v8}, Lc/e/a/b/g/f/K$a;->a(J)Lc/e/a/b/g/f/K$a;

    .line 300
    invoke-virtual {v6}, Lc/e/a/b/g/f/nb$a;->o()Lc/e/a/b/g/f/Sb;

    move-result-object v6

    check-cast v6, Lc/e/a/b/g/f/nb;

    check-cast v6, Lc/e/a/b/g/f/K;

    .line 301
    array-length v7, v4

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aput-object v6, v4, v7

    .line 302
    iput-object v4, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    .line 303
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v33

    .line 304
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->s()J

    move-result-wide v34

    iget-object v4, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v4, v4, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x1

    move-object/from16 v36, v4

    .line 305
    invoke-virtual/range {v33 .. v41}, Lc/e/a/b/h/b/sc;->a(JLjava/lang/String;ZZZZZ)Lc/e/a/b/h/b/tc;

    move-result-object v4

    .line 306
    iget-wide v6, v4, Lc/e/a/b/h/b/tc;->e:J

    .line 307
    iget-object v4, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v4}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v4

    .line 308
    iget-object v8, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v8, v8, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lc/e/a/b/h/b/pc;->d(Ljava/lang/String;)I

    move-result v4

    move-object v8, v11

    int-to-long v10, v4

    cmp-long v4, v6, v10

    if-lez v4, :cond_23

    const/4 v4, 0x0

    .line 309
    :goto_15
    iget-object v6, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    array-length v6, v6

    if-ge v4, v6, :cond_24

    .line 310
    iget-object v6, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lc/e/a/b/g/f/K;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 311
    iget-object v5, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    array-length v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    new-array v5, v5, [Lc/e/a/b/g/f/K;

    if-lez v4, :cond_20

    .line 312
    iget-object v6, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    const/4 v7, 0x0

    invoke-static {v6, v7, v5, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    :cond_20
    array-length v6, v5

    if-ge v4, v6, :cond_21

    .line 314
    iget-object v6, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    add-int/lit8 v7, v4, 0x1

    array-length v10, v5

    sub-int/2addr v10, v4

    invoke-static {v6, v7, v5, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    :cond_21
    iput-object v5, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    goto :goto_16

    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_23
    const/16 v18, 0x1

    .line 316
    :cond_24
    :goto_16
    iget-object v4, v12, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    invoke-static {v4}, Lc/e/a/b/h/b/cc;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    if-eqz v2, :cond_2a

    .line 317
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v33

    .line 318
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->s()J

    move-result-wide v34

    iget-object v4, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v4, v4, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x1

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v36, v4

    .line 319
    invoke-virtual/range {v33 .. v41}, Lc/e/a/b/h/b/sc;->a(JLjava/lang/String;ZZZZZ)Lc/e/a/b/h/b/tc;

    move-result-object v4

    .line 320
    iget-wide v4, v4, Lc/e/a/b/h/b/tc;->c:J

    .line 321
    iget-object v6, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v6}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v6

    .line 322
    iget-object v7, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v7, v7, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    .line 323
    sget-object v10, Lc/e/a/b/h/b/k;->B:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v6, v7, v10}, Lc/e/a/b/h/b/pc;->b(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)I

    move-result v6

    int-to-long v6, v6

    cmp-long v10, v4, v6

    if-lez v10, :cond_2a

    .line 324
    iget-object v4, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v4}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v4

    .line 325
    invoke-virtual {v4}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v4

    const-string v5, "Too many conversions. Not logging as conversion. appId"

    iget-object v6, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v6, v6, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    .line 326
    invoke-static {v6}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 327
    invoke-virtual {v4, v5, v6}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 328
    :goto_17
    iget-object v10, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    array-length v10, v10

    if-ge v4, v10, :cond_27

    .line 329
    iget-object v10, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    aget-object v10, v10, v4

    .line 330
    invoke-virtual {v10}, Lc/e/a/b/g/f/K;->q()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_25

    .line 331
    invoke-virtual {v10}, Lc/e/a/b/g/f/nb;->k()Lc/e/a/b/g/f/nb$a;

    move-result-object v6

    .line 332
    check-cast v6, Lc/e/a/b/g/f/K$a;

    move v7, v4

    goto :goto_18

    .line 333
    :cond_25
    invoke-virtual {v10}, Lc/e/a/b/g/f/K;->q()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_26

    const/4 v5, 0x1

    :cond_26
    :goto_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_27
    if-eqz v5, :cond_28

    if-eqz v6, :cond_28

    .line 334
    iget-object v4, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    const/4 v5, 0x1

    new-array v7, v5, [Lc/e/a/b/g/f/K;

    invoke-virtual {v6}, Lc/e/a/b/g/f/nb$a;->o()Lc/e/a/b/g/f/Sb;

    move-result-object v5

    check-cast v5, Lc/e/a/b/g/f/nb;

    check-cast v5, Lc/e/a/b/g/f/K;

    const/4 v6, 0x0

    aput-object v5, v7, v6

    invoke-static {v4, v7}, Lc/e/a/b/d/g/b;->a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lc/e/a/b/g/f/K;

    iput-object v4, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    goto :goto_19

    :cond_28
    if-eqz v6, :cond_29

    .line 335
    invoke-virtual {v6}, Lc/e/a/b/g/f/nb$a;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/a/b/g/f/nb$a;

    check-cast v4, Lc/e/a/b/g/f/K$a;

    .line 336
    invoke-virtual {v4, v14}, Lc/e/a/b/g/f/K$a;->a(Ljava/lang/String;)Lc/e/a/b/g/f/K$a;

    const-wide/16 v5, 0xa

    .line 337
    invoke-virtual {v4, v5, v6}, Lc/e/a/b/g/f/K$a;->a(J)Lc/e/a/b/g/f/K$a;

    .line 338
    invoke-virtual {v4}, Lc/e/a/b/g/f/nb$a;->o()Lc/e/a/b/g/f/Sb;

    move-result-object v4

    check-cast v4, Lc/e/a/b/g/f/nb;

    check-cast v4, Lc/e/a/b/g/f/K;

    .line 339
    iget-object v5, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    aput-object v4, v5, v7

    goto :goto_19

    .line 340
    :cond_29
    iget-object v4, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v4}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v4

    .line 341
    invoke-virtual {v4}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v4

    const-string v5, "Did not find conversion parameter. appId"

    iget-object v6, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v6, v6, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    .line 342
    invoke-static {v6}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 343
    invoke-virtual {v4, v5, v6}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    :cond_2a
    :goto_19
    iget-object v4, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v4}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v4

    .line 345
    iget-object v5, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v5, v5, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lc/e/a/b/h/b/pc;->q(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    if-eqz v2, :cond_35

    .line 346
    iget-object v2, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    .line 347
    :goto_1a
    array-length v7, v2

    if-ge v4, v7, :cond_2d

    const-string v7, "value"

    .line 348
    aget-object v10, v2, v4

    invoke-virtual {v10}, Lc/e/a/b/g/f/K;->q()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    move v5, v4

    goto :goto_1b

    :cond_2b
    const-string v7, "currency"

    .line 349
    aget-object v10, v2, v4

    invoke-virtual {v10}, Lc/e/a/b/g/f/K;->q()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    move v6, v4

    :cond_2c
    :goto_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_2d
    const/4 v4, -0x1

    if-eq v5, v4, :cond_2e

    .line 350
    aget-object v4, v2, v5

    invoke-virtual {v4}, Lc/e/a/b/g/f/K;->v()Z

    move-result v4

    if-nez v4, :cond_2f

    aget-object v4, v2, v5

    invoke-virtual {v4}, Lc/e/a/b/g/f/K;->y()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 351
    iget-object v4, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v4}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v4

    .line 352
    invoke-virtual {v4}, Lc/e/a/b/h/b/t;->y()Lc/e/a/b/h/b/v;

    move-result-object v4

    const-string v6, "Value must be specified with a numeric type."

    invoke-virtual {v4, v6}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 353
    invoke-static {v2, v5}, Lc/e/a/b/h/b/Tb;->a([Lc/e/a/b/g/f/K;I)[Lc/e/a/b/g/f/K;

    move-result-object v2

    .line 354
    invoke-static {v2, v9}, Lc/e/a/b/h/b/Tb;->a([Lc/e/a/b/g/f/K;Ljava/lang/String;)[Lc/e/a/b/g/f/K;

    move-result-object v2

    const/16 v4, 0x12

    const-string v5, "value"

    .line 355
    invoke-static {v2, v4, v5}, Lc/e/a/b/h/b/Tb;->a([Lc/e/a/b/g/f/K;ILjava/lang/String;)[Lc/e/a/b/g/f/K;

    move-result-object v2

    :cond_2e
    const/4 v7, 0x3

    goto :goto_1f

    :cond_2f
    const/4 v4, -0x1

    if-ne v6, v4, :cond_30

    const/4 v4, 0x1

    const/4 v7, 0x3

    goto :goto_1e

    .line 356
    :cond_30
    aget-object v4, v2, v6

    invoke-virtual {v4}, Lc/e/a/b/g/f/K;->t()Ljava/lang/String;

    move-result-object v4

    .line 357
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_31

    :goto_1c
    const/4 v4, 0x1

    goto :goto_1e

    :cond_31
    const/4 v6, 0x0

    .line 358
    :goto_1d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v6, v10, :cond_33

    .line 359
    invoke-virtual {v4, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    .line 360
    invoke-static {v10}, Ljava/lang/Character;->isLetter(I)Z

    move-result v11

    if-nez v11, :cond_32

    goto :goto_1c

    .line 361
    :cond_32
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v6, v10

    goto :goto_1d

    :cond_33
    const/4 v4, 0x0

    :goto_1e
    if-eqz v4, :cond_34

    .line 362
    iget-object v4, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v4}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v4

    .line 363
    invoke-virtual {v4}, Lc/e/a/b/h/b/t;->y()Lc/e/a/b/h/b/v;

    move-result-object v4

    const-string v6, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 364
    invoke-virtual {v4, v6}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 365
    invoke-static {v2, v5}, Lc/e/a/b/h/b/Tb;->a([Lc/e/a/b/g/f/K;I)[Lc/e/a/b/g/f/K;

    move-result-object v2

    .line 366
    invoke-static {v2, v9}, Lc/e/a/b/h/b/Tb;->a([Lc/e/a/b/g/f/K;Ljava/lang/String;)[Lc/e/a/b/g/f/K;

    move-result-object v2

    const/16 v4, 0x13

    const-string v5, "currency"

    .line 367
    invoke-static {v2, v4, v5}, Lc/e/a/b/h/b/Tb;->a([Lc/e/a/b/g/f/K;ILjava/lang/String;)[Lc/e/a/b/g/f/K;

    move-result-object v2

    .line 368
    :cond_34
    :goto_1f
    iput-object v2, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    goto :goto_20

    :cond_35
    const/4 v7, 0x3

    .line 369
    :goto_20
    iget-object v2, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v2}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v2

    .line 370
    iget-object v4, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v4, v4, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    sget-object v5, Lc/e/a/b/h/b/k;->wa:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v2, v4, v5}, Lc/e/a/b/h/b/pc;->e(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 371
    iget-object v2, v12, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 372
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    const-string v2, "_fr"

    invoke-static {v12, v2}, Lc/e/a/b/h/b/Zb;->a(Lc/e/a/b/g/f/ba;Ljava/lang/String;)Lc/e/a/b/g/f/K;

    move-result-object v2

    if-nez v2, :cond_38

    if-eqz v32, :cond_36

    move-object/from16 v2, v32

    .line 373
    iget-object v4, v2, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    .line 374
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, v12, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v9, 0x3e8

    cmp-long v6, v4, v9

    if-gtz v6, :cond_37

    .line 375
    invoke-virtual {v1, v12, v2}, Lc/e/a/b/h/b/Tb;->a(Lc/e/a/b/g/f/ba;Lc/e/a/b/g/f/ba;)Z

    move-result v4

    if-eqz v4, :cond_37

    :goto_21
    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_23

    :cond_36
    move-object/from16 v2, v32

    :cond_37
    move-object v4, v12

    goto :goto_23

    :cond_38
    move-object/from16 v2, v32

    goto :goto_22

    :cond_39
    move-object/from16 v2, v32

    const-string v4, "_vs"

    .line 376
    iget-object v5, v12, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 377
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    invoke-static {v12, v8}, Lc/e/a/b/h/b/Zb;->a(Lc/e/a/b/g/f/ba;Ljava/lang/String;)Lc/e/a/b/g/f/K;

    move-result-object v4

    if-nez v4, :cond_3c

    if-eqz v31, :cond_3a

    move-object/from16 v4, v31

    .line 378
    iget-object v2, v4, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    .line 379
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v2, v12, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    cmp-long v2, v5, v9

    if-gtz v2, :cond_3b

    .line 380
    invoke-virtual {v1, v4, v12}, Lc/e/a/b/h/b/Tb;->a(Lc/e/a/b/g/f/ba;Lc/e/a/b/g/f/ba;)Z

    move-result v2

    if-eqz v2, :cond_3b

    goto :goto_21

    :cond_3a
    move-object/from16 v4, v31

    :cond_3b
    move-object v2, v12

    goto :goto_23

    :cond_3c
    :goto_22
    move-object/from16 v4, v31

    goto :goto_23

    :cond_3d
    move-object/from16 v4, v31

    move-object/from16 v2, v32

    :goto_23
    if-eqz v30, :cond_41

    if-nez v29, :cond_41

    .line 381
    iget-object v5, v12, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 382
    iget-object v5, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    if-eqz v5, :cond_40

    iget-object v5, v12, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    array-length v5, v5

    if-nez v5, :cond_3e

    goto :goto_24

    .line 383
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    invoke-static {v12, v8}, Lc/e/a/b/h/b/Zb;->b(Lc/e/a/b/g/f/ba;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_3f

    .line 384
    iget-object v5, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v5}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v5

    .line 385
    invoke-virtual {v5}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v5

    const-string v6, "Engagement event does not include duration. appId"

    iget-object v8, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v8, v8, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    .line 386
    invoke-static {v8}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 387
    invoke-virtual {v5, v6, v8}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_25

    .line 388
    :cond_3f
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long v14, v19, v5

    goto :goto_26

    .line 389
    :cond_40
    :goto_24
    iget-object v5, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v5}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v5

    .line 390
    invoke-virtual {v5}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v5

    const-string v6, "Engagement event does not contain any parameters. appId"

    iget-object v8, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v8, v8, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    .line 391
    invoke-static {v8}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 392
    invoke-virtual {v5, v6, v8}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_41
    :goto_25
    move-wide/from16 v14, v19

    :goto_26
    move-object/from16 v5, v28

    .line 393
    iget-object v6, v5, Lc/e/a/b/g/f/da;->e:[Lc/e/a/b/g/f/ba;

    add-int/lit8 v10, v27, 0x1

    aput-object v12, v6, v27

    move-object v8, v2

    move/from16 v13, v18

    :goto_27
    add-int/lit8 v9, v25, 0x1

    move-object v7, v4

    move-object v4, v5

    move-object/from16 v2, v24

    move/from16 v6, v29

    move/from16 v5, v30

    const/4 v11, 0x2

    goto/16 :goto_c

    :cond_42
    move-object/from16 v24, v2

    move/from16 v30, v5

    move/from16 v29, v6

    move/from16 v27, v10

    move-object v8, v11

    move-object v5, v4

    if-eqz v29, :cond_46

    move-wide/from16 v14, v19

    move/from16 v10, v27

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v10, :cond_47

    .line 394
    iget-object v4, v5, Lc/e/a/b/g/f/da;->e:[Lc/e/a/b/g/f/ba;

    aget-object v4, v4, v2

    .line 395
    iget-object v6, v4, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 396
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    const-string v6, "_fr"

    invoke-static {v4, v6}, Lc/e/a/b/h/b/Zb;->a(Lc/e/a/b/g/f/ba;Ljava/lang/String;)Lc/e/a/b/g/f/K;

    move-result-object v6

    if-eqz v6, :cond_43

    .line 397
    iget-object v4, v5, Lc/e/a/b/g/f/da;->e:[Lc/e/a/b/g/f/ba;

    add-int/lit8 v6, v2, 0x1

    iget-object v7, v5, Lc/e/a/b/g/f/da;->e:[Lc/e/a/b/g/f/ba;

    sub-int v9, v10, v2

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    invoke-static {v4, v6, v7, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2a

    :cond_43
    if-eqz v30, :cond_45

    .line 398
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    invoke-static {v4, v8}, Lc/e/a/b/h/b/Zb;->a(Lc/e/a/b/g/f/ba;Ljava/lang/String;)Lc/e/a/b/g/f/K;

    move-result-object v4

    if-eqz v4, :cond_45

    .line 399
    invoke-virtual {v4}, Lc/e/a/b/g/f/K;->v()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-virtual {v4}, Lc/e/a/b/g/f/K;->w()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_29

    :cond_44
    const/4 v4, 0x0

    :goto_29
    if-eqz v4, :cond_45

    .line 400
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v11, 0x0

    cmp-long v9, v6, v11

    if-lez v9, :cond_45

    .line 401
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v14, v6

    :cond_45
    :goto_2a
    const/4 v4, 0x1

    add-int/2addr v2, v4

    goto :goto_28

    :cond_46
    move-wide/from16 v14, v19

    move/from16 v10, v27

    .line 402
    :cond_47
    iget-object v2, v3, Lc/e/a/b/h/b/Tb$a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_48

    .line 403
    iget-object v2, v5, Lc/e/a/b/g/f/da;->e:[Lc/e/a/b/g/f/ba;

    invoke-static {v2, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lc/e/a/b/g/f/ba;

    iput-object v2, v5, Lc/e/a/b/g/f/da;->e:[Lc/e/a/b/g/f/ba;

    :cond_48
    if-eqz v30, :cond_4e

    .line 404
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v2

    iget-object v4, v5, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    move-object/from16 v6, v24

    .line 405
    invoke-virtual {v2, v4, v6}, Lc/e/a/b/h/b/sc;->d(Ljava/lang/String;Ljava/lang/String;)Lc/e/a/b/h/b/bc;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 406
    iget-object v4, v2, Lc/e/a/b/h/b/bc;->e:Ljava/lang/Object;

    if-nez v4, :cond_49

    goto :goto_2b

    .line 407
    :cond_49
    new-instance v4, Lc/e/a/b/h/b/bc;

    iget-object v8, v5, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    const-string v9, "auto"

    const-string v10, "_lte"

    .line 408
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object v7

    .line 409
    invoke-interface {v7}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v11

    iget-object v2, v2, Lc/e/a/b/h/b/bc;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 410
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    add-long v19, v19, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object v7, v4

    invoke-direct/range {v7 .. v13}, Lc/e/a/b/h/b/bc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object v2, v4

    goto :goto_2c

    .line 411
    :cond_4a
    :goto_2b
    new-instance v2, Lc/e/a/b/h/b/bc;

    iget-object v4, v5, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    const-string v26, "auto"

    const-string v27, "_lte"

    .line 412
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object v7

    .line 413
    invoke-interface {v7}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v28

    .line 414
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v24, v2

    move-object/from16 v25, v4

    invoke-direct/range {v24 .. v30}, Lc/e/a/b/h/b/bc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 415
    :goto_2c
    invoke-static {}, Lc/e/a/b/g/f/N;->D()Lc/e/a/b/g/f/N$a;

    move-result-object v4

    .line 416
    invoke-virtual {v4, v6}, Lc/e/a/b/g/f/N$a;->a(Ljava/lang/String;)Lc/e/a/b/g/f/N$a;

    .line 417
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object v7

    .line 418
    invoke-interface {v7}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lc/e/a/b/g/f/N$a;->a(J)Lc/e/a/b/g/f/N$a;

    iget-object v7, v2, Lc/e/a/b/h/b/bc;->e:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    .line 419
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lc/e/a/b/g/f/N$a;->b(J)Lc/e/a/b/g/f/N$a;

    .line 420
    invoke-virtual {v4}, Lc/e/a/b/g/f/nb$a;->o()Lc/e/a/b/g/f/Sb;

    move-result-object v4

    check-cast v4, Lc/e/a/b/g/f/nb;

    check-cast v4, Lc/e/a/b/g/f/N;

    const/4 v7, 0x0

    .line 421
    :goto_2d
    iget-object v8, v5, Lc/e/a/b/g/f/da;->f:[Lc/e/a/b/g/f/N;

    array-length v8, v8

    if-ge v7, v8, :cond_4c

    .line 422
    iget-object v8, v5, Lc/e/a/b/g/f/da;->f:[Lc/e/a/b/g/f/N;

    aget-object v8, v8, v7

    .line 423
    invoke-virtual {v8}, Lc/e/a/b/g/f/N;->q()Ljava/lang/String;

    move-result-object v8

    .line 424
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 425
    iget-object v6, v5, Lc/e/a/b/g/f/da;->f:[Lc/e/a/b/g/f/N;

    aput-object v4, v6, v7

    const/4 v6, 0x1

    goto :goto_2e

    :cond_4b
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    :cond_4c
    const/4 v6, 0x0

    :goto_2e
    if-nez v6, :cond_4d

    .line 426
    iget-object v6, v5, Lc/e/a/b/g/f/da;->f:[Lc/e/a/b/g/f/N;

    iget-object v7, v5, Lc/e/a/b/g/f/da;->f:[Lc/e/a/b/g/f/N;

    array-length v7, v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    .line 427
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lc/e/a/b/g/f/N;

    iput-object v6, v5, Lc/e/a/b/g/f/da;->f:[Lc/e/a/b/g/f/N;

    .line 428
    iget-object v6, v5, Lc/e/a/b/g/f/da;->f:[Lc/e/a/b/g/f/N;

    iget-object v7, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v7, v7, Lc/e/a/b/g/f/da;->f:[Lc/e/a/b/g/f/N;

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aput-object v4, v6, v7

    :cond_4d
    const-wide/16 v6, 0x0

    cmp-long v4, v14, v6

    if-lez v4, :cond_4e

    .line 429
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v4

    invoke-virtual {v4, v2}, Lc/e/a/b/h/b/sc;->a(Lc/e/a/b/h/b/bc;)Z

    .line 430
    iget-object v4, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v4}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v4

    .line 431
    invoke-virtual {v4}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object v4

    const-string v6, "Updated lifetime engagement user property with value. Value"

    iget-object v2, v2, Lc/e/a/b/h/b/bc;->e:Ljava/lang/Object;

    .line 432
    invoke-virtual {v4, v6, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 433
    :cond_4e
    iget-object v2, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v2}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v2

    .line 434
    iget-object v4, v5, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    sget-object v6, Lc/e/a/b/h/b/k;->ya:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v2, v4, v6}, Lc/e/a/b/h/b/pc;->e(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 435
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    move-result-object v2

    .line 436
    invoke-virtual {v2}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v4

    invoke-virtual {v4}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v4

    const-string v6, "Checking account type status for ad personalization signals"

    invoke-virtual {v4, v6}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v2}, Lc/e/a/b/h/b/Rb;->q()Lc/e/a/b/h/b/T;

    move-result-object v4

    iget-object v6, v5, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lc/e/a/b/h/b/T;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 438
    invoke-virtual {v2}, Lc/e/a/b/h/b/Rb;->p()Lc/e/a/b/h/b/sc;

    move-result-object v4

    iget-object v6, v5, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lc/e/a/b/h/b/sc;->b(Ljava/lang/String;)Lc/e/a/b/h/b/_b;

    move-result-object v4

    if-eqz v4, :cond_51

    .line 439
    invoke-virtual {v4}, Lc/e/a/b/h/b/_b;->D()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 440
    invoke-virtual {v2}, Lc/e/a/b/h/b/ua;->m()Lc/e/a/b/h/b/e;

    move-result-object v4

    invoke-virtual {v4}, Lc/e/a/b/h/b/e;->x()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 441
    invoke-virtual {v2}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v4

    invoke-virtual {v4}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object v4

    const-string v6, "Turning off ad personalization due to account type"

    invoke-virtual {v4, v6}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 442
    invoke-static {}, Lc/e/a/b/g/f/N;->D()Lc/e/a/b/g/f/N$a;

    move-result-object v4

    const-string v6, "_npa"

    .line 443
    invoke-virtual {v4, v6}, Lc/e/a/b/g/f/N$a;->a(Ljava/lang/String;)Lc/e/a/b/g/f/N$a;

    .line 444
    invoke-virtual {v2}, Lc/e/a/b/h/b/ua;->m()Lc/e/a/b/h/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/e;->v()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lc/e/a/b/g/f/N$a;->a(J)Lc/e/a/b/g/f/N$a;

    const-wide/16 v6, 0x1

    .line 445
    invoke-virtual {v4, v6, v7}, Lc/e/a/b/g/f/N$a;->b(J)Lc/e/a/b/g/f/N$a;

    .line 446
    invoke-virtual {v4}, Lc/e/a/b/g/f/nb$a;->o()Lc/e/a/b/g/f/Sb;

    move-result-object v2

    check-cast v2, Lc/e/a/b/g/f/nb;

    check-cast v2, Lc/e/a/b/g/f/N;

    const/4 v4, 0x0

    .line 447
    :goto_2f
    iget-object v6, v5, Lc/e/a/b/g/f/da;->f:[Lc/e/a/b/g/f/N;

    array-length v6, v6

    if-ge v4, v6, :cond_50

    const-string v6, "_npa"

    .line 448
    iget-object v7, v5, Lc/e/a/b/g/f/da;->f:[Lc/e/a/b/g/f/N;

    aget-object v7, v7, v4

    .line 449
    invoke-virtual {v7}, Lc/e/a/b/g/f/N;->q()Ljava/lang/String;

    move-result-object v7

    .line 450
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 451
    iget-object v6, v5, Lc/e/a/b/g/f/da;->f:[Lc/e/a/b/g/f/N;

    aput-object v2, v6, v4

    const/4 v4, 0x1

    goto :goto_30

    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    :cond_50
    const/4 v4, 0x0

    :goto_30
    if-nez v4, :cond_51

    .line 452
    iget-object v4, v5, Lc/e/a/b/g/f/da;->f:[Lc/e/a/b/g/f/N;

    iget-object v6, v5, Lc/e/a/b/g/f/da;->f:[Lc/e/a/b/g/f/N;

    array-length v6, v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 453
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lc/e/a/b/g/f/N;

    iput-object v4, v5, Lc/e/a/b/g/f/da;->f:[Lc/e/a/b/g/f/N;

    .line 454
    iget-object v4, v5, Lc/e/a/b/g/f/da;->f:[Lc/e/a/b/g/f/N;

    iget-object v6, v5, Lc/e/a/b/g/f/da;->f:[Lc/e/a/b/g/f/N;

    array-length v6, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aput-object v2, v4, v6

    .line 455
    :cond_51
    iget-object v2, v5, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    iget-object v4, v5, Lc/e/a/b/g/f/da;->f:[Lc/e/a/b/g/f/N;

    iget-object v6, v5, Lc/e/a/b/g/f/da;->e:[Lc/e/a/b/g/f/ba;

    .line 456
    invoke-static {v2}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 457
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->k()Lc/e/a/b/h/b/lc;

    move-result-object v7

    invoke-virtual {v7, v2, v6, v4}, Lc/e/a/b/h/b/lc;->a(Ljava/lang/String;[Lc/e/a/b/g/f/ba;[Lc/e/a/b/g/f/N;)[Lc/e/a/b/g/f/H;

    move-result-object v2

    .line 458
    iput-object v2, v5, Lc/e/a/b/g/f/da;->D:[Lc/e/a/b/g/f/H;

    .line 459
    iget-object v2, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v2}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v2

    .line 460
    iget-object v4, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v4, v4, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lc/e/a/b/h/b/pc;->g(Ljava/lang/String;)Z

    move-result v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    if-eqz v2, :cond_6f

    .line 461
    :try_start_23
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 462
    iget-object v4, v5, Lc/e/a/b/g/f/da;->e:[Lc/e/a/b/g/f/ba;

    array-length v4, v4

    new-array v4, v4, [Lc/e/a/b/g/f/ba;

    .line 463
    iget-object v6, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v6}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v6

    .line 464
    invoke-virtual {v6}, Lc/e/a/b/h/b/cc;->v()Ljava/security/SecureRandom;

    move-result-object v6

    .line 465
    iget-object v7, v5, Lc/e/a/b/g/f/da;->e:[Lc/e/a/b/g/f/ba;

    array-length v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_31
    if-ge v9, v8, :cond_6d

    aget-object v11, v7, v9

    .line 466
    iget-object v12, v11, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    const-string v13, "_ep"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    if-eqz v12, :cond_56

    .line 467
    :try_start_24
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    const-string v12, "_en"

    invoke-static {v11, v12}, Lc/e/a/b/h/b/Zb;->b(Lc/e/a/b/g/f/ba;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 468
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lc/e/a/b/h/b/g;

    if-nez v13, :cond_52

    .line 469
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v13

    iget-object v14, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v14, v14, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    invoke-virtual {v13, v14, v12}, Lc/e/a/b/h/b/sc;->b(Ljava/lang/String;Ljava/lang/String;)Lc/e/a/b/h/b/g;

    move-result-object v13

    .line 470
    invoke-interface {v2, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_52
    iget-object v12, v13, Lc/e/a/b/h/b/g;->h:Ljava/lang/Long;

    if-nez v12, :cond_55

    .line 472
    iget-object v12, v13, Lc/e/a/b/h/b/g;->i:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v19, 0x1

    cmp-long v12, v14, v19

    if-lez v12, :cond_53

    .line 473
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    iget-object v12, v11, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    const-string v14, "_sr"

    iget-object v15, v13, Lc/e/a/b/h/b/g;->i:Ljava/lang/Long;

    .line 474
    invoke-static {v12, v14, v15}, Lc/e/a/b/h/b/Zb;->a([Lc/e/a/b/g/f/K;Ljava/lang/String;Ljava/lang/Object;)[Lc/e/a/b/g/f/K;

    move-result-object v12

    iput-object v12, v11, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    .line 475
    :cond_53
    iget-object v12, v13, Lc/e/a/b/h/b/g;->j:Ljava/lang/Boolean;

    if-eqz v12, :cond_54

    iget-object v12, v13, Lc/e/a/b/h/b/g;->j:Ljava/lang/Boolean;

    .line 476
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_54

    .line 477
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    iget-object v12, v11, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    const-string v13, "_efs"

    move-object/from16 v19, v7

    const-wide/16 v14, 0x1

    .line 478
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 479
    invoke-static {v12, v13, v7}, Lc/e/a/b/h/b/Zb;->a([Lc/e/a/b/g/f/K;Ljava/lang/String;Ljava/lang/Object;)[Lc/e/a/b/g/f/K;

    move-result-object v7

    iput-object v7, v11, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    goto :goto_32

    :cond_54
    move-object/from16 v19, v7

    :goto_32
    add-int/lit8 v7, v10, 0x1

    .line 480
    aput-object v11, v4, v10
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    move-object/from16 v28, v5

    move-object/from16 v26, v6

    move v10, v7

    :goto_33
    move/from16 v23, v8

    move/from16 v20, v9

    :goto_34
    move-object v6, v2

    goto/16 :goto_3d

    :cond_55
    move-object/from16 v19, v7

    move-object/from16 v28, v5

    move-object/from16 v26, v6

    goto :goto_33

    :cond_56
    move-object/from16 v19, v7

    .line 481
    :try_start_25
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->m()Lc/e/a/b/h/b/T;

    move-result-object v7

    iget-object v12, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v12, v12, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    .line 482
    invoke-virtual {v7, v12}, Lc/e/a/b/h/b/T;->g(Ljava/lang/String;)J

    move-result-wide v12

    .line 483
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    .line 484
    iget-object v7, v11, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15, v12, v13}, Lc/e/a/b/h/b/cc;->a(JJ)J

    move-result-wide v14

    const-string v7, "_dbg"

    move/from16 v23, v8

    const-wide/16 v20, 0x1

    .line 485
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 486
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    if-nez v20, :cond_5c

    if-nez v8, :cond_57

    goto :goto_36

    :cond_57
    move-object/from16 v28, v5

    .line 487
    :try_start_26
    iget-object v5, v11, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    move/from16 v20, v9

    array-length v9, v5

    move-wide/from16 v24, v12

    const/4 v12, 0x0

    :goto_35
    if-ge v12, v9, :cond_5d

    aget-object v13, v5, v12

    move-object/from16 v26, v5

    .line 488
    invoke-virtual {v13}, Lc/e/a/b/g/f/K;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 489
    instance-of v5, v8, Ljava/lang/Long;

    if-eqz v5, :cond_58

    invoke-virtual {v13}, Lc/e/a/b/g/f/K;->w()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    :cond_58
    instance-of v5, v8, Ljava/lang/String;

    if-eqz v5, :cond_59

    .line 490
    invoke-virtual {v13}, Lc/e/a/b/g/f/K;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    :cond_59
    instance-of v5, v8, Ljava/lang/Double;

    if-eqz v5, :cond_5d

    .line 491
    invoke-virtual {v13}, Lc/e/a/b/g/f/K;->z()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    :cond_5a
    const/4 v5, 0x1

    goto :goto_37

    :cond_5b
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v26

    goto :goto_35

    :cond_5c
    :goto_36
    move-object/from16 v28, v5

    move/from16 v20, v9

    move-wide/from16 v24, v12

    :cond_5d
    const/4 v5, 0x0

    :goto_37
    if-nez v5, :cond_5e

    .line 492
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->m()Lc/e/a/b/h/b/T;

    move-result-object v5

    iget-object v7, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v7, v7, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    iget-object v8, v11, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lc/e/a/b/h/b/T;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    goto :goto_38

    :cond_5e
    const/4 v13, 0x1

    :goto_38
    if-gtz v13, :cond_5f

    .line 493
    iget-object v5, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v5}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v5

    .line 494
    invoke-virtual {v5}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v5

    const-string v7, "Sample rate must be positive. event, rate"

    iget-object v8, v11, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    .line 495
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v7, v8, v9}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v5, v10, 0x1

    .line 496
    aput-object v11, v4, v10
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_6

    move v10, v5

    move-object/from16 v26, v6

    goto/16 :goto_34

    .line 497
    :cond_5f
    :try_start_27
    iget-object v5, v11, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/a/b/h/b/g;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_3

    if-nez v5, :cond_60

    .line 498
    :try_start_28
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v5

    iget-object v7, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v7, v7, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    iget-object v8, v11, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lc/e/a/b/h/b/sc;->b(Ljava/lang/String;Ljava/lang/String;)Lc/e/a/b/h/b/g;

    move-result-object v5

    if-nez v5, :cond_60

    .line 499
    iget-object v5, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v5}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v5

    .line 500
    invoke-virtual {v5}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v5

    const-string v7, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v8, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v8, v8, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    iget-object v9, v11, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    .line 501
    invoke-virtual {v5, v7, v8, v9}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 502
    new-instance v5, Lc/e/a/b/h/b/g;

    iget-object v7, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v7, v7, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    iget-object v8, v11, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    const-wide/16 v32, 0x1

    const-wide/16 v34, 0x1

    iget-object v9, v11, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    .line 503
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v29, v5

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    invoke-direct/range {v29 .. v43}, Lc/e/a/b/h/b/g;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_6

    .line 504
    :cond_60
    :try_start_29
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    const-string v7, "_eid"

    invoke-static {v11, v7}, Lc/e/a/b/h/b/Zb;->b(Lc/e/a/b/g/f/ba;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    if-eqz v7, :cond_61

    const/4 v8, 0x1

    goto :goto_39

    :cond_61
    const/4 v8, 0x0

    .line 505
    :goto_39
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_3

    const/4 v9, 0x1

    if-ne v13, v9, :cond_64

    add-int/lit8 v7, v10, 0x1

    .line 506
    :try_start_2a
    aput-object v11, v4, v10

    .line 507
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_63

    iget-object v8, v5, Lc/e/a/b/h/b/g;->h:Ljava/lang/Long;

    if-nez v8, :cond_62

    iget-object v8, v5, Lc/e/a/b/h/b/g;->i:Ljava/lang/Long;

    if-nez v8, :cond_62

    iget-object v8, v5, Lc/e/a/b/h/b/g;->j:Ljava/lang/Boolean;

    if-eqz v8, :cond_63

    :cond_62
    const/4 v8, 0x0

    .line 508
    invoke-virtual {v5, v8, v8, v8}, Lc/e/a/b/h/b/g;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lc/e/a/b/h/b/g;

    move-result-object v5

    .line 509
    iget-object v8, v11, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    invoke-interface {v2, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_6

    :cond_63
    move-object/from16 v26, v6

    move v10, v7

    goto/16 :goto_34

    .line 510
    :cond_64
    :try_start_2b
    invoke-virtual {v6, v13}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v9
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_3

    if-nez v9, :cond_66

    .line 511
    :try_start_2c
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    iget-object v7, v11, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    const-string v9, "_sr"

    int-to-long v12, v13

    move-object/from16 v26, v6

    .line 512
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 513
    invoke-static {v7, v9, v6}, Lc/e/a/b/h/b/Zb;->a([Lc/e/a/b/g/f/K;Ljava/lang/String;Ljava/lang/Object;)[Lc/e/a/b/g/f/K;

    move-result-object v6

    iput-object v6, v11, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    add-int/lit8 v6, v10, 0x1

    .line 514
    aput-object v11, v4, v10

    .line 515
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_65

    .line 516
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v7, v8}, Lc/e/a/b/h/b/g;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lc/e/a/b/h/b/g;

    move-result-object v5

    .line 517
    :cond_65
    iget-object v7, v11, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    iget-object v8, v11, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    .line 518
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9, v14, v15}, Lc/e/a/b/h/b/g;->a(JJ)Lc/e/a/b/h/b/g;

    move-result-object v5

    .line 519
    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_6

    move v10, v6

    goto/16 :goto_34

    :cond_66
    move-object/from16 v26, v6

    .line 520
    :try_start_2d
    iget-object v6, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v6}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v6

    .line 521
    iget-object v9, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v9, v9, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lc/e/a/b/h/b/pc;->s(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 522
    iget-object v6, v5, Lc/e/a/b/h/b/g;->g:Ljava/lang/Long;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_3

    if-eqz v6, :cond_67

    .line 523
    :try_start_2e
    iget-object v6, v5, Lc/e/a/b/h/b/g;->g:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v24
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_6

    move-object v12, v2

    move-object v9, v7

    goto :goto_3a

    .line 524
    :cond_67
    :try_start_2f
    iget-object v6, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v6}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    .line 525
    iget-object v6, v11, Lc/e/a/b/g/f/ba;->g:Ljava/lang/Long;

    move-object v9, v7

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v12, v2

    move-wide/from16 v1, v24

    invoke-static {v6, v7, v1, v2}, Lc/e/a/b/h/b/cc;->a(JJ)J

    move-result-wide v24

    :goto_3a
    cmp-long v1, v24, v14

    if-eqz v1, :cond_68

    :goto_3b
    const/4 v1, 0x1

    goto :goto_3c

    :cond_68
    const/4 v1, 0x0

    goto :goto_3c

    :cond_69
    move-object v12, v2

    move-object v9, v7

    .line 526
    iget-wide v1, v5, Lc/e/a/b/h/b/g;->f:J

    .line 527
    iget-object v6, v11, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    .line 528
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v6, 0x5265c00

    cmp-long v24, v1, v6

    if-ltz v24, :cond_68

    goto :goto_3b

    :goto_3c
    if-eqz v1, :cond_6b

    .line 529
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    iget-object v1, v11, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    const-string v2, "_efs"

    const-wide/16 v6, 0x1

    .line 530
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 531
    invoke-static {v1, v2, v9}, Lc/e/a/b/h/b/Zb;->a([Lc/e/a/b/g/f/K;Ljava/lang/String;Ljava/lang/Object;)[Lc/e/a/b/g/f/K;

    move-result-object v1

    iput-object v1, v11, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    .line 532
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    iget-object v1, v11, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    const-string v2, "_sr"

    int-to-long v6, v13

    .line 533
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 534
    invoke-static {v1, v2, v9}, Lc/e/a/b/h/b/Zb;->a([Lc/e/a/b/g/f/K;Ljava/lang/String;Ljava/lang/Object;)[Lc/e/a/b/g/f/K;

    move-result-object v1

    iput-object v1, v11, Lc/e/a/b/g/f/ba;->d:[Lc/e/a/b/g/f/K;

    add-int/lit8 v1, v10, 0x1

    .line 535
    aput-object v11, v4, v10

    .line 536
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 537
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2, v7}, Lc/e/a/b/h/b/g;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lc/e/a/b/h/b/g;

    move-result-object v5

    .line 538
    :cond_6a
    iget-object v2, v11, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    iget-object v6, v11, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    .line 539
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v14, v15}, Lc/e/a/b/h/b/g;->a(JJ)Lc/e/a/b/h/b/g;

    move-result-object v5

    move-object v6, v12

    .line 540
    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v10, v1

    goto :goto_3d

    :cond_6b
    move-object v6, v12

    .line 541
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 542
    iget-object v1, v11, Lc/e/a/b/g/f/ba;->e:Ljava/lang/String;

    const/4 v2, 0x0

    .line 543
    invoke-virtual {v5, v9, v2, v2}, Lc/e/a/b/h/b/g;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lc/e/a/b/h/b/g;

    move-result-object v5

    .line 544
    invoke-interface {v6, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6c
    :goto_3d
    add-int/lit8 v9, v20, 0x1

    move-object/from16 v1, p0

    move-object v2, v6

    move-object/from16 v7, v19

    move/from16 v8, v23

    move-object/from16 v6, v26

    move-object/from16 v5, v28

    goto/16 :goto_31

    :cond_6d
    move-object v6, v2

    move-object v1, v5

    .line 545
    iget-object v2, v1, Lc/e/a/b/g/f/da;->e:[Lc/e/a/b/g/f/ba;

    array-length v2, v2

    if-ge v10, v2, :cond_6e

    .line 546
    invoke-static {v4, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lc/e/a/b/g/f/ba;

    iput-object v2, v1, Lc/e/a/b/g/f/da;->e:[Lc/e/a/b/g/f/ba;

    .line 547
    :cond_6e
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 548
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/a/b/h/b/g;

    invoke-virtual {v5, v4}, Lc/e/a/b/h/b/sc;->a(Lc/e/a/b/h/b/g;)V

    goto :goto_3e

    :cond_6f
    move-object v1, v5

    :cond_70
    const-wide v4, 0x7fffffffffffffffL

    .line 549
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lc/e/a/b/g/f/da;->h:Ljava/lang/Long;

    const-wide/high16 v4, -0x8000000000000000L

    .line 550
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lc/e/a/b/g/f/da;->i:Ljava/lang/Long;

    const/4 v2, 0x0

    .line 551
    :goto_3f
    iget-object v4, v1, Lc/e/a/b/g/f/da;->e:[Lc/e/a/b/g/f/ba;

    array-length v4, v4

    if-ge v2, v4, :cond_73

    .line 552
    iget-object v4, v1, Lc/e/a/b/g/f/da;->e:[Lc/e/a/b/g/f/ba;

    aget-object v4, v4, v2

    .line 553
    iget-object v5, v4, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, v1, Lc/e/a/b/g/f/da;->h:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_71

    .line 554
    iget-object v5, v4, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    iput-object v5, v1, Lc/e/a/b/g/f/da;->h:Ljava/lang/Long;

    .line 555
    :cond_71
    iget-object v5, v4, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, v1, Lc/e/a/b/g/f/da;->i:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_72

    .line 556
    iget-object v4, v4, Lc/e/a/b/g/f/ba;->f:Ljava/lang/Long;

    iput-object v4, v1, Lc/e/a/b/g/f/da;->i:Ljava/lang/Long;

    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 557
    :cond_73
    iget-object v2, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v2, v2, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    .line 558
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v4

    invoke-virtual {v4, v2}, Lc/e/a/b/h/b/sc;->b(Ljava/lang/String;)Lc/e/a/b/h/b/_b;

    move-result-object v4
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_3

    if-nez v4, :cond_74

    move-object/from16 v5, p0

    .line 559
    :try_start_30
    iget-object v4, v5, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v4}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v4

    .line 560
    invoke-virtual {v4}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v4

    const-string v6, "Bundling raw events w/o app info. appId"

    iget-object v7, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v7, v7, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    .line 561
    invoke-static {v7}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 562
    invoke-virtual {v4, v6, v7}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_43

    :cond_74
    move-object/from16 v5, p0

    .line 563
    iget-object v6, v1, Lc/e/a/b/g/f/da;->e:[Lc/e/a/b/g/f/ba;

    array-length v6, v6

    if-lez v6, :cond_78

    .line 564
    invoke-virtual {v4}, Lc/e/a/b/h/b/_b;->j()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_75

    .line 565
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_40

    :cond_75
    const/4 v8, 0x0

    :goto_40
    iput-object v8, v1, Lc/e/a/b/g/f/da;->k:Ljava/lang/Long;

    .line 566
    invoke-virtual {v4}, Lc/e/a/b/h/b/_b;->i()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_76

    goto :goto_41

    :cond_76
    move-wide v6, v8

    :goto_41
    cmp-long v8, v6, v10

    if-eqz v8, :cond_77

    .line 567
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_42

    :cond_77
    const/4 v6, 0x0

    :goto_42
    iput-object v6, v1, Lc/e/a/b/g/f/da;->j:Ljava/lang/Long;

    .line 568
    invoke-virtual {v4}, Lc/e/a/b/h/b/_b;->t()V

    .line 569
    invoke-virtual {v4}, Lc/e/a/b/h/b/_b;->q()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v1, Lc/e/a/b/g/f/da;->z:Ljava/lang/Integer;

    .line 570
    iget-object v6, v1, Lc/e/a/b/g/f/da;->h:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lc/e/a/b/h/b/_b;->a(J)V

    .line 571
    iget-object v6, v1, Lc/e/a/b/g/f/da;->i:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lc/e/a/b/h/b/_b;->b(J)V

    .line 572
    invoke-virtual {v4}, Lc/e/a/b/h/b/_b;->B()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lc/e/a/b/g/f/da;->A:Ljava/lang/String;

    .line 573
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v6

    invoke-virtual {v6, v4}, Lc/e/a/b/h/b/sc;->a(Lc/e/a/b/h/b/_b;)V

    .line 574
    :cond_78
    :goto_43
    iget-object v4, v1, Lc/e/a/b/g/f/da;->e:[Lc/e/a/b/g/f/ba;

    array-length v4, v4

    if-lez v4, :cond_7c

    .line 575
    iget-object v4, v5, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v4}, Lc/e/a/b/h/b/Y;->a()Lc/e/a/b/h/b/nc;

    .line 576
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->m()Lc/e/a/b/h/b/T;

    move-result-object v4

    iget-object v6, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v6, v6, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lc/e/a/b/h/b/T;->b(Ljava/lang/String;)Lc/e/a/b/g/f/aa;

    move-result-object v4

    if-eqz v4, :cond_7a

    .line 577
    iget-object v6, v4, Lc/e/a/b/g/f/aa;->c:Ljava/lang/Long;

    if-nez v6, :cond_79

    goto :goto_44

    .line 578
    :cond_79
    iget-object v4, v4, Lc/e/a/b/g/f/aa;->c:Ljava/lang/Long;

    iput-object v4, v1, Lc/e/a/b/g/f/da;->J:Ljava/lang/Long;

    goto :goto_45

    .line 579
    :cond_7a
    :goto_44
    iget-object v4, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v4, v4, Lc/e/a/b/g/f/da;->B:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7b

    const-wide/16 v6, -0x1

    .line 580
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lc/e/a/b/g/f/da;->J:Ljava/lang/Long;

    goto :goto_45

    .line 581
    :cond_7b
    iget-object v4, v5, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v4}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v4

    .line 582
    invoke-virtual {v4}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v4

    const-string v6, "Did not find measurement config or missing version info. appId"

    iget-object v7, v3, Lc/e/a/b/h/b/Tb$a;->a:Lc/e/a/b/g/f/da;

    iget-object v7, v7, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    .line 583
    invoke-static {v7}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 584
    invoke-virtual {v4, v6, v7}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 585
    :goto_45
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v4

    move/from16 v12, v18

    invoke-virtual {v4, v1, v12}, Lc/e/a/b/h/b/sc;->a(Lc/e/a/b/g/f/da;Z)Z

    .line 586
    :cond_7c
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v1

    iget-object v3, v3, Lc/e/a/b/h/b/Tb$a;->b:Ljava/util/List;

    .line 587
    invoke-static {v3}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->l()V

    .line 589
    invoke-virtual {v1}, Lc/e/a/b/h/b/Sb;->s()V

    .line 590
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "rowid in ("

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 591
    :goto_46
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_7e

    if-eqz v6, :cond_7d

    const-string v7, ","

    .line 592
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    :cond_7d
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    :cond_7e
    const-string v6, ")"

    .line 594
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {v1}, Lc/e/a/b/h/b/sc;->x()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "raw_events"

    .line 596
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 597
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eq v4, v6, :cond_7f

    .line 598
    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 599
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v6, "Deleted fewer rows from raw events table than expected"

    .line 600
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 601
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 602
    invoke-virtual {v1, v6, v4, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 603
    :cond_7f
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v1

    .line 604
    invoke-virtual {v1}, Lc/e/a/b/h/b/sc;->x()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_5

    :try_start_31
    const-string v4, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v6, 0x2

    .line 605
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-virtual {v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_31
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_31 .. :try_end_31} :catch_8
    .catchall {:try_start_31 .. :try_end_31} :catchall_5

    goto :goto_47

    :catch_8
    move-exception v0

    move-object v3, v0

    .line 606
    :try_start_32
    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 607
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v4, "Failed to remove unused event metadata. appId"

    .line 608
    invoke-static {v2}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 609
    :goto_47
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/sc;->y()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_5

    .line 610
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/sc;->w()V

    const/4 v1, 0x1

    return v1

    :catchall_3
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_49

    :cond_80
    move-object v5, v1

    .line 611
    :try_start_33
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/sc;->y()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_5

    .line 612
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/sc;->w()V

    const/4 v1, 0x0

    return v1

    :catchall_4
    move-exception v0

    move-object v5, v1

    goto/16 :goto_7

    :goto_48
    if-eqz v9, :cond_81

    .line 613
    :try_start_34
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_81
    throw v1
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_49

    :catchall_6
    move-exception v0

    move-object v5, v1

    :goto_49
    move-object v1, v0

    .line 614
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/sc;->w()V

    goto :goto_4b

    :goto_4a
    throw v1

    :goto_4b
    goto :goto_4a
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lc/e/a/b/h/b/_b;)Ljava/lang/Boolean;
    .locals 8

    .line 310
    :try_start_0
    invoke-virtual {p1}, Lc/e/a/b/h/b/_b;->l()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    .line 311
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->b()Landroid/content/Context;

    move-result-object v0

    .line 312
    invoke-static {v0}, Lc/e/a/b/d/h/c;->a(Landroid/content/Context;)Lc/e/a/b/d/h/b;

    move-result-object v0

    invoke-virtual {p1}, Lc/e/a/b/h/b/_b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lc/e/a/b/d/h/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 313
    invoke-virtual {p1}, Lc/e/a/b/h/b/_b;->l()J

    move-result-wide v1

    int-to-long v6, v0

    cmp-long p1, v1, v6

    if-nez p1, :cond_1

    .line 314
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 315
    :cond_0
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->b()Landroid/content/Context;

    move-result-object v0

    .line 316
    invoke-static {v0}, Lc/e/a/b/d/h/c;->a(Landroid/content/Context;)Lc/e/a/b/d/h/b;

    move-result-object v0

    invoke-virtual {p1}, Lc/e/a/b/h/b/_b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lc/e/a/b/d/h/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Lc/e/a/b/h/b/_b;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lc/e/a/b/h/b/_b;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 318
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 319
    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Lc/e/a/b/h/b/Sb;)V
    .locals 0

    .line 367
    iget p1, p0, Lc/e/a/b/h/b/Tb;->p:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lc/e/a/b/h/b/Tb;->p:I

    return-void
.end method

.method public final b(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "_s"

    .line 6
    invoke-static/range {p2 .. p2}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-static {v5}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 9
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 10
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->r()V

    .line 11
    iget-object v15, v3, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    .line 12
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Lc/e/a/b/h/b/Zb;->a(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    .line 13
    :cond_0
    iget-boolean v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->h:Z

    if-nez v7, :cond_1

    .line 14
    invoke-virtual {v1, v3}, Lc/e/a/b/h/b/Tb;->d(Lcom/google/android/gms/measurement/internal/zzm;)Lc/e/a/b/h/b/_b;

    return-void

    .line 15
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->m()Lc/e/a/b/h/b/T;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzaj;->a:Ljava/lang/String;

    invoke-virtual {v7, v15, v8}, Lc/e/a/b/h/b/T;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    const-string v14, "_err"

    const/4 v13, 0x0

    const/16 v22, 0x1

    const/4 v12, 0x0

    if-eqz v7, :cond_6

    .line 16
    iget-object v3, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v3

    .line 18
    invoke-static {v15}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 19
    iget-object v5, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v5}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v5

    .line 20
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzaj;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lc/e/a/b/h/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropping blacklisted event. appId"

    .line 21
    invoke-virtual {v3, v6, v4, v5}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->m()Lc/e/a/b/h/b/T;

    move-result-object v3

    invoke-virtual {v3, v15}, Lc/e/a/b/h/b/T;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 23
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->m()Lc/e/a/b/h/b/T;

    move-result-object v3

    invoke-virtual {v3, v15}, Lc/e/a/b/h/b/T;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v13, 0x1

    :cond_3
    if-nez v13, :cond_4

    .line 24
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzaj;->a:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 25
    iget-object v3, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v7

    const/16 v9, 0xb

    .line 26
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzaj;->a:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v10, "_ev"

    move-object v8, v15

    move-object v3, v12

    move v12, v2

    .line 27
    invoke-virtual/range {v7 .. v12}, Lc/e/a/b/h/b/cc;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    move-object v3, v12

    :goto_0
    if-eqz v13, :cond_5

    .line 28
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v2

    invoke-virtual {v2, v15}, Lc/e/a/b/h/b/sc;->b(Ljava/lang/String;)Lc/e/a/b/h/b/_b;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 29
    invoke-virtual {v2}, Lc/e/a/b/h/b/_b;->s()J

    move-result-wide v4

    invoke-virtual {v2}, Lc/e/a/b/h/b/_b;->r()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 30
    iget-object v6, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v6}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object v6

    .line 31
    invoke-interface {v6}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 32
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 33
    sget-object v6, Lc/e/a/b/h/b/k;->N:Lc/e/a/b/h/b/k$a;

    .line 34
    invoke-virtual {v6, v3}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_5

    .line 36
    iget-object v3, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v3

    .line 37
    invoke-virtual {v3}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object v3

    const-string v4, "Fetching config for blacklisted app"

    invoke-virtual {v3, v4}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/Tb;->a(Lc/e/a/b/h/b/_b;)V

    :cond_5
    return-void

    :cond_6
    move-object v11, v12

    .line 39
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v7

    const/4 v12, 0x2

    .line 40
    invoke-virtual {v7, v12}, Lc/e/a/b/h/b/t;->a(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 41
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v7

    .line 42
    invoke-virtual {v7}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v7

    .line 43
    iget-object v8, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v8}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v8

    .line 44
    invoke-virtual {v8, v2}, Lc/e/a/b/h/b/r;->a(Lcom/google/android/gms/measurement/internal/zzaj;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Logging event"

    invoke-virtual {v7, v9, v8}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v7

    invoke-virtual {v7}, Lc/e/a/b/h/b/sc;->v()V

    .line 46
    :try_start_0
    invoke-virtual {v1, v3}, Lc/e/a/b/h/b/Tb;->d(Lcom/google/android/gms/measurement/internal/zzm;)Lc/e/a/b/h/b/_b;

    const-string v7, "_iap"

    .line 47
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzaj;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "ecommerce_purchase"

    if-nez v7, :cond_9

    :try_start_1
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzaj;->a:Ljava/lang/String;

    .line 48
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_1

    :cond_8
    move-wide/from16 v23, v5

    const/4 v6, 0x0

    goto/16 :goto_9

    .line 49
    :cond_9
    :goto_1
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzaj;->b:Lcom/google/android/gms/measurement/internal/zzag;

    const-string v9, "currency"

    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/zzag;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 50
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzaj;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, "value"

    if-eqz v8, :cond_c

    .line 51
    :try_start_2
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzaj;->b:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzag;->h(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    const-wide v18, 0x412e848000000000L    # 1000000.0

    mul-double v16, v16, v18

    const-wide/16 v20, 0x0

    cmpl-double v8, v16, v20

    if-nez v8, :cond_a

    .line 52
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzaj;->b:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzag;->f(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v16, v8, v18

    :cond_a
    const-wide/high16 v8, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v10, v16, v8

    if-gtz v10, :cond_b

    const-wide/high16 v8, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v10, v16, v8

    if-ltz v10, :cond_b

    .line 53
    :try_start_3
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    goto :goto_2

    .line 54
    :cond_b
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v7

    .line 55
    invoke-virtual {v7}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v7

    const-string v8, "Data lost. Currency value is too big. appId"

    .line 56
    invoke-static {v15}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 57
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 58
    invoke-virtual {v7, v8, v9, v10}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide/from16 v23, v5

    const/4 v6, 0x0

    goto/16 :goto_8

    .line 59
    :cond_c
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzaj;->b:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzag;->f(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 60
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 61
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "[A-Z]{3}"

    .line 62
    invoke-virtual {v7, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    const-string v10, "_ltv_"

    .line 63
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_d

    invoke-virtual {v10, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_d
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    move-object v10, v7

    .line 64
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v7

    invoke-virtual {v7, v15, v10}, Lc/e/a/b/h/b/sc;->d(Ljava/lang/String;Ljava/lang/String;)Lc/e/a/b/h/b/bc;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 65
    iget-object v11, v7, Lc/e/a/b/h/b/bc;->e:Ljava/lang/Object;

    instance-of v11, v11, Ljava/lang/Long;

    if-nez v11, :cond_e

    goto :goto_4

    .line 66
    :cond_e
    iget-object v7, v7, Lc/e/a/b/h/b/bc;->e:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 67
    new-instance v19, Lc/e/a/b/h/b/bc;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzaj;->c:Ljava/lang/String;

    .line 68
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object v7

    .line 69
    invoke-interface {v7}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v20

    add-long v17, v17, v8

    .line 70
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v7, v19

    move-object v8, v15

    move-object v9, v11

    move-wide/from16 v23, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-wide/from16 v11, v20

    const/4 v6, 0x0

    move-object/from16 v13, v17

    invoke-direct/range {v7 .. v13}, Lc/e/a/b/h/b/bc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v5, v19

    goto :goto_6

    :cond_f
    :goto_4
    move-wide/from16 v23, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 71
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v7

    .line 72
    iget-object v11, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v11}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v11

    .line 73
    sget-object v12, Lc/e/a/b/h/b/k;->S:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v11, v15, v12}, Lc/e/a/b/h/b/pc;->b(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    .line 74
    invoke-static {v15}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    invoke-virtual {v7}, Lc/e/a/b/h/b/ua;->l()V

    .line 76
    invoke-virtual {v7}, Lc/e/a/b/h/b/Sb;->s()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    :try_start_4
    invoke-virtual {v7}, Lc/e/a/b/h/b/sc;->x()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-string v13, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v5, 0x3

    .line 78
    new-array v5, v5, [Ljava/lang/String;

    aput-object v15, v5, v6

    aput-object v15, v5, v22

    .line 79
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x2

    aput-object v11, v5, v16

    .line 80
    invoke-virtual {v12, v13, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 81
    :try_start_5
    invoke-virtual {v7}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v7

    invoke-virtual {v7}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v7

    const-string v11, "Error pruning currencies. appId"

    invoke-static {v15}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7, v11, v12, v5}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    :goto_5
    new-instance v5, Lc/e/a/b/h/b/bc;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzaj;->c:Ljava/lang/String;

    .line 83
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object v7

    .line 84
    invoke-interface {v7}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object v7, v5

    move-object v8, v15

    move-object v9, v11

    move-wide v11, v12

    move-object/from16 v13, v16

    invoke-direct/range {v7 .. v13}, Lc/e/a/b/h/b/bc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 85
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v7

    invoke-virtual {v7, v5}, Lc/e/a/b/h/b/sc;->a(Lc/e/a/b/h/b/bc;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 86
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v7

    .line 87
    invoke-virtual {v7}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v7

    const-string v8, "Too many unique user properties are set. Ignoring user property. appId"

    .line 88
    invoke-static {v15}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 89
    iget-object v10, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v10}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v10

    .line 90
    iget-object v11, v5, Lc/e/a/b/h/b/bc;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v5, v5, Lc/e/a/b/h/b/bc;->e:Ljava/lang/Object;

    .line 91
    invoke-virtual {v7, v8, v9, v10, v5}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    iget-object v5, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v5}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v7

    const/16 v9, 0x9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v15

    .line 93
    invoke-virtual/range {v7 .. v12}, Lc/e/a/b/h/b/cc;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_7

    :cond_10
    move-wide/from16 v23, v5

    const/4 v6, 0x0

    :cond_11
    :goto_7
    const/4 v13, 0x1

    :goto_8
    if-nez v13, :cond_12

    .line 94
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/sc;->y()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 95
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/sc;->w()V

    return-void

    .line 96
    :cond_12
    :goto_9
    :try_start_6
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzaj;->a:Ljava/lang/String;

    invoke-static {v5}, Lc/e/a/b/h/b/cc;->a(Ljava/lang/String;)Z

    move-result v5

    .line 97
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzaj;->a:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 98
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v7

    .line 99
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->s()J

    move-result-wide v8

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object v10, v15

    move v12, v5

    move/from16 v14, v16

    move-object/from16 v18, v15

    move/from16 v15, v17

    .line 100
    invoke-virtual/range {v7 .. v15}, Lc/e/a/b/h/b/sc;->a(JLjava/lang/String;ZZZZZ)Lc/e/a/b/h/b/tc;

    move-result-object v7

    .line 101
    iget-wide v8, v7, Lc/e/a/b/h/b/tc;->b:J

    .line 102
    sget-object v10, Lc/e/a/b/h/b/k;->y:Lc/e/a/b/h/b/k$a;

    const/4 v11, 0x0

    .line 103
    invoke-virtual {v10, v11}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 104
    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    cmp-long v17, v8, v14

    if-lez v17, :cond_14

    .line 105
    rem-long/2addr v8, v10

    cmp-long v2, v8, v12

    if-nez v2, :cond_13

    .line 106
    iget-object v2, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v2}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    .line 107
    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    .line 108
    invoke-static/range {v18 .. v18}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v7, Lc/e/a/b/h/b/tc;->b:J

    .line 109
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 110
    invoke-virtual {v2, v3, v4, v5}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/sc;->y()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 112
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/sc;->w()V

    return-void

    :cond_14
    if-eqz v5, :cond_16

    .line 113
    :try_start_7
    iget-wide v8, v7, Lc/e/a/b/h/b/tc;->a:J

    .line 114
    sget-object v6, Lc/e/a/b/h/b/k;->A:Lc/e/a/b/h/b/k$a;

    const/4 v12, 0x0

    .line 115
    invoke-virtual {v6, v12}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 116
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v12, v6

    sub-long/2addr v8, v12

    cmp-long v6, v8, v14

    if-lez v6, :cond_16

    .line 117
    rem-long/2addr v8, v10

    const-wide/16 v3, 0x1

    cmp-long v5, v8, v3

    if-nez v5, :cond_15

    .line 118
    iget-object v3, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v3

    .line 119
    invoke-virtual {v3}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    .line 120
    invoke-static/range {v18 .. v18}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v7, Lc/e/a/b/h/b/tc;->a:J

    .line 121
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 122
    invoke-virtual {v3, v4, v5, v6}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    :cond_15
    iget-object v3, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v7

    const/16 v9, 0x10

    const-string v10, "_ev"

    .line 124
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzaj;->a:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v8, v18

    .line 125
    invoke-virtual/range {v7 .. v12}, Lc/e/a/b/h/b/cc;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/sc;->y()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 127
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/sc;->w()V

    return-void

    :cond_16
    if-eqz v16, :cond_18

    .line 128
    :try_start_8
    iget-wide v8, v7, Lc/e/a/b/h/b/tc;->d:J

    .line 129
    iget-object v6, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v6}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v6

    .line 130
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    .line 131
    sget-object v11, Lc/e/a/b/h/b/k;->z:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v6, v10, v11}, Lc/e/a/b/h/b/pc;->b(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)I

    move-result v6

    const v10, 0xf4240

    .line 132
    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v12, 0x0

    .line 133
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v10, v6

    sub-long/2addr v8, v10

    cmp-long v6, v8, v14

    if-lez v6, :cond_19

    const-wide/16 v10, 0x1

    cmp-long v2, v8, v10

    if-nez v2, :cond_17

    .line 134
    iget-object v2, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v2}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    .line 136
    invoke-static/range {v18 .. v18}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v7, Lc/e/a/b/h/b/tc;->d:J

    .line 137
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 138
    invoke-virtual {v2, v3, v4, v5}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/sc;->y()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 140
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/sc;->w()V

    return-void

    :cond_18
    const/4 v12, 0x0

    .line 141
    :cond_19
    :try_start_9
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzaj;->b:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzag;->x()Landroid/os/Bundle;

    move-result-object v6

    .line 142
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v7

    const-string v8, "_o"

    .line 143
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzaj;->c:Ljava/lang/String;

    invoke-virtual {v7, v6, v8, v9}, Lc/e/a/b/h/b/cc;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v7

    move-object/from16 v13, v18

    .line 145
    invoke-virtual {v7, v13}, Lc/e/a/b/h/b/cc;->h(Ljava/lang/String;)Z

    move-result v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v11, "_r"

    if-eqz v7, :cond_1a

    .line 146
    :try_start_a
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v7

    const-string v8, "_dbg"

    const-wide/16 v9, 0x1

    .line 147
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7, v6, v8, v12}, Lc/e/a/b/h/b/cc;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v7

    .line 149
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v6, v11, v8}, Lc/e/a/b/h/b/cc;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    :cond_1a
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzaj;->a:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const-string v8, "_sno"

    if-eqz v7, :cond_1b

    .line 151
    :try_start_b
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v7

    .line 152
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lc/e/a/b/h/b/pc;->u(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 153
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v7

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    .line 154
    invoke-virtual {v7, v9, v8}, Lc/e/a/b/h/b/sc;->d(Ljava/lang/String;Ljava/lang/String;)Lc/e/a/b/h/b/bc;

    move-result-object v7

    if-eqz v7, :cond_1b

    .line 155
    iget-object v9, v7, Lc/e/a/b/h/b/bc;->e:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/Long;

    if-eqz v9, :cond_1b

    .line 156
    iget-object v9, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v9}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v9

    .line 157
    iget-object v7, v7, Lc/e/a/b/h/b/bc;->e:Ljava/lang/Object;

    invoke-virtual {v9, v6, v8, v7}, Lc/e/a/b/h/b/cc;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    :cond_1b
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzaj;->a:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 159
    iget-object v4, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v4}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v4

    .line 160
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    sget-object v9, Lc/e/a/b/h/b/k;->ua:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v4, v7, v9}, Lc/e/a/b/h/b/pc;->e(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 161
    iget-object v4, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v4}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v4

    .line 162
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lc/e/a/b/h/b/pc;->u(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 163
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzga;

    const/4 v7, 0x0

    invoke-direct {v4, v8, v14, v15, v7}, Lcom/google/android/gms/measurement/internal/zzga;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 164
    invoke-virtual {v1, v4, v3}, Lc/e/a/b/h/b/Tb;->b(Lcom/google/android/gms/measurement/internal/zzga;Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 165
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v4

    invoke-virtual {v4, v13}, Lc/e/a/b/h/b/sc;->c(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v4, v7, v14

    if-lez v4, :cond_1d

    .line 166
    iget-object v4, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v4}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v4

    .line 167
    invoke-virtual {v4}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v4

    const-string v9, "Data lost. Too many events stored on disk, deleted. appId"

    .line 168
    invoke-static {v13}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 169
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 170
    invoke-virtual {v4, v9, v10, v7}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    :cond_1d
    new-instance v4, Lc/e/a/b/h/b/f;

    iget-object v8, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzaj;->c:Ljava/lang/String;

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzaj;->a:Ljava/lang/String;

    iget-wide v14, v2, Lcom/google/android/gms/measurement/internal/zzaj;->d:J

    const-wide/16 v18, 0x0

    move-object v7, v4

    move-object v10, v13

    move-object v2, v11

    move-object v11, v12

    move-object/from16 p1, v2

    move-object v2, v13

    const/16 v25, 0x0

    move-wide v12, v14

    move-wide/from16 v14, v18

    move-object/from16 v16, v6

    invoke-direct/range {v7 .. v16}, Lc/e/a/b/h/b/f;-><init>(Lc/e/a/b/h/b/Y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v6

    iget-object v7, v4, Lc/e/a/b/h/b/f;->b:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Lc/e/a/b/h/b/sc;->b(Ljava/lang/String;Ljava/lang/String;)Lc/e/a/b/h/b/g;

    move-result-object v6

    if-nez v6, :cond_1f

    .line 173
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v6

    invoke-virtual {v6, v2}, Lc/e/a/b/h/b/sc;->f(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    cmp-long v10, v6, v8

    if-ltz v10, :cond_1e

    if-eqz v5, :cond_1e

    .line 174
    iget-object v3, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v3

    .line 175
    invoke-virtual {v3}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v3

    const-string v5, "Too many event names used, ignoring event. appId, name, supported count"

    .line 176
    invoke-static {v2}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 177
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v7

    .line 178
    iget-object v4, v4, Lc/e/a/b/h/b/f;->b:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lc/e/a/b/h/b/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x1f4

    .line 179
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 180
    invoke-virtual {v3, v5, v6, v4, v7}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    iget-object v3, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v7

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v2

    .line 182
    invoke-virtual/range {v7 .. v12}, Lc/e/a/b/h/b/cc;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 183
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/sc;->w()V

    return-void

    .line 184
    :cond_1e
    :try_start_c
    new-instance v5, Lc/e/a/b/h/b/g;

    iget-object v9, v4, Lc/e/a/b/h/b/f;->b:Ljava/lang/String;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    iget-wide v14, v4, Lc/e/a/b/h/b/f;->d:J

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v7, v5

    move-object v8, v2

    invoke-direct/range {v7 .. v21}, Lc/e/a/b/h/b/g;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_a

    .line 185
    :cond_1f
    iget-object v2, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    iget-wide v7, v6, Lc/e/a/b/h/b/g;->e:J

    invoke-virtual {v4, v2, v7, v8}, Lc/e/a/b/h/b/f;->a(Lc/e/a/b/h/b/Y;J)Lc/e/a/b/h/b/f;

    move-result-object v4

    .line 186
    iget-wide v7, v4, Lc/e/a/b/h/b/f;->d:J

    invoke-virtual {v6, v7, v8}, Lc/e/a/b/h/b/g;->a(J)Lc/e/a/b/h/b/g;

    move-result-object v5

    .line 187
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v2

    invoke-virtual {v2, v5}, Lc/e/a/b/h/b/sc;->a(Lc/e/a/b/h/b/g;)V

    .line 188
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 189
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->r()V

    .line 190
    invoke-static {v4}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static/range {p2 .. p2}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v2, v4, Lc/e/a/b/h/b/f;->a:Ljava/lang/String;

    invoke-static {v2}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    iget-object v2, v4, Lc/e/a/b/h/b/f;->a:Ljava/lang/String;

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lc/e/a/b/d/d/r;->a(Z)V

    .line 194
    new-instance v2, Lc/e/a/b/g/f/da;

    invoke-direct {v2}, Lc/e/a/b/g/f/da;-><init>()V

    .line 195
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Lc/e/a/b/g/f/da;->d:Ljava/lang/Integer;

    const-string v5, "android"

    .line 196
    iput-object v5, v2, Lc/e/a/b/g/f/da;->l:Ljava/lang/String;

    .line 197
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    iput-object v5, v2, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    .line 198
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzm;->d:Ljava/lang/String;

    iput-object v5, v2, Lc/e/a/b/g/f/da;->q:Ljava/lang/String;

    .line 199
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzm;->c:Ljava/lang/String;

    iput-object v5, v2, Lc/e/a/b/g/f/da;->s:Ljava/lang/String;

    .line 200
    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzm;->j:J

    const-wide/32 v7, -0x80000000

    cmp-long v9, v5, v7

    if-nez v9, :cond_20

    const/4 v12, 0x0

    goto :goto_b

    :cond_20
    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzm;->j:J

    long-to-int v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_b
    iput-object v12, v2, Lc/e/a/b/g/f/da;->F:Ljava/lang/Integer;

    .line 201
    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzm;->e:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v2, Lc/e/a/b/g/f/da;->t:Ljava/lang/Long;

    .line 202
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzm;->b:Ljava/lang/String;

    iput-object v5, v2, Lc/e/a/b/g/f/da;->B:Ljava/lang/String;

    .line 203
    iget-object v5, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v5}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v5

    .line 204
    sget-object v6, Lc/e/a/b/h/b/k;->Ga:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v5, v6}, Lc/e/a/b/h/b/pc;->a(Lc/e/a/b/h/b/k$a;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 205
    iget-object v5, v2, Lc/e/a/b/g/f/da;->B:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 206
    :cond_21
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzm;->r:Ljava/lang/String;

    iput-object v5, v2, Lc/e/a/b/g/f/da;->O:Ljava/lang/String;

    .line 207
    :cond_22
    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzm;->f:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_23

    const/4 v12, 0x0

    goto :goto_c

    :cond_23
    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzm;->f:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    :goto_c
    iput-object v12, v2, Lc/e/a/b/g/f/da;->y:Ljava/lang/Long;

    .line 208
    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzm;->t:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v2, Lc/e/a/b/g/f/da;->R:Ljava/lang/Long;

    .line 209
    iget-object v5, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v5}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v5

    .line 210
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    sget-object v9, Lc/e/a/b/h/b/k;->Ba:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v5, v6, v9}, Lc/e/a/b/h/b/pc;->e(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 211
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    move-result-object v5

    invoke-virtual {v5}, Lc/e/a/b/h/b/Zb;->v()[I

    move-result-object v5

    iput-object v5, v2, Lc/e/a/b/g/f/da;->Q:[I

    .line 212
    :cond_24
    iget-object v5, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v5}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v5

    .line 213
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lc/e/a/b/h/b/F;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_25

    .line 214
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_25

    .line 215
    iget-boolean v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->o:Z

    if-eqz v6, :cond_28

    .line 216
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iput-object v6, v2, Lc/e/a/b/g/f/da;->v:Ljava/lang/String;

    .line 217
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    iput-object v5, v2, Lc/e/a/b/g/f/da;->w:Ljava/lang/Boolean;

    goto :goto_e

    .line 218
    :cond_25
    iget-object v5, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v5}, Lc/e/a/b/h/b/Y;->H()Lc/e/a/b/h/b/e;

    move-result-object v5

    .line 219
    iget-object v6, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v6}, Lc/e/a/b/h/b/Y;->b()Landroid/content/Context;

    move-result-object v6

    .line 220
    invoke-virtual {v5, v6}, Lc/e/a/b/h/b/e;->a(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_28

    iget-boolean v5, v3, Lcom/google/android/gms/measurement/internal/zzm;->p:Z

    if-eqz v5, :cond_28

    .line 221
    iget-object v5, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v5}, Lc/e/a/b/h/b/Y;->b()Landroid/content/Context;

    move-result-object v5

    .line 222
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_26

    .line 223
    iget-object v5, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v5}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v5

    .line 224
    invoke-virtual {v5}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v5

    const-string v6, "null secure ID. appId"

    iget-object v9, v2, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    invoke-static {v9}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "null"

    goto :goto_d

    .line 225
    :cond_26
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 226
    iget-object v6, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v6}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v6

    .line 227
    invoke-virtual {v6}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v6

    const-string v9, "empty secure ID. appId"

    iget-object v10, v2, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    invoke-static {v10}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    :cond_27
    :goto_d
    iput-object v5, v2, Lc/e/a/b/g/f/da;->I:Ljava/lang/String;

    .line 229
    :cond_28
    :goto_e
    iget-object v5, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v5}, Lc/e/a/b/h/b/Y;->H()Lc/e/a/b/h/b/e;

    move-result-object v5

    .line 230
    invoke-virtual {v5}, Lc/e/a/b/h/b/va;->o()V

    .line 231
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 232
    iput-object v5, v2, Lc/e/a/b/g/f/da;->n:Ljava/lang/String;

    .line 233
    iget-object v5, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v5}, Lc/e/a/b/h/b/Y;->H()Lc/e/a/b/h/b/e;

    move-result-object v5

    .line 234
    invoke-virtual {v5}, Lc/e/a/b/h/b/va;->o()V

    .line 235
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 236
    iput-object v5, v2, Lc/e/a/b/g/f/da;->m:Ljava/lang/String;

    .line 237
    iget-object v5, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v5}, Lc/e/a/b/h/b/Y;->H()Lc/e/a/b/h/b/e;

    move-result-object v5

    .line 238
    invoke-virtual {v5}, Lc/e/a/b/h/b/e;->t()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Lc/e/a/b/g/f/da;->p:Ljava/lang/Integer;

    .line 239
    iget-object v5, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v5}, Lc/e/a/b/h/b/Y;->H()Lc/e/a/b/h/b/e;

    move-result-object v5

    .line 240
    invoke-virtual {v5}, Lc/e/a/b/h/b/e;->u()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lc/e/a/b/g/f/da;->o:Ljava/lang/String;

    const/4 v5, 0x0

    .line 241
    iput-object v5, v2, Lc/e/a/b/g/f/da;->u:Ljava/lang/Long;

    .line 242
    iput-object v5, v2, Lc/e/a/b/g/f/da;->g:Ljava/lang/Long;

    .line 243
    iput-object v5, v2, Lc/e/a/b/g/f/da;->h:Ljava/lang/Long;

    .line 244
    iput-object v5, v2, Lc/e/a/b/g/f/da;->i:Ljava/lang/Long;

    .line 245
    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzm;->l:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v2, Lc/e/a/b/g/f/da;->K:Ljava/lang/Long;

    .line 246
    iget-object v5, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v5}, Lc/e/a/b/h/b/Y;->f()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-static {}, Lc/e/a/b/h/b/pc;->v()Z

    move-result v5

    if-eqz v5, :cond_29

    const/4 v5, 0x0

    .line 247
    iput-object v5, v2, Lc/e/a/b/g/f/da;->L:Ljava/lang/String;

    .line 248
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v5

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lc/e/a/b/h/b/sc;->b(Ljava/lang/String;)Lc/e/a/b/h/b/_b;

    move-result-object v5

    if-nez v5, :cond_2a

    .line 249
    new-instance v5, Lc/e/a/b/h/b/_b;

    iget-object v6, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-direct {v5, v6, v9}, Lc/e/a/b/h/b/_b;-><init>(Lc/e/a/b/h/b/Y;Ljava/lang/String;)V

    .line 250
    iget-object v6, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v6}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v6

    .line 251
    invoke-virtual {v6}, Lc/e/a/b/h/b/cc;->x()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc/e/a/b/h/b/_b;->a(Ljava/lang/String;)V

    .line 252
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->k:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lc/e/a/b/h/b/_b;->e(Ljava/lang/String;)V

    .line 253
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lc/e/a/b/h/b/_b;->b(Ljava/lang/String;)V

    .line 254
    iget-object v6, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v6}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v6

    .line 255
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lc/e/a/b/h/b/F;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 256
    invoke-virtual {v5, v6}, Lc/e/a/b/h/b/_b;->d(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v5, v7, v8}, Lc/e/a/b/h/b/_b;->g(J)V

    .line 258
    invoke-virtual {v5, v7, v8}, Lc/e/a/b/h/b/_b;->a(J)V

    .line 259
    invoke-virtual {v5, v7, v8}, Lc/e/a/b/h/b/_b;->b(J)V

    .line 260
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lc/e/a/b/h/b/_b;->f(Ljava/lang/String;)V

    .line 261
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzm;->j:J

    invoke-virtual {v5, v9, v10}, Lc/e/a/b/h/b/_b;->c(J)V

    .line 262
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lc/e/a/b/h/b/_b;->g(Ljava/lang/String;)V

    .line 263
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzm;->e:J

    invoke-virtual {v5, v9, v10}, Lc/e/a/b/h/b/_b;->d(J)V

    .line 264
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzm;->f:J

    invoke-virtual {v5, v9, v10}, Lc/e/a/b/h/b/_b;->e(J)V

    .line 265
    iget-boolean v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->h:Z

    invoke-virtual {v5, v6}, Lc/e/a/b/h/b/_b;->a(Z)V

    .line 266
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzm;->l:J

    invoke-virtual {v5, v9, v10}, Lc/e/a/b/h/b/_b;->p(J)V

    .line 267
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzm;->t:J

    invoke-virtual {v5, v9, v10}, Lc/e/a/b/h/b/_b;->f(J)V

    .line 268
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v6

    invoke-virtual {v6, v5}, Lc/e/a/b/h/b/sc;->a(Lc/e/a/b/h/b/_b;)V

    .line 269
    :cond_2a
    invoke-virtual {v5}, Lc/e/a/b/h/b/_b;->a()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lc/e/a/b/g/f/da;->x:Ljava/lang/String;

    .line 270
    invoke-virtual {v5}, Lc/e/a/b/h/b/_b;->b()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lc/e/a/b/g/f/da;->E:Ljava/lang/String;

    .line 271
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v5

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lc/e/a/b/h/b/sc;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 272
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lc/e/a/b/g/f/N;

    iput-object v5, v2, Lc/e/a/b/g/f/da;->f:[Lc/e/a/b/g/f/N;

    const/4 v5, 0x0

    .line 273
    :goto_f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2b

    .line 274
    invoke-static {}, Lc/e/a/b/g/f/N;->D()Lc/e/a/b/g/f/N$a;

    move-result-object v6

    .line 275
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/e/a/b/h/b/bc;

    iget-object v9, v9, Lc/e/a/b/h/b/bc;->c:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lc/e/a/b/g/f/N$a;->a(Ljava/lang/String;)Lc/e/a/b/g/f/N$a;

    .line 276
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/e/a/b/h/b/bc;

    iget-wide v9, v9, Lc/e/a/b/h/b/bc;->d:J

    invoke-virtual {v6, v9, v10}, Lc/e/a/b/g/f/N$a;->a(J)Lc/e/a/b/g/f/N$a;

    .line 277
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    move-result-object v9

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc/e/a/b/h/b/bc;

    iget-object v10, v10, Lc/e/a/b/h/b/bc;->e:Ljava/lang/Object;

    invoke-virtual {v9, v6, v10}, Lc/e/a/b/h/b/Zb;->a(Lc/e/a/b/g/f/N$a;Ljava/lang/Object;)V

    .line 278
    iget-object v9, v2, Lc/e/a/b/g/f/da;->f:[Lc/e/a/b/g/f/N;

    invoke-virtual {v6}, Lc/e/a/b/g/f/nb$a;->o()Lc/e/a/b/g/f/Sb;

    move-result-object v6

    check-cast v6, Lc/e/a/b/g/f/nb;

    check-cast v6, Lc/e/a/b/g/f/N;

    aput-object v6, v9, v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 279
    :cond_2b
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lc/e/a/b/h/b/sc;->a(Lc/e/a/b/g/f/da;)J

    move-result-wide v2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 280
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v5

    .line 281
    iget-object v6, v4, Lc/e/a/b/h/b/f;->f:Lcom/google/android/gms/measurement/internal/zzag;

    if-eqz v6, :cond_2e

    .line 282
    iget-object v6, v4, Lc/e/a/b/h/b/f;->f:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzag;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v10, p1

    .line 283
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2c

    :goto_11
    const/4 v6, 0x1

    goto :goto_12

    :cond_2c
    move-object/from16 p1, v10

    goto :goto_10

    .line 284
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->m()Lc/e/a/b/h/b/T;

    move-result-object v6

    iget-object v9, v4, Lc/e/a/b/h/b/f;->a:Ljava/lang/String;

    iget-object v10, v4, Lc/e/a/b/h/b/f;->b:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Lc/e/a/b/h/b/T;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 285
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v9

    .line 286
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->s()J

    move-result-wide v10

    iget-object v12, v4, Lc/e/a/b/h/b/f;->a:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v9 .. v17}, Lc/e/a/b/h/b/sc;->a(JLjava/lang/String;ZZZZZ)Lc/e/a/b/h/b/tc;

    move-result-object v9

    if-eqz v6, :cond_2e

    .line 287
    iget-wide v9, v9, Lc/e/a/b/h/b/tc;->e:J

    .line 288
    iget-object v6, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v6}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v6

    .line 289
    iget-object v11, v4, Lc/e/a/b/h/b/f;->a:Ljava/lang/String;

    invoke-virtual {v6, v11}, Lc/e/a/b/h/b/pc;->d(Ljava/lang/String;)I

    move-result v6

    int-to-long v11, v6

    cmp-long v6, v9, v11

    if-gez v6, :cond_2e

    goto :goto_11

    :cond_2e
    const/4 v6, 0x0

    .line 290
    :goto_12
    invoke-virtual {v5, v4, v2, v3, v6}, Lc/e/a/b/h/b/sc;->a(Lc/e/a/b/h/b/f;JZ)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 291
    iput-wide v7, v1, Lc/e/a/b/h/b/Tb;->n:J

    goto :goto_13

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 292
    iget-object v5, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v5}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v5

    .line 293
    invoke-virtual {v5}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v5

    const-string v6, "Data loss. Failed to insert raw event metadata. appId"

    iget-object v2, v2, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    .line 294
    invoke-static {v2}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 295
    invoke-virtual {v5, v6, v2, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 296
    :cond_2f
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/sc;->y()V

    .line 297
    iget-object v2, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v2}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    const/4 v3, 0x2

    .line 298
    invoke-virtual {v2, v3}, Lc/e/a/b/h/b/t;->a(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 299
    iget-object v2, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v2}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    .line 300
    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v2

    const-string v3, "Event recorded"

    .line 301
    iget-object v5, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v5}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v5

    .line 302
    invoke-virtual {v5, v4}, Lc/e/a/b/h/b/r;->a(Lc/e/a/b/h/b/f;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 303
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/sc;->w()V

    .line 304
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->v()V

    .line 305
    iget-object v2, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v2}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v2

    .line 306
    invoke-virtual {v2}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v2

    .line 307
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v23

    const-wide/32 v5, 0x7a120

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Background event processing time, ms"

    .line 308
    invoke-virtual {v2, v4, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 309
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v3

    invoke-virtual {v3}, Lc/e/a/b/h/b/sc;->w()V

    goto :goto_15

    :goto_14
    throw v2

    :goto_15
    goto :goto_14
.end method

.method public final b(Lcom/google/android/gms/measurement/internal/zzga;Lcom/google/android/gms/measurement/internal/zzm;)V
    .locals 7

    .line 320
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 321
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->r()V

    .line 322
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 323
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->h:Z

    if-nez v0, :cond_1

    .line 324
    invoke-virtual {p0, p2}, Lc/e/a/b/h/b/Tb;->d(Lcom/google/android/gms/measurement/internal/zzm;)Lc/e/a/b/h/b/_b;

    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v0

    .line 326
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    sget-object v2, Lc/e/a/b/h/b/k;->ya:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v0, v1, v2}, Lc/e/a/b/h/b/pc;->e(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result v0

    const-string v1, "User property removed"

    const-string v2, "Removing user property"

    if-eqz v0, :cond_4

    .line 327
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    const-string v3, "_npa"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->s:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 328
    iget-object p1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p1

    .line 329
    invoke-virtual {p1}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object p1

    const-string v0, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 330
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzga;

    .line 331
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object v0

    .line 332
    invoke-interface {v0}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v3

    .line 333
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v2, "_npa"

    const-string v6, "auto"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzga;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0, p1, p2}, Lc/e/a/b/h/b/Tb;->a(Lcom/google/android/gms/measurement/internal/zzga;Lcom/google/android/gms/measurement/internal/zzm;)V

    return-void

    .line 335
    :cond_3
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object v0

    .line 337
    iget-object v3, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v3

    .line 338
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    invoke-virtual {v0, v2, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/sc;->v()V

    .line 341
    :try_start_0
    invoke-virtual {p0, p2}, Lc/e/a/b/h/b/Tb;->d(Lcom/google/android/gms/measurement/internal/zzm;)Lc/e/a/b/h/b/_b;

    .line 342
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Lc/e/a/b/h/b/sc;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p2

    invoke-virtual {p2}, Lc/e/a/b/h/b/sc;->y()V

    .line 344
    iget-object p2, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p2}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p2

    .line 345
    invoke-virtual {p2}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object p2

    .line 346
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v0

    .line 347
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 348
    invoke-virtual {p2, v1, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/sc;->w()V

    return-void

    :catchall_0
    move-exception p1

    .line 350
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p2

    invoke-virtual {p2}, Lc/e/a/b/h/b/sc;->w()V

    throw p1

    .line 351
    :cond_4
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object v0

    .line 353
    iget-object v3, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v3

    .line 354
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 355
    invoke-virtual {v0, v2, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/sc;->v()V

    .line 357
    :try_start_1
    invoke-virtual {p0, p2}, Lc/e/a/b/h/b/Tb;->d(Lcom/google/android/gms/measurement/internal/zzm;)Lc/e/a/b/h/b/_b;

    .line 358
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Lc/e/a/b/h/b/sc;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p2

    invoke-virtual {p2}, Lc/e/a/b/h/b/sc;->y()V

    .line 360
    iget-object p2, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p2}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p2

    .line 361
    invoke-virtual {p2}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object p2

    .line 362
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v0

    .line 363
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 364
    invoke-virtual {p2, v1, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 365
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/sc;->w()V

    return-void

    :catchall_1
    move-exception p1

    .line 366
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p2

    invoke-virtual {p2}, Lc/e/a/b/h/b/sc;->w()V

    throw p1
.end method

.method public final b(Lcom/google/android/gms/measurement/internal/zzm;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->r()V

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-static {v0}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-virtual {p0, p1}, Lc/e/a/b/h/b/Tb;->d(Lcom/google/android/gms/measurement/internal/zzm;)Lc/e/a/b/h/b/_b;

    return-void
.end method

.method public final b(Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 1

    .line 368
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/Tb;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p0, p1, v0}, Lc/e/a/b/h/b/Tb;->b(Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzm;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/measurement/internal/zzr;Lcom/google/android/gms/measurement/internal/zzm;)V
    .locals 9

    .line 370
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->a:Ljava/lang/String;

    invoke-static {v0}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 372
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-static {v0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    invoke-static {v0}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 374
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 375
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->r()V

    .line 376
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 377
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->h:Z

    if-nez v0, :cond_1

    .line 378
    invoke-virtual {p0, p2}, Lc/e/a/b/h/b/Tb;->d(Lcom/google/android/gms/measurement/internal/zzm;)Lc/e/a/b/h/b/_b;

    return-void

    .line 379
    :cond_1
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/sc;->v()V

    .line 380
    :try_start_0
    invoke-virtual {p0, p2}, Lc/e/a/b/h/b/Tb;->d(Lcom/google/android/gms/measurement/internal/zzm;)Lc/e/a/b/h/b/_b;

    .line 381
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc/e/a/b/h/b/sc;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzr;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 382
    iget-object v1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 383
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "Removing conditional user property"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzr;->a:Ljava/lang/String;

    .line 384
    iget-object v4, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v4}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v4

    .line 385
    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 386
    invoke-virtual {v1, v2, v3, v4}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 387
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzr;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lc/e/a/b/h/b/sc;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzr;->e:Z

    if-eqz v1, :cond_2

    .line 389
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzr;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lc/e/a/b/h/b/sc;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->k:Lcom/google/android/gms/measurement/internal/zzaj;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 391
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzr;->k:Lcom/google/android/gms/measurement/internal/zzaj;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzaj;->b:Lcom/google/android/gms/measurement/internal/zzag;

    if-eqz v2, :cond_3

    .line 392
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->k:Lcom/google/android/gms/measurement/internal/zzaj;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzaj;->b:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzag;->x()Landroid/os/Bundle;

    move-result-object v1

    :cond_3
    move-object v3, v1

    .line 393
    iget-object v1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v1

    .line 394
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzr;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzr;->k:Lcom/google/android/gms/measurement/internal/zzaj;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzaj;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzr;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzr;->k:Lcom/google/android/gms/measurement/internal/zzaj;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzaj;->d:J

    const/4 p1, 0x1

    const/4 v8, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    move-wide v5, v6

    move v7, p1

    .line 395
    invoke-virtual/range {v0 .. v8}, Lc/e/a/b/h/b/cc;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object p1

    .line 396
    invoke-virtual {p0, p1, p2}, Lc/e/a/b/h/b/Tb;->b(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_0

    .line 397
    :cond_4
    iget-object p2, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {p2}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object p2

    .line 398
    invoke-virtual {p2}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzr;->a:Ljava/lang/String;

    .line 399
    invoke-static {v1}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 400
    iget-object v2, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v2}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v2

    .line 401
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzr;->c:Lcom/google/android/gms/measurement/internal/zzga;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzga;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lc/e/a/b/h/b/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 402
    invoke-virtual {p2, v0, v1, p1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 403
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/sc;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p1

    invoke-virtual {p1}, Lc/e/a/b/h/b/sc;->w()V

    return-void

    :catchall_0
    move-exception p1

    .line 405
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p2

    invoke-virtual {p2}, Lc/e/a/b/h/b/sc;->w()V

    throw p1
.end method

.method public final c()Lc/e/a/b/d/g/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/google/android/gms/measurement/internal/zzm;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "_pfo"

    const-string v6, "_uwa"

    const-string v0, "app_id=?"

    .line 2
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->r()V

    .line 4
    invoke-static/range {p1 .. p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-static {v7}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzm;->b:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzm;->r:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lc/e/a/b/h/b/sc;->b(Ljava/lang/String;)Lc/e/a/b/h/b/_b;

    move-result-object v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_1

    .line 8
    invoke-virtual {v7}, Lc/e/a/b/h/b/_b;->c()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzm;->b:Ljava/lang/String;

    .line 9
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 10
    invoke-virtual {v7, v8, v9}, Lc/e/a/b/h/b/_b;->h(J)V

    .line 11
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v10

    invoke-virtual {v10, v7}, Lc/e/a/b/h/b/sc;->a(Lc/e/a/b/h/b/_b;)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->m()Lc/e/a/b/h/b/T;

    move-result-object v7

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lc/e/a/b/h/b/T;->e(Ljava/lang/String;)V

    .line 13
    :cond_1
    iget-boolean v7, v2, Lcom/google/android/gms/measurement/internal/zzm;->h:Z

    if-nez v7, :cond_2

    .line 14
    invoke-virtual/range {p0 .. p1}, Lc/e/a/b/h/b/Tb;->d(Lcom/google/android/gms/measurement/internal/zzm;)Lc/e/a/b/h/b/_b;

    return-void

    .line 15
    :cond_2
    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/zzm;->m:J

    cmp-long v7, v10, v8

    if-nez v7, :cond_3

    .line 16
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object v7

    .line 17
    invoke-interface {v7}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v10

    .line 18
    :cond_3
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v7

    .line 19
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    sget-object v13, Lc/e/a/b/h/b/k;->ya:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v7, v12, v13}, Lc/e/a/b/h/b/pc;->e(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 20
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->H()Lc/e/a/b/h/b/e;

    move-result-object v7

    .line 21
    invoke-virtual {v7}, Lc/e/a/b/h/b/e;->w()V

    .line 22
    :cond_4
    iget v7, v2, Lcom/google/android/gms/measurement/internal/zzm;->n:I

    const/4 v15, 0x1

    if-eqz v7, :cond_5

    if-eq v7, v15, :cond_5

    .line 23
    iget-object v12, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v12}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v12

    .line 24
    invoke-virtual {v12}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    .line 25
    invoke-static {v13}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 26
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v14, "Incorrect app type, assuming installed app. appId, appType"

    .line 27
    invoke-virtual {v12, v14, v13, v7}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x0

    .line 28
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v12

    invoke-virtual {v12}, Lc/e/a/b/h/b/sc;->v()V

    .line 29
    :try_start_0
    iget-object v12, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v12}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v12

    .line 30
    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    sget-object v14, Lc/e/a/b/h/b/k;->ya:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v12, v13, v14}, Lc/e/a/b/h/b/pc;->e(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 31
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    const-string v14, "_npa"

    .line 32
    invoke-virtual {v12, v13, v14}, Lc/e/a/b/h/b/sc;->d(Ljava/lang/String;Ljava/lang/String;)Lc/e/a/b/h/b/bc;

    move-result-object v14

    if-eqz v14, :cond_6

    const-string v12, "auto"

    .line 33
    iget-object v13, v14, Lc/e/a/b/h/b/bc;->b:Ljava/lang/String;

    .line 34
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 35
    :cond_6
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzm;->s:Ljava/lang/Boolean;

    if-eqz v12, :cond_9

    .line 36
    new-instance v13, Lcom/google/android/gms/measurement/internal/zzga;

    const-string v19, "_npa"

    .line 37
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzm;->s:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_7

    const-wide/16 v20, 0x1

    goto :goto_0

    :cond_7
    move-wide/from16 v20, v8

    :goto_0
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v21, "auto"

    move-object v12, v13

    move-object v9, v3

    move-object/from16 v18, v4

    move-object v8, v13

    const-wide/16 v3, 0x1

    move-object/from16 v13, v19

    move-object v3, v14

    const/4 v4, 0x1

    move-wide v14, v10

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzga;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_8

    .line 38
    iget-object v3, v3, Lc/e/a/b/h/b/bc;->e:Ljava/lang/Object;

    iget-object v12, v8, Lcom/google/android/gms/measurement/internal/zzga;->d:Ljava/lang/Long;

    .line 39
    invoke-virtual {v3, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 40
    :cond_8
    invoke-virtual {v1, v8, v2}, Lc/e/a/b/h/b/Tb;->a(Lcom/google/android/gms/measurement/internal/zzga;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_1

    :cond_9
    move-object v9, v3

    move-object/from16 v18, v4

    move-object v3, v14

    const/4 v4, 0x1

    if-eqz v3, :cond_b

    .line 41
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzga;

    const-string v13, "_npa"

    const/16 v16, 0x0

    const-string v17, "auto"

    move-object v12, v3

    move-wide v14, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzga;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, v3, v2}, Lc/e/a/b/h/b/Tb;->b(Lcom/google/android/gms/measurement/internal/zzga;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_1

    :cond_a
    move-object v9, v3

    move-object/from16 v18, v4

    const/4 v4, 0x1

    .line 43
    :cond_b
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v3

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lc/e/a/b/h/b/sc;->b(Ljava/lang/String;)Lc/e/a/b/h/b/_b;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 44
    iget-object v12, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v12}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    .line 45
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzm;->b:Ljava/lang/String;

    .line 46
    invoke-virtual {v3}, Lc/e/a/b/h/b/_b;->c()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzm;->r:Ljava/lang/String;

    .line 47
    invoke-virtual {v3}, Lc/e/a/b/h/b/_b;->g()Ljava/lang/String;

    move-result-object v15

    .line 48
    invoke-static {v12, v13, v14, v15}, Lc/e/a/b/h/b/cc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 49
    iget-object v12, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v12}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v12

    .line 50
    invoke-virtual {v12}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v12

    const-string v13, "New GMP App Id passed in. Removing cached database data. appId"

    .line 51
    invoke-virtual {v3}, Lc/e/a/b/h/b/_b;->f()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 52
    invoke-virtual {v12, v13, v14}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v12

    invoke-virtual {v3}, Lc/e/a/b/h/b/_b;->f()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {v12}, Lc/e/a/b/h/b/Sb;->s()V

    .line 55
    invoke-virtual {v12}, Lc/e/a/b/h/b/ua;->l()V

    .line 56
    invoke-static {v3}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :try_start_1
    invoke-virtual {v12}, Lc/e/a/b/h/b/sc;->x()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 58
    new-array v14, v4, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    const-string v8, "events"

    .line 59
    invoke-virtual {v13, v8, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v15

    const-string v15, "user_attributes"

    .line 60
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v8, v15

    const-string v15, "conditional_properties"

    .line 61
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v8, v15

    const-string v15, "apps"

    .line 62
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v8, v15

    const-string v15, "raw_events"

    .line 63
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v8, v15

    const-string v15, "raw_events_metadata"

    .line 64
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v8, v15

    const-string v15, "event_filters"

    .line 65
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v8, v15

    const-string v15, "property_filters"

    .line 66
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v8, v15

    const-string v15, "audience_filter_values"

    .line 67
    invoke-virtual {v13, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v8, v0

    if-lez v8, :cond_c

    .line 68
    invoke-virtual {v12}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v13, "Deleted application data. app, records"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v13, v3, v8}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 69
    :try_start_2
    invoke-virtual {v12}, Lc/e/a/b/h/b/ua;->e()Lc/e/a/b/h/b/t;

    move-result-object v8

    .line 70
    invoke-virtual {v8}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v8

    const-string v12, "Error deleting application data. appId, error"

    .line 71
    invoke-static {v3}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v12, v3, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    :goto_2
    const/4 v3, 0x0

    :cond_d
    if-eqz v3, :cond_f

    .line 72
    invoke-virtual {v3}, Lc/e/a/b/h/b/_b;->l()J

    move-result-wide v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/32 v14, -0x80000000

    const-string v0, "_pv"

    cmp-long v8, v12, v14

    if-eqz v8, :cond_e

    .line 73
    :try_start_3
    invoke-virtual {v3}, Lc/e/a/b/h/b/_b;->l()J

    move-result-wide v12

    iget-wide v14, v2, Lcom/google/android/gms/measurement/internal/zzm;->j:J

    cmp-long v8, v12, v14

    if-eqz v8, :cond_f

    .line 74
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 75
    invoke-virtual {v3}, Lc/e/a/b/h/b/_b;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaj;

    const-string v13, "_au"

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzag;

    invoke-direct {v14, v8}, Lcom/google/android/gms/measurement/internal/zzag;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v0

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag;Ljava/lang/String;J)V

    .line 77
    invoke-virtual {v1, v0, v2}, Lc/e/a/b/h/b/Tb;->a(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_3

    .line 78
    :cond_e
    invoke-virtual {v3}, Lc/e/a/b/h/b/_b;->k()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 79
    invoke-virtual {v3}, Lc/e/a/b/h/b/_b;->k()Ljava/lang/String;

    move-result-object v8

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzm;->c:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 80
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 81
    invoke-virtual {v3}, Lc/e/a/b/h/b/_b;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaj;

    const-string v13, "_au"

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzag;

    invoke-direct {v14, v8}, Lcom/google/android/gms/measurement/internal/zzag;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v0

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag;Ljava/lang/String;J)V

    .line 83
    invoke-virtual {v1, v0, v2}, Lc/e/a/b/h/b/Tb;->a(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 84
    :cond_f
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lc/e/a/b/h/b/Tb;->d(Lcom/google/android/gms/measurement/internal/zzm;)Lc/e/a/b/h/b/_b;

    if-nez v7, :cond_10

    .line 85
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    const-string v8, "_f"

    .line 86
    invoke-virtual {v0, v3, v8}, Lc/e/a/b/h/b/sc;->b(Ljava/lang/String;Ljava/lang/String;)Lc/e/a/b/h/b/g;

    move-result-object v8

    goto :goto_4

    :cond_10
    if-ne v7, v4, :cond_11

    .line 87
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    const-string v8, "_v"

    .line 88
    invoke-virtual {v0, v3, v8}, Lc/e/a/b/h/b/sc;->b(Ljava/lang/String;Ljava/lang/String;)Lc/e/a/b/h/b/g;

    move-result-object v8

    goto :goto_4

    :cond_11
    const/4 v8, 0x0

    :goto_4
    if-nez v8, :cond_21

    const-wide/32 v12, 0x36ee80

    .line 89
    div-long v14, v10, v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    mul-long v14, v14, v12

    const-string v0, "_r"

    const-string v3, "_c"

    const-string v8, "_et"

    if-nez v7, :cond_1c

    .line 90
    :try_start_4
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzga;

    const-string v13, "_fot"

    .line 91
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v12, v7

    move-wide v14, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzga;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v7, v2}, Lc/e/a/b/h/b/Tb;->a(Lcom/google/android/gms/measurement/internal/zzga;Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 93
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v7

    .line 94
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzm;->b:Ljava/lang/String;

    .line 95
    invoke-virtual {v7, v12}, Lc/e/a/b/h/b/pc;->r(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 96
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 97
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    .line 98
    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->n()Lc/e/a/b/h/b/L;

    move-result-object v7

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    .line 99
    invoke-virtual {v7, v12}, Lc/e/a/b/h/b/L;->a(Ljava/lang/String;)V

    .line 100
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->r()V

    .line 102
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v12, 0x1

    .line 103
    invoke-virtual {v7, v3, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 104
    invoke-virtual {v7, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v12, 0x0

    .line 105
    invoke-virtual {v7, v6, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 106
    invoke-virtual {v7, v5, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v3, v18

    .line 107
    invoke-virtual {v7, v3, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 108
    invoke-virtual {v7, v9, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 109
    iget-object v0, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v0

    .line 110
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lc/e/a/b/h/b/pc;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-wide/16 v12, 0x1

    .line 111
    invoke-virtual {v7, v8, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 112
    :cond_13
    iget-object v0, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v0

    .line 113
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lc/e/a/b/h/b/pc;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 114
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzm;->q:Z

    if-eqz v0, :cond_14

    const-string v0, "_dac"

    const-wide/16 v12, 0x1

    .line 115
    invoke-virtual {v7, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 116
    :cond_14
    iget-object v0, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->b()Landroid/content/Context;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_15

    .line 118
    iget-object v0, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v3, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    .line 120
    invoke-static {v4}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 121
    invoke-virtual {v0, v3, v4}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_9

    .line 122
    :cond_15
    :try_start_5
    iget-object v0, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->b()Landroid/content/Context;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lc/e/a/b/d/h/c;->a(Landroid/content/Context;)Lc/e/a/b/d/h/b;

    move-result-object v0

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Lc/e/a/b/d/h/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 124
    :try_start_6
    iget-object v12, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v12}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v12

    .line 125
    invoke-virtual {v12}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v12

    const-string v13, "Package info is null, first open report might be inaccurate. appId"

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    .line 126
    invoke-static {v14}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 127
    invoke-virtual {v12, v13, v14, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_18

    .line 128
    iget-wide v12, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-eqz v16, :cond_18

    .line 129
    iget-wide v12, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v14, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v12, v14

    if-eqz v0, :cond_16

    const-wide/16 v12, 0x1

    .line 130
    invoke-virtual {v7, v6, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v0, 0x0

    goto :goto_6

    :cond_16
    const/4 v0, 0x1

    .line 131
    :goto_6
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzga;

    const-string v13, "_fi"

    if-eqz v0, :cond_17

    const-wide/16 v14, 0x1

    goto :goto_7

    :cond_17
    const-wide/16 v14, 0x0

    .line 132
    :goto_7
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v12, v6

    move-wide v14, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzga;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1, v6, v2}, Lc/e/a/b/h/b/Tb;->a(Lcom/google/android/gms/measurement/internal/zzga;Lcom/google/android/gms/measurement/internal/zzm;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 134
    :cond_18
    :try_start_7
    iget-object v0, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->b()Landroid/content/Context;

    move-result-object v0

    .line 135
    invoke-static {v0}, Lc/e/a/b/d/h/c;->a(Landroid/content/Context;)Lc/e/a/b/d/h/b;

    move-result-object v0

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v0, v6, v12}, Lc/e/a/b/d/h/b;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_8

    :catch_2
    move-exception v0

    .line 136
    :try_start_8
    iget-object v6, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v6}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v6

    .line 137
    invoke-virtual {v6}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v6

    const-string v12, "Application info is null, first open report might be inaccurate. appId"

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    .line 138
    invoke-static {v13}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 139
    invoke-virtual {v6, v12, v13, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_1a

    .line 140
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_19

    const-wide/16 v12, 0x1

    .line 141
    invoke-virtual {v7, v3, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 142
    :cond_19
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1a

    const-wide/16 v3, 0x1

    .line 143
    invoke-virtual {v7, v9, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 144
    :cond_1a
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    .line 145
    invoke-static {v3}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->l()V

    .line 147
    invoke-virtual {v0}, Lc/e/a/b/h/b/Sb;->s()V

    const-string v4, "first_open_count"

    .line 148
    invoke-virtual {v0, v3, v4}, Lc/e/a/b/h/b/sc;->i(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v12, 0x0

    cmp-long v0, v3, v12

    if-ltz v0, :cond_1b

    .line 149
    invoke-virtual {v7, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 150
    :cond_1b
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaj;

    const-string v13, "_f"

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzag;

    invoke-direct {v14, v7}, Lcom/google/android/gms/measurement/internal/zzag;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v0

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag;Ljava/lang/String;J)V

    .line 151
    invoke-virtual {v1, v0, v2}, Lc/e/a/b/h/b/Tb;->a(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_a

    :cond_1c
    if-ne v7, v4, :cond_1f

    .line 152
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzga;

    const-string v13, "_fvt"

    .line 153
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v17, "auto"

    move-object v12, v4

    move-wide v14, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzga;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1, v4, v2}, Lc/e/a/b/h/b/Tb;->a(Lcom/google/android/gms/measurement/internal/zzga;Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 155
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->r()V

    .line 157
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v5, 0x1

    .line 158
    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 159
    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 160
    iget-object v0, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v0

    .line 161
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lc/e/a/b/h/b/pc;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-wide/16 v5, 0x1

    .line 162
    invoke-virtual {v4, v8, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 163
    :cond_1d
    iget-object v0, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v0

    .line 164
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lc/e/a/b/h/b/pc;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 165
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzm;->q:Z

    if-eqz v0, :cond_1e

    const-string v0, "_dac"

    const-wide/16 v5, 0x1

    .line 166
    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 167
    :cond_1e
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaj;

    const-string v13, "_v"

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzag;

    invoke-direct {v14, v4}, Lcom/google/android/gms/measurement/internal/zzag;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v0

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag;Ljava/lang/String;J)V

    .line 168
    invoke-virtual {v1, v0, v2}, Lc/e/a/b/h/b/Tb;->a(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 169
    :cond_1f
    :goto_a
    iget-object v0, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v0

    .line 170
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    sget-object v4, Lc/e/a/b/h/b/k;->xa:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v0, v3, v4}, Lc/e/a/b/h/b/pc;->e(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 171
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v3, 0x1

    .line 172
    invoke-virtual {v0, v8, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 173
    iget-object v3, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v3

    .line 174
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lc/e/a/b/h/b/pc;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    const-string v3, "_fr"

    const-wide/16 v4, 0x1

    .line 175
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 176
    :cond_20
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzaj;

    const-string v13, "_e"

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzag;

    invoke-direct {v14, v0}, Lcom/google/android/gms/measurement/internal/zzag;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v3

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag;Ljava/lang/String;J)V

    .line 177
    invoke-virtual {v1, v3, v2}, Lc/e/a/b/h/b/Tb;->a(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_b

    .line 178
    :cond_21
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzm;->i:Z

    if-eqz v0, :cond_22

    .line 179
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 180
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzaj;

    const-string v13, "_cd"

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzag;

    invoke-direct {v14, v0}, Lcom/google/android/gms/measurement/internal/zzag;-><init>(Landroid/os/Bundle;)V

    const-string v15, "auto"

    move-object v12, v3

    move-wide/from16 v16, v10

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzag;Ljava/lang/String;J)V

    .line 181
    invoke-virtual {v1, v3, v2}, Lc/e/a/b/h/b/Tb;->a(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 182
    :cond_22
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/sc;->y()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 183
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/sc;->w()V

    return-void

    :catchall_0
    move-exception v0

    .line 184
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/sc;->w()V

    throw v0
.end method

.method public final d()Lc/e/a/b/h/b/U;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/google/android/gms/measurement/internal/zzm;)Lc/e/a/b/h/b/_b;
    .locals 10

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->r()V

    .line 4
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-static {v0}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/sc;->b(Ljava/lang/String;)Lc/e/a/b/h/b/_b;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v1

    .line 8
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/F;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lc/e/a/b/h/b/_b;

    iget-object v3, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lc/e/a/b/h/b/_b;-><init>(Lc/e/a/b/h/b/Y;Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Lc/e/a/b/h/b/cc;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lc/e/a/b/h/b/_b;->a(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/_b;->d(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {v0}, Lc/e/a/b/h/b/_b;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 14
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/_b;->d(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lc/e/a/b/h/b/cc;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/_b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 17
    :goto_1
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lc/e/a/b/h/b/_b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 18
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/_b;->b(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 19
    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->r:Ljava/lang/String;

    invoke-virtual {v0}, Lc/e/a/b/h/b/_b;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 20
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/_b;->c(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 21
    :cond_3
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->k:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->k:Ljava/lang/String;

    .line 22
    invoke-virtual {v0}, Lc/e/a/b/h/b/_b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 23
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/_b;->e(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 24
    :cond_4
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->e:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Lc/e/a/b/h/b/_b;->n()J

    move-result-wide v7

    cmp-long v9, v3, v7

    if-eqz v9, :cond_5

    .line 25
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->e:J

    invoke-virtual {v0, v3, v4}, Lc/e/a/b/h/b/_b;->d(J)V

    const/4 v1, 0x1

    .line 26
    :cond_5
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->c:Ljava/lang/String;

    .line 27
    invoke-virtual {v0}, Lc/e/a/b/h/b/_b;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 28
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/_b;->f(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 29
    :cond_6
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->j:J

    invoke-virtual {v0}, Lc/e/a/b/h/b/_b;->l()J

    move-result-wide v7

    cmp-long v9, v3, v7

    if-eqz v9, :cond_7

    .line 30
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->j:J

    invoke-virtual {v0, v3, v4}, Lc/e/a/b/h/b/_b;->c(J)V

    const/4 v1, 0x1

    .line 31
    :cond_7
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->d:Ljava/lang/String;

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lc/e/a/b/h/b/_b;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 32
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/_b;->g(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 33
    :cond_8
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->f:J

    invoke-virtual {v0}, Lc/e/a/b/h/b/_b;->o()J

    move-result-wide v7

    cmp-long v9, v3, v7

    if-eqz v9, :cond_9

    .line 34
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->f:J

    invoke-virtual {v0, v3, v4}, Lc/e/a/b/h/b/_b;->e(J)V

    const/4 v1, 0x1

    .line 35
    :cond_9
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->h:Z

    invoke-virtual {v0}, Lc/e/a/b/h/b/_b;->d()Z

    move-result v4

    if-eq v3, v4, :cond_a

    .line 36
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->h:Z

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/_b;->a(Z)V

    const/4 v1, 0x1

    .line 37
    :cond_a
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->g:Ljava/lang/String;

    .line 38
    invoke-virtual {v0}, Lc/e/a/b/h/b/_b;->A()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 39
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/_b;->h(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 40
    :cond_b
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->l:J

    invoke-virtual {v0}, Lc/e/a/b/h/b/_b;->C()J

    move-result-wide v7

    cmp-long v9, v3, v7

    if-eqz v9, :cond_c

    .line 41
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->l:J

    invoke-virtual {v0, v3, v4}, Lc/e/a/b/h/b/_b;->p(J)V

    const/4 v1, 0x1

    .line 42
    :cond_c
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->o:Z

    invoke-virtual {v0}, Lc/e/a/b/h/b/_b;->D()Z

    move-result v4

    if-eq v3, v4, :cond_d

    .line 43
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->o:Z

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/_b;->b(Z)V

    const/4 v1, 0x1

    .line 44
    :cond_d
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->p:Z

    invoke-virtual {v0}, Lc/e/a/b/h/b/_b;->E()Z

    move-result v4

    if-eq v3, v4, :cond_e

    .line 45
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->p:Z

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/_b;->c(Z)V

    const/4 v1, 0x1

    .line 46
    :cond_e
    iget-object v3, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v3

    .line 47
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    sget-object v7, Lc/e/a/b/h/b/k;->ya:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v3, v4, v7}, Lc/e/a/b/h/b/pc;->e(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 48
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lc/e/a/b/h/b/_b;->F()Ljava/lang/Boolean;

    move-result-object v4

    if-eq v3, v4, :cond_f

    .line 49
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->s:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/_b;->a(Ljava/lang/Boolean;)V

    const/4 v1, 0x1

    .line 50
    :cond_f
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->t:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_10

    .line 51
    invoke-virtual {v0}, Lc/e/a/b/h/b/_b;->p()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_10

    .line 52
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->t:J

    invoke-virtual {v0, v3, v4}, Lc/e/a/b/h/b/_b;->f(J)V

    const/4 v1, 0x1

    :cond_10
    if-eqz v1, :cond_11

    .line 53
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object p1

    invoke-virtual {p1, v0}, Lc/e/a/b/h/b/sc;->a(Lc/e/a/b/h/b/_b;)V

    :cond_11
    return-object v0
.end method

.method public final e()Lc/e/a/b/h/b/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/google/android/gms/measurement/internal/zzm;)Ljava/lang/String;
    .locals 4

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    .line 3
    new-instance v1, Lc/e/a/b/h/b/Xb;

    invoke-direct {v1, p0, p1}, Lc/e/a/b/h/b/Xb;-><init>(Lc/e/a/b/h/b/Tb;Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 4
    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/U;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7530

    .line 5
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 6
    :goto_0
    iget-object v1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzm;->a:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    .line 9
    invoke-virtual {v1, v2, p1, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->d()Lc/e/a/b/h/b/U;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lc/e/a/b/h/b/U;->l()V

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/sc;->B()V

    .line 4
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lc/e/a/b/h/b/F;->f:Lc/e/a/b/h/b/I;

    invoke-virtual {v0}, Lc/e/a/b/h/b/I;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 6
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lc/e/a/b/h/b/F;->f:Lc/e/a/b/h/b/I;

    .line 8
    iget-object v1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lc/e/a/b/h/b/I;->a(J)V

    .line 10
    :cond_0
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->v()V

    return-void
.end method

.method public final g()Lc/e/a/b/h/b/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->h()Lc/e/a/b/h/b/r;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lc/e/a/b/h/b/cc;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->i()Lc/e/a/b/h/b/cc;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lc/e/a/b/h/b/pc;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lc/e/a/b/h/b/Zb;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->h:Lc/e/a/b/h/b/Zb;

    invoke-static {v0}, Lc/e/a/b/h/b/Tb;->a(Lc/e/a/b/h/b/Sb;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->h:Lc/e/a/b/h/b/Zb;

    return-object v0
.end method

.method public final k()Lc/e/a/b/h/b/lc;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->g:Lc/e/a/b/h/b/lc;

    invoke-static {v0}, Lc/e/a/b/h/b/Tb;->a(Lc/e/a/b/h/b/Sb;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->g:Lc/e/a/b/h/b/lc;

    return-object v0
.end method

.method public final l()Lc/e/a/b/h/b/sc;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->d:Lc/e/a/b/h/b/sc;

    invoke-static {v0}, Lc/e/a/b/h/b/Tb;->a(Lc/e/a/b/h/b/Sb;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->d:Lc/e/a/b/h/b/sc;

    return-object v0
.end method

.method public final m()Lc/e/a/b/h/b/T;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->b:Lc/e/a/b/h/b/T;

    invoke-static {v0}, Lc/e/a/b/h/b/Tb;->a(Lc/e/a/b/h/b/Sb;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->b:Lc/e/a/b/h/b/T;

    return-object v0
.end method

.method public final n()Lc/e/a/b/h/b/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->c:Lc/e/a/b/h/b/x;

    invoke-static {v0}, Lc/e/a/b/h/b/Tb;->a(Lc/e/a/b/h/b/Sb;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->c:Lc/e/a/b/h/b/x;

    return-object v0
.end method

.method public final o()Lc/e/a/b/h/b/D;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->e:Lc/e/a/b/h/b/D;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p()Lc/e/a/b/h/b/Pb;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->f:Lc/e/a/b/h/b/Pb;

    invoke-static {v0}, Lc/e/a/b/h/b/Tb;->a(Lc/e/a/b/h/b/Sb;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->f:Lc/e/a/b/h/b/Pb;

    return-object v0
.end method

.method public final q()Lc/e/a/b/h/b/ab;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->i:Lc/e/a/b/h/b/ab;

    invoke-static {v0}, Lc/e/a/b/h/b/Tb;->a(Lc/e/a/b/h/b/Sb;)V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->i:Lc/e/a/b/h/b/ab;

    return-object v0
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/e/a/b/h/b/Tb;->k:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s()J
    .locals 8

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v2}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lc/e/a/b/h/b/va;->o()V

    .line 5
    invoke-virtual {v2}, Lc/e/a/b/h/b/ua;->l()V

    .line 6
    iget-object v3, v2, Lc/e/a/b/h/b/F;->j:Lc/e/a/b/h/b/I;

    invoke-virtual {v3}, Lc/e/a/b/h/b/I;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const-wide/16 v3, 0x1

    .line 7
    invoke-virtual {v2}, Lc/e/a/b/h/b/ua;->g()Lc/e/a/b/h/b/cc;

    move-result-object v5

    invoke-virtual {v5}, Lc/e/a/b/h/b/cc;->v()Ljava/security/SecureRandom;

    move-result-object v5

    const v6, 0x5265c00

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 8
    iget-object v2, v2, Lc/e/a/b/h/b/F;->j:Lc/e/a/b/h/b/I;

    invoke-virtual {v2, v3, v4}, Lc/e/a/b/h/b/I;->a(J)V

    :cond_0
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    .line 9
    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final t()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->r()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, v1, Lc/e/a/b/h/b/Tb;->t:Z

    const/4 v2, 0x0

    .line 4
    :try_start_0
    iget-object v3, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->a()Lc/e/a/b/h/b/nc;

    .line 5
    iget-object v3, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->D()Lc/e/a/b/h/b/gb;

    move-result-object v3

    invoke-virtual {v3}, Lc/e/a/b/h/b/gb;->J()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_0

    .line 6
    iget-object v0, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->w()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v3, "Upload data called on the client side before use of service was decided"

    .line 8
    invoke-virtual {v0, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iput-boolean v2, v1, Lc/e/a/b/h/b/Tb;->t:Z

    .line 10
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->w()V

    return-void

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    iget-object v0, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v3, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    iput-boolean v2, v1, Lc/e/a/b/h/b/Tb;->t:Z

    .line 15
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->w()V

    return-void

    .line 16
    :cond_1
    :try_start_2
    iget-wide v3, v1, Lc/e/a/b/h/b/Tb;->n:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 17
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->v()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    iput-boolean v2, v1, Lc/e/a/b/h/b/Tb;->t:Z

    .line 19
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->w()V

    return-void

    .line 20
    :cond_2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 21
    iget-object v3, v1, Lc/e/a/b/h/b/Tb;->w:Ljava/util/List;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 22
    iget-object v0, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v3, "Uploading requested multiple times"

    invoke-virtual {v0, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    iput-boolean v2, v1, Lc/e/a/b/h/b/Tb;->t:Z

    .line 25
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->w()V

    return-void

    .line 26
    :cond_4
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->n()Lc/e/a/b/h/b/x;

    move-result-object v3

    invoke-virtual {v3}, Lc/e/a/b/h/b/x;->v()Z

    move-result v3

    if-nez v3, :cond_5

    .line 27
    iget-object v0, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v3, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 29
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->v()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 30
    iput-boolean v2, v1, Lc/e/a/b/h/b/Tb;->t:Z

    .line 31
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->w()V

    return-void

    .line 32
    :cond_5
    :try_start_5
    iget-object v3, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object v3

    .line 33
    invoke-interface {v3}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v3

    .line 34
    invoke-static {}, Lc/e/a/b/h/b/pc;->t()J

    move-result-wide v7

    sub-long v7, v3, v7

    const/4 v9, 0x0

    .line 35
    invoke-virtual {v1, v9, v7, v8}, Lc/e/a/b/h/b/Tb;->a(Ljava/lang/String;J)Z

    .line 36
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v7

    .line 37
    iget-object v7, v7, Lc/e/a/b/h/b/F;->f:Lc/e/a/b/h/b/I;

    invoke-virtual {v7}, Lc/e/a/b/h/b/I;->a()J

    move-result-wide v7

    cmp-long v10, v7, v5

    if-eqz v10, :cond_6

    .line 38
    iget-object v5, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v5}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v5

    .line 39
    invoke-virtual {v5}, Lc/e/a/b/h/b/t;->A()Lc/e/a/b/h/b/v;

    move-result-object v5

    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v7, v3, v7

    .line 40
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 41
    invoke-virtual {v5, v6, v7}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v5

    invoke-virtual {v5}, Lc/e/a/b/h/b/sc;->z()Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-wide/16 v7, -0x1

    if-nez v6, :cond_14

    .line 44
    iget-wide v10, v1, Lc/e/a/b/h/b/Tb;->y:J

    cmp-long v6, v10, v7

    if-nez v6, :cond_7

    .line 45
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v6

    invoke-virtual {v6}, Lc/e/a/b/h/b/sc;->G()J

    move-result-wide v6

    iput-wide v6, v1, Lc/e/a/b/h/b/Tb;->y:J

    .line 46
    :cond_7
    iget-object v6, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v6}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v6

    .line 47
    sget-object v7, Lc/e/a/b/h/b/k;->u:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v6, v5, v7}, Lc/e/a/b/h/b/pc;->b(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)I

    move-result v6

    .line 48
    iget-object v7, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v7}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v7

    .line 49
    sget-object v8, Lc/e/a/b/h/b/k;->v:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v7, v5, v8}, Lc/e/a/b/h/b/pc;->b(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 50
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v8

    invoke-virtual {v8, v5, v6, v7}, Lc/e/a/b/h/b/sc;->a(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    .line 51
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_15

    .line 52
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 53
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lc/e/a/b/g/f/da;

    .line 54
    iget-object v10, v8, Lc/e/a/b/g/f/da;->v:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 55
    iget-object v7, v8, Lc/e/a/b/g/f/da;->v:Ljava/lang/String;

    goto :goto_1

    :cond_9
    move-object v7, v9

    :goto_1
    if-eqz v7, :cond_b

    const/4 v8, 0x0

    .line 56
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_b

    .line 57
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lc/e/a/b/g/f/da;

    .line 58
    iget-object v11, v10, Lc/e/a/b/g/f/da;->v:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 59
    iget-object v10, v10, Lc/e/a/b/g/f/da;->v:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 60
    invoke-interface {v6, v2, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    goto :goto_3

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 61
    :cond_b
    :goto_3
    new-instance v7, Lc/e/a/b/g/f/ca;

    invoke-direct {v7}, Lc/e/a/b/g/f/ca;-><init>()V

    .line 62
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lc/e/a/b/g/f/da;

    iput-object v8, v7, Lc/e/a/b/g/f/ca;->c:[Lc/e/a/b/g/f/da;

    .line 63
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    invoke-static {}, Lc/e/a/b/h/b/pc;->v()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 65
    iget-object v10, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v10}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v10

    .line 66
    invoke-virtual {v10, v5}, Lc/e/a/b/h/b/pc;->f(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    goto :goto_4

    :cond_c
    const/4 v10, 0x0

    :goto_4
    const/4 v11, 0x0

    .line 67
    :goto_5
    iget-object v12, v7, Lc/e/a/b/g/f/ca;->c:[Lc/e/a/b/g/f/da;

    array-length v12, v12

    if-ge v11, v12, :cond_f

    .line 68
    iget-object v12, v7, Lc/e/a/b/g/f/ca;->c:[Lc/e/a/b/g/f/da;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Lc/e/a/b/g/f/da;

    aput-object v13, v12, v11

    .line 69
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v12, v7, Lc/e/a/b/g/f/ca;->c:[Lc/e/a/b/g/f/da;

    aget-object v12, v12, v11

    .line 71
    iget-object v13, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v13}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v13

    .line 72
    invoke-virtual {v13}, Lc/e/a/b/h/b/pc;->n()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v12, Lc/e/a/b/g/f/da;->u:Ljava/lang/Long;

    .line 73
    iget-object v12, v7, Lc/e/a/b/g/f/ca;->c:[Lc/e/a/b/g/f/da;

    aget-object v12, v12, v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v12, Lc/e/a/b/g/f/da;->g:Ljava/lang/Long;

    .line 74
    iget-object v12, v7, Lc/e/a/b/g/f/ca;->c:[Lc/e/a/b/g/f/da;

    aget-object v12, v12, v11

    .line 75
    iget-object v13, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v13}, Lc/e/a/b/h/b/Y;->a()Lc/e/a/b/h/b/nc;

    .line 76
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iput-object v13, v12, Lc/e/a/b/g/f/da;->C:Ljava/lang/Boolean;

    if-nez v10, :cond_d

    .line 77
    iget-object v12, v7, Lc/e/a/b/g/f/ca;->c:[Lc/e/a/b/g/f/da;

    aget-object v12, v12, v11

    iput-object v9, v12, Lc/e/a/b/g/f/da;->L:Ljava/lang/String;

    .line 78
    :cond_d
    iget-object v12, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v12}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v12

    .line 79
    sget-object v13, Lc/e/a/b/h/b/k;->Fa:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v12, v5, v13}, Lc/e/a/b/h/b/pc;->e(Ljava/lang/String;Lc/e/a/b/h/b/k$a;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 80
    iget-object v12, v7, Lc/e/a/b/g/f/ca;->c:[Lc/e/a/b/g/f/da;

    aget-object v12, v12, v11

    invoke-static {v12}, Lc/e/a/b/g/f/Wc;->a(Lc/e/a/b/g/f/Wc;)[B

    move-result-object v12

    .line 81
    iget-object v13, v7, Lc/e/a/b/g/f/ca;->c:[Lc/e/a/b/g/f/da;

    aget-object v13, v13, v11

    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    move-result-object v14

    invoke-virtual {v14, v12}, Lc/e/a/b/h/b/Zb;->a([B)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v13, Lc/e/a/b/g/f/da;->S:Ljava/lang/Long;

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 82
    :cond_f
    iget-object v6, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v6}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v6

    const/4 v10, 0x2

    .line 83
    invoke-virtual {v6, v10}, Lc/e/a/b/h/b/t;->a(I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 84
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    move-result-object v6

    invoke-virtual {v6, v7}, Lc/e/a/b/h/b/Zb;->b(Lc/e/a/b/g/f/ca;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_10
    move-object v6, v9

    .line 85
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    move-result-object v10

    invoke-virtual {v10, v7}, Lc/e/a/b/h/b/Zb;->a(Lc/e/a/b/g/f/ca;)[B

    move-result-object v14

    .line 86
    sget-object v10, Lc/e/a/b/h/b/k;->E:Lc/e/a/b/h/b/k$a;

    .line 87
    invoke-virtual {v10, v9}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 88
    check-cast v9, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 89
    :try_start_6
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_11

    const/4 v10, 0x1

    goto :goto_7

    :cond_11
    const/4 v10, 0x0

    :goto_7
    invoke-static {v10}, Lc/e/a/b/d/d/r;->a(Z)V

    .line 91
    iget-object v10, v1, Lc/e/a/b/h/b/Tb;->w:Ljava/util/List;

    if-eqz v10, :cond_12

    .line 92
    iget-object v8, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v8}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v8

    .line 93
    invoke-virtual {v8}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v8

    const-string v10, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v8, v10}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    goto :goto_8

    .line 94
    :cond_12
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, v1, Lc/e/a/b/h/b/Tb;->w:Ljava/util/List;

    .line 95
    :goto_8
    iget-object v8, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v8}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v8

    .line 96
    iget-object v8, v8, Lc/e/a/b/h/b/F;->g:Lc/e/a/b/h/b/I;

    invoke-virtual {v8, v3, v4}, Lc/e/a/b/h/b/I;->a(J)V

    const-string v3, "?"

    .line 97
    iget-object v4, v7, Lc/e/a/b/g/f/ca;->c:[Lc/e/a/b/g/f/da;

    array-length v4, v4

    if-lez v4, :cond_13

    .line 98
    iget-object v3, v7, Lc/e/a/b/g/f/ca;->c:[Lc/e/a/b/g/f/da;

    aget-object v3, v3, v2

    iget-object v3, v3, Lc/e/a/b/g/f/da;->r:Ljava/lang/String;

    .line 99
    :cond_13
    iget-object v4, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v4}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v4

    .line 100
    invoke-virtual {v4}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v4

    const-string v7, "Uploading data. app, uncompressed size, data"

    array-length v8, v14

    .line 101
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v3, v8, v6}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    iput-boolean v0, v1, Lc/e/a/b/h/b/Tb;->s:Z

    .line 103
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->n()Lc/e/a/b/h/b/x;

    move-result-object v11

    new-instance v0, Lc/e/a/b/h/b/Vb;

    invoke-direct {v0, v1, v5}, Lc/e/a/b/h/b/Vb;-><init>(Lc/e/a/b/h/b/Tb;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v11}, Lc/e/a/b/h/b/ua;->l()V

    .line 105
    invoke-virtual {v11}, Lc/e/a/b/h/b/Sb;->s()V

    .line 106
    invoke-static {v13}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {v14}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {v0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {v11}, Lc/e/a/b/h/b/ua;->d()Lc/e/a/b/h/b/U;

    move-result-object v3

    new-instance v4, Lc/e/a/b/h/b/C;

    const/4 v15, 0x0

    move-object v10, v4

    move-object v12, v5

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lc/e/a/b/h/b/C;-><init>(Lc/e/a/b/h/b/x;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lc/e/a/b/h/b/A;)V

    .line 110
    invoke-virtual {v3, v4}, Lc/e/a/b/h/b/U;->b(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_9

    .line 111
    :catch_0
    :try_start_7
    iget-object v0, v1, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v3, "Failed to parse upload URL. Not uploading. appId"

    .line 113
    invoke-static {v5}, Lc/e/a/b/h/b/t;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 114
    invoke-virtual {v0, v3, v4, v9}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    .line 115
    :cond_14
    iput-wide v7, v1, Lc/e/a/b/h/b/Tb;->y:J

    .line 116
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v0

    .line 117
    invoke-static {}, Lc/e/a/b/h/b/pc;->t()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lc/e/a/b/h/b/sc;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 119
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v3

    invoke-virtual {v3, v0}, Lc/e/a/b/h/b/sc;->b(Ljava/lang/String;)Lc/e/a/b/h/b/_b;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 120
    invoke-virtual {v1, v0}, Lc/e/a/b/h/b/Tb;->a(Lc/e/a/b/h/b/_b;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 121
    :cond_15
    :goto_9
    iput-boolean v2, v1, Lc/e/a/b/h/b/Tb;->t:Z

    .line 122
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->w()V

    return-void

    :catchall_0
    move-exception v0

    .line 123
    iput-boolean v2, v1, Lc/e/a/b/h/b/Tb;->t:Z

    .line 124
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->w()V

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method public final u()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->r()V

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/sc;->E()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/sc;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final v()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->r()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->z()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v1

    .line 5
    sget-object v2, Lc/e/a/b/h/b/k;->Aa:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/pc;->a(Lc/e/a/b/h/b/k$a;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-wide v1, v0, Lc/e/a/b/h/b/Tb;->n:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 7
    iget-object v1, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object v1

    .line 8
    invoke-interface {v1}, Lc/e/a/b/d/g/e;->a()J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    .line 9
    iget-wide v7, v0, Lc/e/a/b/h/b/Tb;->n:J

    sub-long/2addr v1, v7

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_1

    .line 11
    iget-object v1, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v1

    .line 13
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 14
    invoke-virtual {v1, v3, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->o()Lc/e/a/b/h/b/D;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/D;->a()V

    .line 16
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->p()Lc/e/a/b/h/b/Pb;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/Pb;->v()V

    return-void

    .line 17
    :cond_1
    iput-wide v3, v0, Lc/e/a/b/h/b/Tb;->n:J

    .line 18
    :cond_2
    iget-object v1, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->x()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->u()Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_6

    .line 19
    :cond_3
    iget-object v1, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object v1

    .line 20
    invoke-interface {v1}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v1

    .line 21
    sget-object v5, Lc/e/a/b/h/b/k;->O:Lc/e/a/b/h/b/k$a;

    const/4 v6, 0x0

    .line 22
    invoke-virtual {v5, v6}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 23
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 24
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v5

    invoke-virtual {v5}, Lc/e/a/b/h/b/sc;->F()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v5

    invoke-virtual {v5}, Lc/e/a/b/h/b/sc;->A()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_7

    .line 25
    iget-object v10, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v10}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v10

    .line 26
    invoke-virtual {v10}, Lc/e/a/b/h/b/pc;->u()Ljava/lang/String;

    move-result-object v10

    .line 27
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string v11, ".none."

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 28
    sget-object v10, Lc/e/a/b/h/b/k;->J:Lc/e/a/b/h/b/k$a;

    .line 29
    invoke-virtual {v10, v6}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 30
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_2

    .line 31
    :cond_6
    sget-object v10, Lc/e/a/b/h/b/k;->I:Lc/e/a/b/h/b/k$a;

    .line 32
    invoke-virtual {v10, v6}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 33
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_2

    .line 34
    :cond_7
    sget-object v10, Lc/e/a/b/h/b/k;->H:Lc/e/a/b/h/b/k$a;

    .line 35
    invoke-virtual {v10, v6}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 36
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 37
    :goto_2
    iget-object v12, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v12}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v12

    .line 38
    iget-object v12, v12, Lc/e/a/b/h/b/F;->f:Lc/e/a/b/h/b/I;

    invoke-virtual {v12}, Lc/e/a/b/h/b/I;->a()J

    move-result-wide v12

    .line 39
    iget-object v14, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v14}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v14

    .line 40
    iget-object v14, v14, Lc/e/a/b/h/b/F;->g:Lc/e/a/b/h/b/I;

    invoke-virtual {v14}, Lc/e/a/b/h/b/I;->a()J

    move-result-wide v14

    .line 41
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v16

    move-wide/from16 v17, v10

    invoke-virtual/range {v16 .. v16}, Lc/e/a/b/h/b/sc;->C()J

    move-result-wide v9

    .line 42
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->l()Lc/e/a/b/h/b/sc;

    move-result-object v11

    move-wide/from16 v19, v7

    invoke-virtual {v11}, Lc/e/a/b/h/b/sc;->D()J

    move-result-wide v6

    .line 43
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-nez v8, :cond_9

    :cond_8
    move-wide v8, v3

    goto/16 :goto_5

    :cond_9
    sub-long/2addr v6, v1

    .line 44
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long v6, v1, v6

    sub-long/2addr v12, v1

    .line 45
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v8, v1, v8

    sub-long/2addr v14, v1

    .line 46
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long/2addr v1, v10

    .line 47
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long v10, v6, v19

    if-eqz v5, :cond_a

    cmp-long v5, v8, v3

    if-lez v5, :cond_a

    .line 48
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    add-long v10, v10, v17

    .line 49
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    move-result-object v5

    move-wide/from16 v12, v17

    invoke-virtual {v5, v8, v9, v12, v13}, Lc/e/a/b/h/b/Zb;->a(JJ)Z

    move-result v5

    if-nez v5, :cond_b

    add-long/2addr v8, v12

    goto :goto_3

    :cond_b
    move-wide v8, v10

    :goto_3
    cmp-long v5, v1, v3

    if-eqz v5, :cond_d

    cmp-long v5, v1, v6

    if-ltz v5, :cond_d

    const/4 v5, 0x0

    :goto_4
    const/16 v6, 0x14

    .line 50
    sget-object v7, Lc/e/a/b/h/b/k;->Q:Lc/e/a/b/h/b/k$a;

    const/4 v10, 0x0

    .line 51
    invoke-virtual {v7, v10}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 52
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v11, 0x0

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_8

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v5

    .line 53
    sget-object v12, Lc/e/a/b/h/b/k;->P:Lc/e/a/b/h/b/k$a;

    .line 54
    invoke-virtual {v12, v10}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 55
    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    mul-long v12, v12, v6

    add-long/2addr v8, v12

    cmp-long v6, v8, v1

    if-lez v6, :cond_c

    goto :goto_5

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    cmp-long v1, v8, v3

    if-nez v1, :cond_e

    .line 56
    iget-object v1, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->o()Lc/e/a/b/h/b/D;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/D;->a()V

    .line 59
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->p()Lc/e/a/b/h/b/Pb;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/Pb;->v()V

    return-void

    .line 60
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->n()Lc/e/a/b/h/b/x;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/x;->v()Z

    move-result v1

    if-nez v1, :cond_f

    .line 61
    iget-object v1, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->o()Lc/e/a/b/h/b/D;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/D;->b()V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->p()Lc/e/a/b/h/b/Pb;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/Pb;->v()V

    return-void

    .line 65
    :cond_f
    iget-object v1, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v1

    .line 66
    iget-object v1, v1, Lc/e/a/b/h/b/F;->h:Lc/e/a/b/h/b/I;

    invoke-virtual {v1}, Lc/e/a/b/h/b/I;->a()J

    move-result-wide v1

    .line 67
    sget-object v5, Lc/e/a/b/h/b/k;->F:Lc/e/a/b/h/b/k$a;

    const/4 v6, 0x0

    .line 68
    invoke-virtual {v5, v6}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 69
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 70
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->j()Lc/e/a/b/h/b/Zb;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v5, v6}, Lc/e/a/b/h/b/Zb;->a(JJ)Z

    move-result v7

    if-nez v7, :cond_10

    add-long/2addr v1, v5

    .line 71
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 72
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->o()Lc/e/a/b/h/b/D;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/D;->a()V

    .line 73
    iget-object v1, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object v1

    .line 74
    invoke-interface {v1}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v1

    sub-long/2addr v8, v1

    cmp-long v1, v8, v3

    if-gtz v1, :cond_11

    .line 75
    sget-object v1, Lc/e/a/b/h/b/k;->K:Lc/e/a/b/h/b/k$a;

    const/4 v2, 0x0

    .line 76
    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 77
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 78
    iget-object v1, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v1

    .line 79
    iget-object v1, v1, Lc/e/a/b/h/b/F;->f:Lc/e/a/b/h/b/I;

    .line 80
    iget-object v2, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v2}, Lc/e/a/b/h/b/Y;->c()Lc/e/a/b/d/g/e;

    move-result-object v2

    .line 81
    invoke-interface {v2}, Lc/e/a/b/d/g/e;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lc/e/a/b/h/b/I;->a(J)V

    .line 82
    :cond_11
    iget-object v1, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload scheduled in approximately ms"

    invoke-virtual {v1, v3, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->p()Lc/e/a/b/h/b/Pb;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lc/e/a/b/h/b/Pb;->a(J)V

    return-void

    .line 85
    :cond_12
    :goto_6
    iget-object v1, v0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->o()Lc/e/a/b/h/b/D;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/D;->a()V

    .line 88
    invoke-virtual/range {p0 .. p0}, Lc/e/a/b/h/b/Tb;->p()Lc/e/a/b/h/b/Pb;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/Pb;->v()V

    return-void
.end method

.method public final w()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 2
    iget-boolean v0, p0, Lc/e/a/b/h/b/Tb;->r:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lc/e/a/b/h/b/Tb;->s:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lc/e/a/b/h/b/Tb;->t:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->o:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 7
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 9
    :cond_3
    :goto_1
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    iget-boolean v1, p0, Lc/e/a/b/h/b/Tb;->r:Z

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lc/e/a/b/h/b/Tb;->s:Z

    .line 12
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lc/e/a/b/h/b/Tb;->t:Z

    .line 13
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    .line 14
    invoke-virtual {v0, v4, v1, v2, v3}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final x()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->b()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/io/File;

    const-string v2, "google_app_measurement.db"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/h/b/Tb;->v:Ljava/nio/channels/FileChannel;

    .line 6
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->v:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/h/b/Tb;->u:Ljava/nio/channels/FileLock;

    .line 7
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->u:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Storage concurrent access okay"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    iget-object v1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 14
    iget-object v1, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v1}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final y()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->r()V

    .line 3
    iget-boolean v0, p0, Lc/e/a/b/h/b/Tb;->m:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 4
    iput-boolean v1, p0, Lc/e/a/b/h/b/Tb;->m:Z

    .line 5
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 6
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->r()V

    .line 7
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v0

    .line 8
    sget-object v2, Lc/e/a/b/h/b/k;->Aa:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v0, v2}, Lc/e/a/b/h/b/pc;->a(Lc/e/a/b/h/b/k$a;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->z()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    :cond_0
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->v:Ljava/nio/channels/FileChannel;

    .line 11
    invoke-virtual {p0, v0}, Lc/e/a/b/h/b/Tb;->a(Ljava/nio/channels/FileChannel;)I

    move-result v0

    .line 12
    iget-object v2, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v2}, Lc/e/a/b/h/b/Y;->C()Lc/e/a/b/h/b/o;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/o;->F()I

    move-result v2

    .line 13
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->C()V

    if-le v0, v2, :cond_1

    .line 14
    iget-object v3, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v3

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Panic: can\'t downgrade version. Previous, current version"

    .line 18
    invoke-virtual {v3, v4, v0, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-ge v0, v2, :cond_3

    .line 19
    iget-object v3, p0, Lc/e/a/b/h/b/Tb;->v:Ljava/nio/channels/FileChannel;

    .line 20
    invoke-virtual {p0, v2, v3}, Lc/e/a/b/h/b/Tb;->a(ILjava/nio/channels/FileChannel;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 21
    iget-object v3, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lc/e/a/b/h/b/t;->B()Lc/e/a/b/h/b/v;

    move-result-object v3

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Storage version upgraded. Previous, current version"

    invoke-virtual {v3, v4, v0, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 24
    :cond_2
    iget-object v3, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v3}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v3

    .line 25
    invoke-virtual {v3}, Lc/e/a/b/h/b/t;->t()Lc/e/a/b/h/b/v;

    move-result-object v3

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "Storage version upgrade failed. Previous, current version"

    .line 28
    invoke-virtual {v3, v4, v0, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lc/e/a/b/h/b/Tb;->l:Z

    if-nez v0, :cond_4

    .line 30
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->k()Lc/e/a/b/h/b/pc;

    move-result-object v0

    .line 31
    sget-object v2, Lc/e/a/b/h/b/k;->Aa:Lc/e/a/b/h/b/k$a;

    invoke-virtual {v0, v2}, Lc/e/a/b/h/b/pc;->a(Lc/e/a/b/h/b/k$a;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 32
    iget-object v0, p0, Lc/e/a/b/h/b/Tb;->j:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->e()Lc/e/a/b/h/b/t;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lc/e/a/b/h/b/t;->z()Lc/e/a/b/h/b/v;

    move-result-object v0

    const-string v2, "This instance being marked as an uploader"

    invoke-virtual {v0, v2}, Lc/e/a/b/h/b/v;->a(Ljava/lang/String;)V

    .line 34
    iput-boolean v1, p0, Lc/e/a/b/h/b/Tb;->l:Z

    .line 35
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->v()V

    :cond_4
    return-void
.end method

.method public final z()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->C()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/h/b/Tb;->r()V

    .line 3
    iget-boolean v0, p0, Lc/e/a/b/h/b/Tb;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
