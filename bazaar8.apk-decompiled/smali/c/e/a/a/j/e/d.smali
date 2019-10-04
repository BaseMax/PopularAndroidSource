.class public final Lc/e/a/a/j/e/d;
.super Ljava/lang/Object;
.source "SsMediaPeriod.java"

# interfaces
.implements Lc/e/a/a/j/u;
.implements Lc/e/a/a/j/D$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/e/a/a/j/u;",
        "Lc/e/a/a/j/D$a<",
        "Lc/e/a/a/j/b/g<",
        "Lc/e/a/a/j/e/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Lc/e/a/a/j/e/c$a;

.field public final b:Lc/e/a/a/n/A;

.field public final c:Lc/e/a/a/n/x;

.field public final d:Lc/e/a/a/n/v;

.field public final e:Lc/e/a/a/j/w$a;

.field public final f:Lc/e/a/a/n/e;

.field public final g:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public final h:Lc/e/a/a/j/q;

.field public i:Lc/e/a/a/j/u$a;

.field public j:Lc/e/a/a/j/e/a/a;

.field public k:[Lc/e/a/a/j/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lc/e/a/a/j/b/g<",
            "Lc/e/a/a/j/e/c;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lc/e/a/a/j/D;

.field public m:Z


# direct methods
.method public constructor <init>(Lc/e/a/a/j/e/a/a;Lc/e/a/a/j/e/c$a;Lc/e/a/a/n/A;Lc/e/a/a/j/q;Lc/e/a/a/n/v;Lc/e/a/a/j/w$a;Lc/e/a/a/n/x;Lc/e/a/a/n/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/j/e/d;->j:Lc/e/a/a/j/e/a/a;

    .line 3
    iput-object p2, p0, Lc/e/a/a/j/e/d;->a:Lc/e/a/a/j/e/c$a;

    .line 4
    iput-object p3, p0, Lc/e/a/a/j/e/d;->b:Lc/e/a/a/n/A;

    .line 5
    iput-object p7, p0, Lc/e/a/a/j/e/d;->c:Lc/e/a/a/n/x;

    .line 6
    iput-object p5, p0, Lc/e/a/a/j/e/d;->d:Lc/e/a/a/n/v;

    .line 7
    iput-object p6, p0, Lc/e/a/a/j/e/d;->e:Lc/e/a/a/j/w$a;

    .line 8
    iput-object p8, p0, Lc/e/a/a/j/e/d;->f:Lc/e/a/a/n/e;

    .line 9
    iput-object p4, p0, Lc/e/a/a/j/e/d;->h:Lc/e/a/a/j/q;

    .line 10
    invoke-static {p1}, Lc/e/a/a/j/e/d;->a(Lc/e/a/a/j/e/a/a;)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/j/e/d;->g:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    const/4 p1, 0x0

    .line 11
    invoke-static {p1}, Lc/e/a/a/j/e/d;->a(I)[Lc/e/a/a/j/b/g;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/j/e/d;->k:[Lc/e/a/a/j/b/g;

    .line 12
    iget-object p1, p0, Lc/e/a/a/j/e/d;->k:[Lc/e/a/a/j/b/g;

    .line 13
    invoke-interface {p4, p1}, Lc/e/a/a/j/q;->a([Lc/e/a/a/j/D;)Lc/e/a/a/j/D;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/j/e/d;->l:Lc/e/a/a/j/D;

    .line 14
    invoke-virtual {p6}, Lc/e/a/a/j/w$a;->a()V

    return-void
.end method

.method public static a(Lc/e/a/a/j/e/a/a;)Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 4

    .line 33
    iget-object v0, p0, Lc/e/a/a/j/e/a/a;->f:[Lc/e/a/a/j/e/a/a$b;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v1, 0x0

    .line 34
    :goto_0
    iget-object v2, p0, Lc/e/a/a/j/e/a/a;->f:[Lc/e/a/a/j/e/a/a$b;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 35
    new-instance v3, Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v2, v2, v1

    iget-object v2, v2, Lc/e/a/a/j/e/a/a$b;->j:[Lcom/google/android/exoplayer2/Format;

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :cond_0
    new-instance p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    return-object p0
.end method

.method public static a(I)[Lc/e/a/a/j/b/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lc/e/a/a/j/b/g<",
            "Lc/e/a/a/j/e/c;",
            ">;"
        }
    .end annotation

    .line 37
    new-array p0, p0, [Lc/e/a/a/j/b/g;

    return-object p0
.end method


# virtual methods
.method public a(J)J
    .locals 4

    .line 23
    iget-object v0, p0, Lc/e/a/a/j/e/d;->k:[Lc/e/a/a/j/b/g;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 24
    invoke-virtual {v3, p1, p2}, Lc/e/a/a/j/b/g;->a(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public a(JLc/e/a/a/V;)J
    .locals 6

    .line 25
    iget-object v0, p0, Lc/e/a/a/j/e/d;->k:[Lc/e/a/a/j/b/g;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 26
    iget v4, v3, Lc/e/a/a/j/b/g;->a:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 27
    invoke-virtual {v3, p1, p2, p3}, Lc/e/a/a/j/b/g;->a(JLc/e/a/a/V;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public a([Lc/e/a/a/l/n;[Z[Lc/e/a/a/j/C;[ZJ)J
    .locals 4

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 6
    aget-object v2, p3, v1

    if-eqz v2, :cond_2

    .line 7
    aget-object v2, p3, v1

    check-cast v2, Lc/e/a/a/j/b/g;

    .line 8
    aget-object v3, p1, v1

    if-eqz v3, :cond_1

    aget-boolean v3, p2, v1

    if-nez v3, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 10
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lc/e/a/a/j/b/g;->m()V

    const/4 v2, 0x0

    .line 11
    aput-object v2, p3, v1

    .line 12
    :cond_2
    :goto_2
    aget-object v2, p3, v1

    if-nez v2, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_3

    .line 13
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p5, p6}, Lc/e/a/a/j/e/d;->a(Lc/e/a/a/l/n;J)Lc/e/a/a/j/b/g;

    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    aput-object v2, p3, v1

    const/4 v2, 0x1

    .line 16
    aput-boolean v2, p4, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Lc/e/a/a/j/e/d;->a(I)[Lc/e/a/a/j/b/g;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/j/e/d;->k:[Lc/e/a/a/j/b/g;

    .line 18
    iget-object p1, p0, Lc/e/a/a/j/e/d;->k:[Lc/e/a/a/j/b/g;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 19
    iget-object p1, p0, Lc/e/a/a/j/e/d;->h:Lc/e/a/a/j/q;

    iget-object p2, p0, Lc/e/a/a/j/e/d;->k:[Lc/e/a/a/j/b/g;

    .line 20
    invoke-interface {p1, p2}, Lc/e/a/a/j/q;->a([Lc/e/a/a/j/D;)Lc/e/a/a/j/D;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/j/e/d;->l:Lc/e/a/a/j/D;

    return-wide p5
.end method

.method public final a(Lc/e/a/a/l/n;J)Lc/e/a/a/j/b/g;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/l/n;",
            "J)",
            "Lc/e/a/a/j/b/g<",
            "Lc/e/a/a/j/e/c;",
            ">;"
        }
    .end annotation

    move-object v11, p0

    .line 29
    iget-object v0, v11, Lc/e/a/a/j/e/d;->g:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-interface {p1}, Lc/e/a/a/l/n;->a()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v0

    .line 30
    iget-object v2, v11, Lc/e/a/a/j/e/d;->a:Lc/e/a/a/j/e/c$a;

    iget-object v3, v11, Lc/e/a/a/j/e/d;->c:Lc/e/a/a/n/x;

    iget-object v4, v11, Lc/e/a/a/j/e/d;->j:Lc/e/a/a/j/e/a/a;

    iget-object v7, v11, Lc/e/a/a/j/e/d;->b:Lc/e/a/a/n/A;

    move v5, v0

    move-object v6, p1

    .line 31
    invoke-interface/range {v2 .. v7}, Lc/e/a/a/j/e/c$a;->a(Lc/e/a/a/n/x;Lc/e/a/a/j/e/a/a;ILc/e/a/a/l/n;Lc/e/a/a/n/A;)Lc/e/a/a/j/e/c;

    move-result-object v4

    .line 32
    new-instance v12, Lc/e/a/a/j/b/g;

    iget-object v1, v11, Lc/e/a/a/j/e/d;->j:Lc/e/a/a/j/e/a/a;

    iget-object v1, v1, Lc/e/a/a/j/e/a/a;->f:[Lc/e/a/a/j/e/a/a$b;

    aget-object v0, v1, v0

    iget v1, v0, Lc/e/a/a/j/e/a/a$b;->a:I

    iget-object v6, v11, Lc/e/a/a/j/e/d;->f:Lc/e/a/a/n/e;

    iget-object v9, v11, Lc/e/a/a/j/e/d;->d:Lc/e/a/a/n/v;

    iget-object v10, v11, Lc/e/a/a/j/e/d;->e:Lc/e/a/a/j/w$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v12

    move-object v5, p0

    move-wide v7, p2

    invoke-direct/range {v0 .. v10}, Lc/e/a/a/j/b/g;-><init>(I[I[Lcom/google/android/exoplayer2/Format;Lc/e/a/a/j/b/h;Lc/e/a/a/j/D$a;Lc/e/a/a/n/e;JLc/e/a/a/n/v;Lc/e/a/a/j/w$a;)V

    return-object v12
.end method

.method public a(JZ)V
    .locals 4

    .line 21
    iget-object v0, p0, Lc/e/a/a/j/e/d;->k:[Lc/e/a/a/j/b/g;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 22
    invoke-virtual {v3, p1, p2, p3}, Lc/e/a/a/j/b/g;->a(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lc/e/a/a/j/D;)V
    .locals 0

    .line 1
    check-cast p1, Lc/e/a/a/j/b/g;

    invoke-virtual {p0, p1}, Lc/e/a/a/j/e/d;->a(Lc/e/a/a/j/b/g;)V

    return-void
.end method

.method public a(Lc/e/a/a/j/b/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/j/b/g<",
            "Lc/e/a/a/j/e/c;",
            ">;)V"
        }
    .end annotation

    .line 28
    iget-object p1, p0, Lc/e/a/a/j/e/d;->i:Lc/e/a/a/j/u$a;

    invoke-interface {p1, p0}, Lc/e/a/a/j/D$a;->a(Lc/e/a/a/j/D;)V

    return-void
.end method

.method public a(Lc/e/a/a/j/u$a;J)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/e/a/a/j/e/d;->i:Lc/e/a/a/j/u$a;

    .line 3
    invoke-interface {p1, p0}, Lc/e/a/a/j/u$a;->a(Lc/e/a/a/j/u;)V

    return-void
.end method

.method public b()J
    .locals 2

    .line 6
    iget-object v0, p0, Lc/e/a/a/j/e/d;->l:Lc/e/a/a/j/D;

    invoke-interface {v0}, Lc/e/a/a/j/D;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Lc/e/a/a/j/e/a/a;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lc/e/a/a/j/e/d;->j:Lc/e/a/a/j/e/a/a;

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/e/d;->k:[Lc/e/a/a/j/b/g;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Lc/e/a/a/j/b/g;->i()Lc/e/a/a/j/b/h;

    move-result-object v3

    check-cast v3, Lc/e/a/a/j/e/c;

    invoke-interface {v3, p1}, Lc/e/a/a/j/e/c;->a(Lc/e/a/a/j/e/a/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lc/e/a/a/j/e/d;->i:Lc/e/a/a/j/u$a;

    invoke-interface {p1, p0}, Lc/e/a/a/j/D$a;->a(Lc/e/a/a/j/D;)V

    return-void
.end method

.method public b(J)Z
    .locals 1

    .line 5
    iget-object v0, p0, Lc/e/a/a/j/e/d;->l:Lc/e/a/a/j/D;

    invoke-interface {v0, p1, p2}, Lc/e/a/a/j/D;->b(J)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/e/d;->k:[Lc/e/a/a/j/b/g;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lc/e/a/a/j/b/g;->m()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lc/e/a/a/j/e/d;->i:Lc/e/a/a/j/u$a;

    .line 4
    iget-object v0, p0, Lc/e/a/a/j/e/d;->e:Lc/e/a/a/j/w$a;

    invoke-virtual {v0}, Lc/e/a/a/j/w$a;->b()V

    return-void
.end method

.method public c(J)V
    .locals 1

    .line 5
    iget-object v0, p0, Lc/e/a/a/j/e/d;->l:Lc/e/a/a/j/D;

    invoke-interface {v0, p1, p2}, Lc/e/a/a/j/D;->c(J)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/e/d;->c:Lc/e/a/a/n/x;

    invoke-interface {v0}, Lc/e/a/a/n/x;->a()V

    return-void
.end method

.method public e()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/j/e/d;->m:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/e/d;->e:Lc/e/a/a/j/w$a;

    invoke-virtual {v0}, Lc/e/a/a/j/w$a;->c()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lc/e/a/a/j/e/d;->m:Z

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public f()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/e/d;->g:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/e/d;->l:Lc/e/a/a/j/D;

    invoke-interface {v0}, Lc/e/a/a/j/D;->g()J

    move-result-wide v0

    return-wide v0
.end method
