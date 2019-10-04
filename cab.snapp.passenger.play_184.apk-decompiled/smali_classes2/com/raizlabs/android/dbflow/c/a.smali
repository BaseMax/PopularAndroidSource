.class public final Lcom/raizlabs/android/dbflow/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/AutoCloseable;",
        "Ljava/util/ListIterator<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/raizlabs/android/dbflow/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/c/d<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private b:J

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/c/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/c/d<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 21
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/c/d;->getCount()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/raizlabs/android/dbflow/c/a;-><init>(Lcom/raizlabs/android/dbflow/c/d;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/c/d;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/c/d<",
            "TTModel;>;I)V"
        }
    .end annotation

    .line 25
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/c/d;->getCount()J

    move-result-wide v0

    int-to-long v2, p2

    sub-long/2addr v0, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/raizlabs/android/dbflow/c/a;-><init>(Lcom/raizlabs/android/dbflow/c/d;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/c/d;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/c/d<",
            "TTModel;>;IJ)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/c/a;->a:Lcom/raizlabs/android/dbflow/c/d;

    .line 31
    iput-wide p3, p0, Lcom/raizlabs/android/dbflow/c/a;->d:J

    .line 32
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/c/d;->cursor()Landroid/database/Cursor;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 35
    iget-wide v0, p0, Lcom/raizlabs/android/dbflow/c/a;->d:J

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result p4

    sub-int/2addr p4, p2

    int-to-long v2, p4

    cmp-long p4, v0, v2

    if-lez p4, :cond_0

    .line 36
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result p4

    sub-int/2addr p4, p2

    int-to-long v0, p4

    iput-wide v0, p0, Lcom/raizlabs/android/dbflow/c/a;->d:J

    :cond_0
    add-int/lit8 p4, p2, -0x1

    .line 39
    invoke-interface {p3, p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 40
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/c/d;->getCount()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/raizlabs/android/dbflow/c/a;->c:J

    .line 41
    iget-wide p3, p0, Lcom/raizlabs/android/dbflow/c/a;->d:J

    iput-wide p3, p0, Lcom/raizlabs/android/dbflow/c/a;->b:J

    .line 42
    iget-wide p3, p0, Lcom/raizlabs/android/dbflow/c/a;->b:J

    int-to-long p1, p2

    sub-long/2addr p3, p1

    iput-wide p3, p0, Lcom/raizlabs/android/dbflow/c/a;->b:J

    .line 44
    iget-wide p1, p0, Lcom/raizlabs/android/dbflow/c/a;->b:J

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    .line 45
    iput-wide p3, p0, Lcom/raizlabs/android/dbflow/c/a;->b:J

    :cond_1
    return-void
.end method

.method private a()V
    .locals 5

    .line 111
    iget-wide v0, p0, Lcom/raizlabs/android/dbflow/c/a;->c:J

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/c/a;->a:Lcom/raizlabs/android/dbflow/c/d;

    invoke-interface {v2}, Lcom/raizlabs/android/dbflow/c/d;->getCount()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Cannot change Cursor data during iteration."

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)V"
        }
    .end annotation

    .line 57
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cursor Iterator: Cannot add a model in the iterator"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/a;->a:Lcom/raizlabs/android/dbflow/c/d;

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/c/d;->close()V

    return-void
.end method

.method public final hasNext()Z
    .locals 5

    .line 62
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/c/a;->a()V

    .line 63
    iget-wide v0, p0, Lcom/raizlabs/android/dbflow/c/a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 5

    .line 68
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/c/a;->a()V

    .line 69
    iget-wide v0, p0, Lcom/raizlabs/android/dbflow/c/a;->b:J

    iget-wide v2, p0, Lcom/raizlabs/android/dbflow/c/a;->d:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTModel;"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/c/a;->a()V

    .line 76
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/a;->a:Lcom/raizlabs/android/dbflow/c/d;

    iget-wide v1, p0, Lcom/raizlabs/android/dbflow/c/a;->d:J

    iget-wide v3, p0, Lcom/raizlabs/android/dbflow/c/a;->b:J

    sub-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcom/raizlabs/android/dbflow/c/d;->getItem(J)Ljava/lang/Object;

    move-result-object v0

    .line 77
    iget-wide v1, p0, Lcom/raizlabs/android/dbflow/c/a;->b:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/raizlabs/android/dbflow/c/a;->b:J

    return-object v0
.end method

.method public final nextIndex()I
    .locals 4

    .line 83
    iget-wide v0, p0, Lcom/raizlabs/android/dbflow/c/a;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final previous()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTModel;"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/c/a;->a()V

    .line 90
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/a;->a:Lcom/raizlabs/android/dbflow/c/d;

    iget-wide v1, p0, Lcom/raizlabs/android/dbflow/c/a;->d:J

    iget-wide v3, p0, Lcom/raizlabs/android/dbflow/c/a;->b:J

    sub-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcom/raizlabs/android/dbflow/c/d;->getItem(J)Ljava/lang/Object;

    move-result-object v0

    .line 91
    iget-wide v1, p0, Lcom/raizlabs/android/dbflow/c/a;->b:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/raizlabs/android/dbflow/c/a;->b:J

    return-object v0
.end method

.method public final previousIndex()I
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/raizlabs/android/dbflow/c/a;->b:J

    long-to-int v1, v0

    return v1
.end method

.method public final remove()V
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cursor Iterator: cannot remove from an active Iterator "

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)V"
        }
    .end annotation

    .line 107
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cursor Iterator: cannot set on an active Iterator "

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
