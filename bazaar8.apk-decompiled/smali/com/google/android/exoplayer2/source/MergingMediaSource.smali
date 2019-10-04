.class public final Lcom/google/android/exoplayer2/source/MergingMediaSource;
.super Lc/e/a/a/j/o;
.source "MergingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/a/j/o<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:[Lc/e/a/a/j/v;

.field public final j:[Lc/e/a/a/Z;

.field public final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/e/a/a/j/v;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lc/e/a/a/j/q;

.field public m:Ljava/lang/Object;

.field public n:I

.field public o:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;


# direct methods
.method public varargs constructor <init>(Lc/e/a/a/j/q;[Lc/e/a/a/j/v;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lc/e/a/a/j/o;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->i:[Lc/e/a/a/j/v;

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->l:Lc/e/a/a/j/q;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->k:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->n:I

    .line 7
    array-length p1, p2

    new-array p1, p1, [Lc/e/a/a/Z;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->j:[Lc/e/a/a/Z;

    return-void
.end method

.method public varargs constructor <init>([Lc/e/a/a/j/v;)V
    .locals 1

    .line 1
    new-instance v0, Lc/e/a/a/j/r;

    invoke-direct {v0}, Lc/e/a/a/j/r;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/MergingMediaSource;-><init>(Lc/e/a/a/j/q;[Lc/e/a/a/j/v;)V

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/j/v$a;Lc/e/a/a/n/e;J)Lc/e/a/a/j/u;
    .locals 5

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->i:[Lc/e/a/a/j/v;

    array-length v0, v0

    new-array v0, v0, [Lc/e/a/a/j/u;

    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->j:[Lc/e/a/a/Z;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v3, p1, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lc/e/a/a/Z;->a(Ljava/lang/Object;)I

    move-result v1

    .line 10
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 11
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->j:[Lc/e/a/a/Z;

    aget-object v3, v3, v2

    .line 12
    invoke-virtual {v3, v1}, Lc/e/a/a/Z;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lc/e/a/a/j/v$a;->a(Ljava/lang/Object;)Lc/e/a/a/j/v$a;

    move-result-object v3

    .line 13
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->i:[Lc/e/a/a/j/v;

    aget-object v4, v4, v2

    invoke-interface {v4, v3, p2, p3, p4}, Lc/e/a/a/j/v;->a(Lc/e/a/a/j/v$a;Lc/e/a/a/n/e;J)Lc/e/a/a/j/u;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Lc/e/a/a/j/x;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->l:Lc/e/a/a/j/q;

    invoke-direct {p1, p2, v0}, Lc/e/a/a/j/x;-><init>(Lc/e/a/a/j/q;[Lc/e/a/a/j/u;)V

    return-object p1
.end method

.method public a(Ljava/lang/Integer;Lc/e/a/a/j/v$a;)Lc/e/a/a/j/v$a;
    .locals 0

    .line 27
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lc/e/a/a/j/v$a;)Lc/e/a/a/j/v$a;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a(Ljava/lang/Integer;Lc/e/a/a/j/v$a;)Lc/e/a/a/j/v$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lc/e/a/a/Z;)Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;
    .locals 2

    .line 28
    iget v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 29
    invoke-virtual {p1}, Lc/e/a/a/Z;->a()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->n:I

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1}, Lc/e/a/a/Z;->a()I

    move-result p1

    iget v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->n:I

    if-eq p1, v0, :cond_1

    .line 31
    new-instance p1, Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;-><init>(I)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->o:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_0

    .line 6
    invoke-super {p0}, Lc/e/a/a/j/o;->a()V

    return-void

    .line 7
    :cond_0
    throw v0
.end method

.method public a(Lc/e/a/a/j/u;)V
    .locals 3

    .line 15
    check-cast p1, Lc/e/a/a/j/x;

    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->i:[Lc/e/a/a/j/v;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 17
    aget-object v1, v1, v0

    iget-object v2, p1, Lc/e/a/a/j/x;->a:[Lc/e/a/a/j/u;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lc/e/a/a/j/v;->a(Lc/e/a/a/j/u;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lc/e/a/a/n/A;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lc/e/a/a/j/o;->a(Lc/e/a/a/n/A;)V

    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->i:[Lc/e/a/a/j/v;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->i:[Lc/e/a/a/j/v;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lc/e/a/a/j/o;->a(Ljava/lang/Object;Lc/e/a/a/j/v;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Integer;Lc/e/a/a/j/v;Lc/e/a/a/Z;Ljava/lang/Object;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->o:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_0

    .line 19
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a(Lc/e/a/a/Z;)Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->o:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->o:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-eqz v0, :cond_1

    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->j:[Lc/e/a/a/Z;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput-object p3, v0, p1

    .line 23
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->i:[Lc/e/a/a/j/v;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    if-ne p2, p1, :cond_2

    .line 24
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->m:Ljava/lang/Object;

    .line 25
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 26
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->j:[Lc/e/a/a/Z;

    aget-object p1, p1, p3

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->m:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lc/e/a/a/j/m;->a(Lc/e/a/a/Z;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    invoke-super {p0}, Lc/e/a/a/j/o;->b()V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->j:[Lc/e/a/a/Z;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->m:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->n:I

    .line 6
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->o:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->i:[Lc/e/a/a/j/v;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lc/e/a/a/j/v;Lc/e/a/a/Z;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->a(Ljava/lang/Integer;Lc/e/a/a/j/v;Lc/e/a/a/Z;Ljava/lang/Object;)V

    return-void
.end method
