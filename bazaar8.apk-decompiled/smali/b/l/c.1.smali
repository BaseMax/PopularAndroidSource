.class public Lb/l/c;
.super Ljava/lang/Object;
.source "CallbackRegistry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/l/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TC;>;"
        }
    .end annotation
.end field

.field public b:J

.field public c:[J

.field public d:I

.field public final e:Lb/l/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/l/c$a<",
            "TC;TT;TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/l/c$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/l/c$a<",
            "TC;TT;TA;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/l/c;->a:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lb/l/c;->b:J

    .line 4
    iput-object p1, p0, Lb/l/c;->e:Lb/l/c$a;

    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 9

    add-int/lit8 v0, p1, 0x40

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const-wide/high16 v2, -0x8000000000000000L

    :goto_0
    if-lt v0, p1, :cond_1

    and-long v4, p2, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 31
    iget-object v4, p0, Lb/l/c;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    ushr-long/2addr v2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 20
    :try_start_0
    iget-object v0, p0, Lb/l/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 21
    invoke-virtual {p0, v0}, Lb/l/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    :cond_0
    iget-object v0, p0, Lb/l/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 24
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lb/l/c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/l/c;->d:I

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lb/l/c;->c(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 3
    iget p1, p0, Lb/l/c;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lb/l/c;->d:I

    .line 4
    iget p1, p0, Lb/l/c;->d:I

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lb/l/c;->c:[J

    const-wide/16 p2, 0x0

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lb/l/c;->c:[J

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 7
    iget-object v0, p0, Lb/l/c;->c:[J

    aget-wide v1, v0, p1

    cmp-long v0, v1, p2

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    mul-int/lit8 v0, v0, 0x40

    .line 8
    invoke-virtual {p0, v0, v1, v2}, Lb/l/c;->a(IJ)V

    .line 9
    iget-object v0, p0, Lb/l/c;->c:[J

    aput-wide p2, v0, p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-wide v0, p0, Lb/l/c;->b:J

    cmp-long p1, v0, p2

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 11
    iget-wide v0, p0, Lb/l/c;->b:J

    invoke-virtual {p0, p1, v0, v1}, Lb/l/c;->a(IJ)V

    .line 12
    iput-wide p2, p0, Lb/l/c;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final a(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;I)V"
        }
    .end annotation

    if-gez p4, :cond_0

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lb/l/c;->b(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lb/l/c;->c:[J

    aget-wide v7, v0, p4

    add-int/lit8 v0, p4, 0x1

    mul-int/lit8 v5, v0, 0x40

    .line 16
    iget-object v0, p0, Lb/l/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v5, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 p4, p4, -0x1

    .line 17
    invoke-virtual {p0, p1, p2, p3, p4}, Lb/l/c;->a(Ljava/lang/Object;ILjava/lang/Object;I)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .line 18
    invoke-virtual/range {v1 .. v8}, Lb/l/c;->a(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/Object;ILjava/lang/Object;IIJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;IIJ)V"
        }
    .end annotation

    const-wide/16 v0, 0x1

    :goto_0
    if-ge p4, p5, :cond_1

    and-long v2, p6, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 19
    iget-object v2, p0, Lb/l/c;->e:Lb/l/c$a;

    iget-object v3, p0, Lb/l/c;->a:Ljava/util/List;

    invoke-interface {v3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2, p3}, Lb/l/c$a;->a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_0
    const/4 v2, 0x1

    shl-long/2addr v0, v2

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(I)Z
    .locals 10

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x40

    const/4 v6, 0x0

    if-ge p1, v5, :cond_1

    shl-long/2addr v2, p1

    .line 25
    iget-wide v7, p0, Lb/l/c;->b:J

    and-long/2addr v2, v7

    cmp-long p1, v2, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 26
    :cond_1
    iget-object v7, p0, Lb/l/c;->c:[J

    if-nez v7, :cond_2

    return v6

    .line 27
    :cond_2
    div-int/lit8 v8, p1, 0x40

    sub-int/2addr v8, v4

    .line 28
    array-length v9, v7

    if-lt v8, v9, :cond_3

    return v6

    .line 29
    :cond_3
    aget-wide v8, v7, v8

    .line 30
    rem-int/2addr p1, v5

    shl-long/2addr v2, p1

    and-long/2addr v2, v8

    cmp-long p1, v2, v0

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    return v4
.end method

.method public final b(I)V
    .locals 8

    const-wide/16 v0, 0x1

    const/16 v2, 0x40

    if-ge p1, v2, :cond_0

    shl-long/2addr v0, p1

    .line 8
    iget-wide v2, p0, Lb/l/c;->b:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lb/l/c;->b:J

    goto :goto_1

    .line 9
    :cond_0
    div-int/lit8 v3, p1, 0x40

    add-int/lit8 v3, v3, -0x1

    .line 10
    iget-object v4, p0, Lb/l/c;->c:[J

    if-nez v4, :cond_1

    .line 11
    iget-object v4, p0, Lb/l/c;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v4, v2

    new-array v4, v4, [J

    iput-object v4, p0, Lb/l/c;->c:[J

    goto :goto_0

    .line 12
    :cond_1
    array-length v4, v4

    if-gt v4, v3, :cond_2

    .line 13
    iget-object v4, p0, Lb/l/c;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v4, v2

    new-array v4, v4, [J

    .line 14
    iget-object v5, p0, Lb/l/c;->c:[J

    array-length v6, v5

    const/4 v7, 0x0

    invoke-static {v5, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iput-object v4, p0, Lb/l/c;->c:[J

    .line 16
    :cond_2
    :goto_0
    rem-int/2addr p1, v2

    shl-long/2addr v0, p1

    .line 17
    iget-object p1, p0, Lb/l/c;->c:[J

    aget-wide v4, p1, v3

    or-long/2addr v0, v4

    aput-wide v0, p1, v3

    :goto_1
    return-void
.end method

.method public declared-synchronized b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_0
    iget v0, p0, Lb/l/c;->d:I

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lb/l/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lb/l/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lb/l/c;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/l/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2
    iget-wide v8, p0, Lb/l/c;->b:J

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v9}, Lb/l/c;->a(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    return-void
.end method

.method public final c(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/l/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 2
    iget-object v0, p0, Lb/l/c;->c:[J

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 3
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lb/l/c;->a(Ljava/lang/Object;ILjava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v5, v0, 0x40

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .line 4
    invoke-virtual/range {v1 .. v8}, Lb/l/c;->a(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    return-void
.end method

.method public declared-synchronized clone()Lb/l/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/l/c<",
            "TC;TT;TA;>;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/l/c;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    .line 3
    :try_start_1
    iput-wide v2, v1, Lb/l/c;->b:J

    .line 4
    iput-object v0, v1, Lb/l/c;->c:[J

    const/4 v0, 0x0

    .line 5
    iput v0, v1, Lb/l/c;->d:I

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lb/l/c;->a:Ljava/util/List;

    .line 7
    iget-object v2, p0, Lb/l/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    .line 8
    invoke-virtual {p0, v0}, Lb/l/c;->a(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 9
    iget-object v3, v1, Lb/l/c;->a:Ljava/util/List;

    iget-object v4, p0, Lb/l/c;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 10
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :cond_1
    monitor-exit p0

    return-object v1

    :goto_2
    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/l/c;->clone()Lb/l/c;

    move-result-object v0

    return-object v0
.end method
