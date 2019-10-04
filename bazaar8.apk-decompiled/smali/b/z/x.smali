.class public Lb/z/x;
.super Ljava/lang/Object;
.source "RoomSQLiteQuery.java"

# interfaces
.implements Lb/C/a/e;
.implements Lb/C/a/d;


# static fields
.field public static final a:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lb/z/x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public volatile b:Ljava/lang/String;

.field public final c:[J

.field public final d:[D

.field public final e:[Ljava/lang/String;

.field public final f:[[B

.field public final g:[I

.field public final h:I

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lb/z/x;->a:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lb/z/x;->h:I

    add-int/lit8 p1, p1, 0x1

    .line 3
    new-array v0, p1, [I

    iput-object v0, p0, Lb/z/x;->g:[I

    .line 4
    new-array v0, p1, [J

    iput-object v0, p0, Lb/z/x;->c:[J

    .line 5
    new-array v0, p1, [D

    iput-object v0, p0, Lb/z/x;->d:[D

    .line 6
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lb/z/x;->e:[Ljava/lang/String;

    .line 7
    new-array p1, p1, [[B

    iput-object p1, p0, Lb/z/x;->f:[[B

    return-void
.end method

.method public static a(Ljava/lang/String;I)Lb/z/x;
    .locals 4

    .line 1
    sget-object v0, Lb/z/x;->a:Ljava/util/TreeMap;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lb/z/x;->a:Ljava/util/TreeMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v2, Lb/z/x;->a:Ljava/util/TreeMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/z/x;

    .line 6
    invoke-virtual {v1, p0, p1}, Lb/z/x;->b(Ljava/lang/String;I)V

    .line 7
    monitor-exit v0

    return-object v1

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance v0, Lb/z/x;

    invoke-direct {v0, p1}, Lb/z/x;-><init>(I)V

    .line 10
    invoke-virtual {v0, p0, p1}, Lb/z/x;->b(Ljava/lang/String;I)V

    return-object v0

    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static b()V
    .locals 3

    .line 3
    sget-object v0, Lb/z/x;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 4
    sget-object v0, Lb/z/x;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    .line 5
    sget-object v1, Lb/z/x;->a:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    move v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lb/z/x;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .line 20
    iget-object v0, p0, Lb/z/x;->g:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    return-void
.end method

.method public a(ID)V
    .locals 2

    .line 23
    iget-object v0, p0, Lb/z/x;->g:[I

    const/4 v1, 0x3

    aput v1, v0, p1

    .line 24
    iget-object v0, p0, Lb/z/x;->d:[D

    aput-wide p2, v0, p1

    return-void
.end method

.method public a(IJ)V
    .locals 2

    .line 21
    iget-object v0, p0, Lb/z/x;->g:[I

    const/4 v1, 0x2

    aput v1, v0, p1

    .line 22
    iget-object v0, p0, Lb/z/x;->c:[J

    aput-wide p2, v0, p1

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .line 25
    iget-object v0, p0, Lb/z/x;->g:[I

    const/4 v1, 0x4

    aput v1, v0, p1

    .line 26
    iget-object v0, p0, Lb/z/x;->e:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-void
.end method

.method public a(I[B)V
    .locals 2

    .line 27
    iget-object v0, p0, Lb/z/x;->g:[I

    const/4 v1, 0x5

    aput v1, v0, p1

    .line 28
    iget-object v0, p0, Lb/z/x;->f:[[B

    aput-object p2, v0, p1

    return-void
.end method

.method public a(Lb/C/a/d;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 13
    :goto_0
    iget v2, p0, Lb/z/x;->i:I

    if-gt v1, v2, :cond_5

    .line 14
    iget-object v2, p0, Lb/z/x;->g:[I

    aget v2, v2, v1

    if-eq v2, v0, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    iget-object v2, p0, Lb/z/x;->f:[[B

    aget-object v2, v2, v1

    invoke-interface {p1, v1, v2}, Lb/C/a/d;->a(I[B)V

    goto :goto_1

    .line 16
    :cond_1
    iget-object v2, p0, Lb/z/x;->e:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {p1, v1, v2}, Lb/C/a/d;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_2
    iget-object v2, p0, Lb/z/x;->d:[D

    aget-wide v3, v2, v1

    invoke-interface {p1, v1, v3, v4}, Lb/C/a/d;->a(ID)V

    goto :goto_1

    .line 18
    :cond_3
    iget-object v2, p0, Lb/z/x;->c:[J

    aget-wide v3, v2, v1

    invoke-interface {p1, v1, v3, v4}, Lb/C/a/d;->a(IJ)V

    goto :goto_1

    .line 19
    :cond_4
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/z/x;->b:Ljava/lang/String;

    .line 2
    iput p2, p0, Lb/z/x;->i:I

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    sget-object v0, Lb/z/x;->a:Ljava/util/TreeMap;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lb/z/x;->a:Ljava/util/TreeMap;

    iget v2, p0, Lb/z/x;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lb/z/x;->b()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 0

    return-void
.end method
