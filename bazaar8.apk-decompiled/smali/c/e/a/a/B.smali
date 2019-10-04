.class public final Lc/e/a/a/B;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lc/e/a/a/j/u$a;
.implements Lc/e/a/a/l/r$a;
.implements Lc/e/a/a/j/v$b;
.implements Lc/e/a/a/u$a;
.implements Lc/e/a/a/O$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/B$c;,
        Lc/e/a/a/B$a;,
        Lc/e/a/a/B$b;,
        Lc/e/a/a/B$d;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:I

.field public D:Lc/e/a/a/B$d;

.field public E:J

.field public F:I

.field public final a:[Lc/e/a/a/Q;

.field public final b:[Lc/e/a/a/S;

.field public final c:Lc/e/a/a/l/r;

.field public final d:Lc/e/a/a/l/s;

.field public final e:Lc/e/a/a/F;

.field public final f:Lc/e/a/a/n/f;

.field public final g:Lc/e/a/a/o/o;

.field public final h:Landroid/os/HandlerThread;

.field public final i:Landroid/os/Handler;

.field public final j:Lc/e/a/a/Z$b;

.field public final k:Lc/e/a/a/Z$a;

.field public final l:J

.field public final m:Z

.field public final n:Lc/e/a/a/u;

.field public final o:Lc/e/a/a/B$c;

.field public final p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/e/a/a/B$b;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lc/e/a/a/o/f;

.field public final r:Lc/e/a/a/I;

.field public s:Lc/e/a/a/V;

.field public t:Lc/e/a/a/J;

.field public u:Lc/e/a/a/j/v;

.field public v:[Lc/e/a/a/Q;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>([Lc/e/a/a/Q;Lc/e/a/a/l/r;Lc/e/a/a/l/s;Lc/e/a/a/F;Lc/e/a/a/n/f;ZIZLandroid/os/Handler;Lc/e/a/a/o/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/B;->a:[Lc/e/a/a/Q;

    .line 3
    iput-object p2, p0, Lc/e/a/a/B;->c:Lc/e/a/a/l/r;

    .line 4
    iput-object p3, p0, Lc/e/a/a/B;->d:Lc/e/a/a/l/s;

    .line 5
    iput-object p4, p0, Lc/e/a/a/B;->e:Lc/e/a/a/F;

    .line 6
    iput-object p5, p0, Lc/e/a/a/B;->f:Lc/e/a/a/n/f;

    .line 7
    iput-boolean p6, p0, Lc/e/a/a/B;->x:Z

    .line 8
    iput p7, p0, Lc/e/a/a/B;->z:I

    .line 9
    iput-boolean p8, p0, Lc/e/a/a/B;->A:Z

    .line 10
    iput-object p9, p0, Lc/e/a/a/B;->i:Landroid/os/Handler;

    .line 11
    iput-object p10, p0, Lc/e/a/a/B;->q:Lc/e/a/a/o/f;

    .line 12
    new-instance p6, Lc/e/a/a/I;

    invoke-direct {p6}, Lc/e/a/a/I;-><init>()V

    iput-object p6, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    .line 13
    invoke-interface {p4}, Lc/e/a/a/F;->c()J

    move-result-wide p6

    iput-wide p6, p0, Lc/e/a/a/B;->l:J

    .line 14
    invoke-interface {p4}, Lc/e/a/a/F;->b()Z

    move-result p4

    iput-boolean p4, p0, Lc/e/a/a/B;->m:Z

    .line 15
    sget-object p4, Lc/e/a/a/V;->e:Lc/e/a/a/V;

    iput-object p4, p0, Lc/e/a/a/B;->s:Lc/e/a/a/V;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    invoke-static {p6, p7, p3}, Lc/e/a/a/J;->a(JLc/e/a/a/l/s;)Lc/e/a/a/J;

    move-result-object p3

    iput-object p3, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    .line 17
    new-instance p3, Lc/e/a/a/B$c;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lc/e/a/a/B$c;-><init>(Lc/e/a/a/A;)V

    iput-object p3, p0, Lc/e/a/a/B;->o:Lc/e/a/a/B$c;

    .line 18
    array-length p3, p1

    new-array p3, p3, [Lc/e/a/a/S;

    iput-object p3, p0, Lc/e/a/a/B;->b:[Lc/e/a/a/S;

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 19
    :goto_0
    array-length p6, p1

    if-ge p4, p6, :cond_0

    .line 20
    aget-object p6, p1, p4

    invoke-interface {p6, p4}, Lc/e/a/a/Q;->setIndex(I)V

    .line 21
    iget-object p6, p0, Lc/e/a/a/B;->b:[Lc/e/a/a/S;

    aget-object p7, p1, p4

    invoke-interface {p7}, Lc/e/a/a/Q;->i()Lc/e/a/a/S;

    move-result-object p7

    aput-object p7, p6, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Lc/e/a/a/u;

    invoke-direct {p1, p0, p10}, Lc/e/a/a/u;-><init>(Lc/e/a/a/u$a;Lc/e/a/a/o/f;)V

    iput-object p1, p0, Lc/e/a/a/B;->n:Lc/e/a/a/u;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/e/a/a/B;->p:Ljava/util/ArrayList;

    .line 24
    new-array p1, p3, [Lc/e/a/a/Q;

    iput-object p1, p0, Lc/e/a/a/B;->v:[Lc/e/a/a/Q;

    .line 25
    new-instance p1, Lc/e/a/a/Z$b;

    invoke-direct {p1}, Lc/e/a/a/Z$b;-><init>()V

    iput-object p1, p0, Lc/e/a/a/B;->j:Lc/e/a/a/Z$b;

    .line 26
    new-instance p1, Lc/e/a/a/Z$a;

    invoke-direct {p1}, Lc/e/a/a/Z$a;-><init>()V

    iput-object p1, p0, Lc/e/a/a/B;->k:Lc/e/a/a/Z$a;

    .line 27
    invoke-virtual {p2, p0, p5}, Lc/e/a/a/l/r;->a(Lc/e/a/a/l/r$a;Lc/e/a/a/n/f;)V

    .line 28
    new-instance p1, Landroid/os/HandlerThread;

    const/16 p2, -0x10

    const-string p3, "ExoPlayerImplInternal:Handler"

    invoke-direct {p1, p3, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lc/e/a/a/B;->h:Landroid/os/HandlerThread;

    .line 29
    iget-object p1, p0, Lc/e/a/a/B;->h:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 30
    iget-object p1, p0, Lc/e/a/a/B;->h:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-interface {p10, p1, p0}, Lc/e/a/a/o/f;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lc/e/a/a/o/o;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    return-void
.end method

.method public static a(Lc/e/a/a/l/n;)[Lcom/google/android/exoplayer2/Format;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 287
    invoke-interface {p0}, Lc/e/a/a/l/n;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 288
    :goto_0
    new-array v2, v1, [Lcom/google/android/exoplayer2/Format;

    :goto_1
    if-ge v0, v1, :cond_1

    .line 289
    invoke-interface {p0, v0}, Lc/e/a/a/l/n;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method


# virtual methods
.method public final a(J)J
    .locals 3

    .line 283
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0}, Lc/e/a/a/I;->d()Lc/e/a/a/G;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    .line 284
    :cond_0
    iget-wide v1, p0, Lc/e/a/a/B;->E:J

    .line 285
    invoke-virtual {v0, v1, v2}, Lc/e/a/a/G;->c(J)J

    move-result-wide v0

    sub-long/2addr p1, v0

    :goto_0
    return-wide p1
.end method

.method public final a(Lc/e/a/a/j/v$a;J)J
    .locals 2

    .line 52
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    .line 53
    invoke-virtual {v0}, Lc/e/a/a/I;->e()Lc/e/a/a/G;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v1}, Lc/e/a/a/I;->f()Lc/e/a/a/G;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lc/e/a/a/B;->a(Lc/e/a/a/j/v$a;JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a(Lc/e/a/a/j/v$a;JZ)J
    .locals 5

    .line 55
    invoke-virtual {p0}, Lc/e/a/a/B;->s()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lc/e/a/a/B;->y:Z

    const/4 v1, 0x2

    .line 57
    invoke-virtual {p0, v1}, Lc/e/a/a/B;->c(I)V

    .line 58
    iget-object v2, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v2}, Lc/e/a/a/I;->e()Lc/e/a/a/G;

    move-result-object v2

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 59
    iget-object v4, v3, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-object v4, v4, Lc/e/a/a/H;->a:Lc/e/a/a/j/v$a;

    invoke-virtual {p1, v4}, Lc/e/a/a/j/v$a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lc/e/a/a/G;->d:Z

    if-eqz v4, :cond_0

    .line 60
    iget-object p1, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {p1, v3}, Lc/e/a/a/I;->a(Lc/e/a/a/G;)Z

    goto :goto_1

    .line 61
    :cond_0
    iget-object v3, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v3}, Lc/e/a/a/I;->a()Lc/e/a/a/G;

    move-result-object v3

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v2, v3, :cond_2

    if-eqz p4, :cond_4

    .line 62
    :cond_2
    iget-object p1, p0, Lc/e/a/a/B;->v:[Lc/e/a/a/Q;

    array-length p4, p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p4, :cond_3

    aget-object v4, p1, v2

    .line 63
    invoke-virtual {p0, v4}, Lc/e/a/a/B;->a(Lc/e/a/a/Q;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 64
    :cond_3
    new-array p1, v0, [Lc/e/a/a/Q;

    iput-object p1, p0, Lc/e/a/a/B;->v:[Lc/e/a/a/Q;

    const/4 v2, 0x0

    :cond_4
    if-eqz v3, :cond_6

    .line 65
    invoke-virtual {p0, v2}, Lc/e/a/a/B;->a(Lc/e/a/a/G;)V

    .line 66
    iget-boolean p1, v3, Lc/e/a/a/G;->e:Z

    if-eqz p1, :cond_5

    .line 67
    iget-object p1, v3, Lc/e/a/a/G;->a:Lc/e/a/a/j/u;

    invoke-interface {p1, p2, p3}, Lc/e/a/a/j/u;->a(J)J

    move-result-wide p1

    .line 68
    iget-object p3, v3, Lc/e/a/a/G;->a:Lc/e/a/a/j/u;

    iget-wide v2, p0, Lc/e/a/a/B;->l:J

    sub-long v2, p1, v2

    iget-boolean p4, p0, Lc/e/a/a/B;->m:Z

    invoke-interface {p3, v2, v3, p4}, Lc/e/a/a/j/u;->a(JZ)V

    move-wide p2, p1

    .line 69
    :cond_5
    invoke-virtual {p0, p2, p3}, Lc/e/a/a/B;->b(J)V

    .line 70
    invoke-virtual {p0}, Lc/e/a/a/B;->h()V

    goto :goto_3

    .line 71
    :cond_6
    iget-object p1, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Lc/e/a/a/I;->a(Z)V

    .line 72
    iget-object p1, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    sget-object p4, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v2, p0, Lc/e/a/a/B;->d:Lc/e/a/a/l/s;

    .line 73
    invoke-virtual {p1, p4, v2}, Lc/e/a/a/J;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/s;)Lc/e/a/a/J;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    .line 74
    invoke-virtual {p0, p2, p3}, Lc/e/a/a/B;->b(J)V

    .line 75
    :goto_3
    invoke-virtual {p0, v0}, Lc/e/a/a/B;->a(Z)V

    .line 76
    iget-object p1, p0, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    invoke-interface {p1, v1}, Lc/e/a/a/o/o;->a(I)Z

    return-wide p2
.end method

.method public final a(Lc/e/a/a/B$d;Z)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/B$d;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-object v0, v0, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    .line 223
    iget-object v1, p1, Lc/e/a/a/B$d;->a:Lc/e/a/a/Z;

    .line 224
    invoke-virtual {v0}, Lc/e/a/a/Z;->c()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 225
    :cond_0
    invoke-virtual {v1}, Lc/e/a/a/Z;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 226
    :cond_1
    :try_start_0
    iget-object v5, p0, Lc/e/a/a/B;->j:Lc/e/a/a/Z$b;

    iget-object v6, p0, Lc/e/a/a/B;->k:Lc/e/a/a/Z$a;

    iget v7, p1, Lc/e/a/a/B$d;->b:I

    iget-wide v8, p1, Lc/e/a/a/B$d;->c:J

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Lc/e/a/a/Z;->a(Lc/e/a/a/Z$b;Lc/e/a/a/Z$a;IJ)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_2

    return-object p1

    .line 227
    :cond_2
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lc/e/a/a/Z;->a(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    .line 228
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v0}, Lc/e/a/a/B;->a(Ljava/lang/Object;Lc/e/a/a/Z;Lc/e/a/a/Z;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 229
    iget-object p1, p0, Lc/e/a/a/B;->k:Lc/e/a/a/Z$a;

    .line 230
    invoke-virtual {v0, v2, p1}, Lc/e/a/a/Z;->a(ILc/e/a/a/Z$a;)Lc/e/a/a/Z$a;

    move-result-object p1

    iget p1, p1, Lc/e/a/a/Z$a;->c:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 231
    invoke-virtual {p0, v0, p1, v1, v2}, Lc/e/a/a/B;->a(Lc/e/a/a/Z;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :catch_0
    :cond_4
    return-object v3
.end method

.method public final a(Lc/e/a/a/Z;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/a/Z;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v1, p0, Lc/e/a/a/B;->j:Lc/e/a/a/Z$b;

    iget-object v2, p0, Lc/e/a/a/B;->k:Lc/e/a/a/Z$a;

    move-object v0, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lc/e/a/a/Z;->a(Lc/e/a/a/Z$b;Lc/e/a/a/Z$a;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lc/e/a/a/Z;Lc/e/a/a/Z;)Ljava/lang/Object;
    .locals 9

    .line 217
    invoke-virtual {p2, p1}, Lc/e/a/a/Z;->a(Ljava/lang/Object;)I

    move-result p1

    .line 218
    invoke-virtual {p2}, Lc/e/a/a/Z;->a()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p1

    const/4 p1, -0x1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 219
    iget-object v5, p0, Lc/e/a/a/B;->k:Lc/e/a/a/Z$a;

    iget-object v6, p0, Lc/e/a/a/B;->j:Lc/e/a/a/Z$b;

    iget v7, p0, Lc/e/a/a/B;->z:I

    iget-boolean v8, p0, Lc/e/a/a/B;->A:Z

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Lc/e/a/a/Z;->a(ILc/e/a/a/Z$a;Lc/e/a/a/Z$b;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    .line 220
    :cond_0
    invoke-virtual {p2, v4}, Lc/e/a/a/Z;->a(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Lc/e/a/a/Z;->a(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    .line 221
    :cond_2
    invoke-virtual {p3, p1}, Lc/e/a/a/Z;->a(I)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public a()V
    .locals 2

    .line 15
    iget-object v0, p0, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lc/e/a/a/o/o;->a(I)Z

    return-void
.end method

.method public final a(F)V
    .locals 5

    .line 164
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0}, Lc/e/a/a/I;->c()Lc/e/a/a/G;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 165
    iget-boolean v1, v0, Lc/e/a/a/G;->d:Z

    if-eqz v1, :cond_2

    .line 166
    invoke-virtual {v0}, Lc/e/a/a/G;->i()Lc/e/a/a/l/s;

    move-result-object v1

    iget-object v1, v1, Lc/e/a/a/l/s;->c:Lc/e/a/a/l/o;

    invoke-virtual {v1}, Lc/e/a/a/l/o;->a()[Lc/e/a/a/l/n;

    move-result-object v1

    .line 167
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 168
    invoke-interface {v4, p1}, Lc/e/a/a/l/n;->a(F)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 169
    :cond_1
    invoke-virtual {v0}, Lc/e/a/a/G;->d()Lc/e/a/a/G;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(I)V
    .locals 3

    .line 5
    iget-object v0, p0, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lc/e/a/a/o/o;->a(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(IZI)V
    .locals 11

    .line 257
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0}, Lc/e/a/a/I;->e()Lc/e/a/a/G;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lc/e/a/a/B;->a:[Lc/e/a/a/Q;

    aget-object v1, v1, p1

    .line 259
    iget-object v2, p0, Lc/e/a/a/B;->v:[Lc/e/a/a/Q;

    aput-object v1, v2, p3

    .line 260
    invoke-interface {v1}, Lc/e/a/a/Q;->getState()I

    move-result p3

    if-nez p3, :cond_2

    .line 261
    invoke-virtual {v0}, Lc/e/a/a/G;->i()Lc/e/a/a/l/s;

    move-result-object p3

    .line 262
    iget-object v2, p3, Lc/e/a/a/l/s;->b:[Lc/e/a/a/T;

    aget-object v3, v2, p1

    .line 263
    iget-object p3, p3, Lc/e/a/a/l/s;->c:Lc/e/a/a/l/o;

    invoke-virtual {p3, p1}, Lc/e/a/a/l/o;->a(I)Lc/e/a/a/l/n;

    move-result-object p3

    .line 264
    invoke-static {p3}, Lc/e/a/a/B;->a(Lc/e/a/a/l/n;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    .line 265
    iget-boolean p3, p0, Lc/e/a/a/B;->x:Z

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget p3, p3, Lc/e/a/a/J;->g:I

    const/4 v6, 0x3

    if-ne p3, v6, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 266
    :goto_1
    iget-object p2, v0, Lc/e/a/a/G;->c:[Lc/e/a/a/j/C;

    aget-object v5, p2, p1

    iget-wide v6, p0, Lc/e/a/a/B;->E:J

    .line 267
    invoke-virtual {v0}, Lc/e/a/a/G;->f()J

    move-result-wide v9

    move-object v2, v1

    .line 268
    invoke-interface/range {v2 .. v10}, Lc/e/a/a/Q;->a(Lc/e/a/a/T;[Lcom/google/android/exoplayer2/Format;Lc/e/a/a/j/C;JZJ)V

    .line 269
    iget-object p1, p0, Lc/e/a/a/B;->n:Lc/e/a/a/u;

    invoke-virtual {p1, v1}, Lc/e/a/a/u;->b(Lc/e/a/a/Q;)V

    if-eqz p3, :cond_2

    .line 270
    invoke-interface {v1}, Lc/e/a/a/Q;->start()V

    :cond_2
    return-void
.end method

.method public final a(JJ)V
    .locals 6

    .line 135
    iget-object v0, p0, Lc/e/a/a/B;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-object v0, v0, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    invoke-virtual {v0}, Lc/e/a/a/j/v$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 136
    :cond_0
    iget-object v0, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-wide v0, v0, Lc/e/a/a/J;->e:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    .line 137
    :cond_1
    iget-object v0, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-object v1, v0, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    iget-object v0, v0, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    iget-object v0, v0, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    .line 138
    invoke-virtual {v1, v0}, Lc/e/a/a/Z;->a(Ljava/lang/Object;)I

    move-result v0

    .line 139
    iget v1, p0, Lc/e/a/a/B;->F:I

    const/4 v2, 0x0

    if-lez v1, :cond_2

    iget-object v3, p0, Lc/e/a/a/B;->p:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    .line 140
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/B$b;

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_4

    .line 141
    iget v3, v1, Lc/e/a/a/B$b;->b:I

    if-gt v3, v0, :cond_3

    if-ne v3, v0, :cond_4

    iget-wide v3, v1, Lc/e/a/a/B$b;->c:J

    cmp-long v1, v3, p1

    if-lez v1, :cond_4

    .line 142
    :cond_3
    iget v1, p0, Lc/e/a/a/B;->F:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lc/e/a/a/B;->F:I

    .line 143
    iget v1, p0, Lc/e/a/a/B;->F:I

    if-lez v1, :cond_2

    iget-object v3, p0, Lc/e/a/a/B;->p:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    .line 144
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/B$b;

    goto :goto_0

    .line 145
    :cond_4
    iget v1, p0, Lc/e/a/a/B;->F:I

    iget-object v3, p0, Lc/e/a/a/B;->p:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v1, p0, Lc/e/a/a/B;->p:Ljava/util/ArrayList;

    iget v3, p0, Lc/e/a/a/B;->F:I

    .line 147
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/B$b;

    goto :goto_1

    :cond_5
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_7

    .line 148
    iget-object v3, v1, Lc/e/a/a/B$b;->d:Ljava/lang/Object;

    if-eqz v3, :cond_7

    iget v3, v1, Lc/e/a/a/B$b;->b:I

    if-lt v3, v0, :cond_6

    if-ne v3, v0, :cond_7

    iget-wide v3, v1, Lc/e/a/a/B$b;->c:J

    cmp-long v5, v3, p1

    if-gtz v5, :cond_7

    .line 149
    :cond_6
    iget v1, p0, Lc/e/a/a/B;->F:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc/e/a/a/B;->F:I

    .line 150
    iget v1, p0, Lc/e/a/a/B;->F:I

    iget-object v3, p0, Lc/e/a/a/B;->p:Ljava/util/ArrayList;

    .line 151
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v1, p0, Lc/e/a/a/B;->p:Ljava/util/ArrayList;

    iget v3, p0, Lc/e/a/a/B;->F:I

    .line 152
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/B$b;

    goto :goto_1

    :cond_7
    :goto_2
    if-eqz v1, :cond_b

    .line 153
    iget-object v3, v1, Lc/e/a/a/B$b;->d:Ljava/lang/Object;

    if-eqz v3, :cond_b

    iget v3, v1, Lc/e/a/a/B$b;->b:I

    if-ne v3, v0, :cond_b

    iget-wide v3, v1, Lc/e/a/a/B$b;->c:J

    cmp-long v5, v3, p1

    if-lez v5, :cond_b

    cmp-long v5, v3, p3

    if-gtz v5, :cond_b

    .line 154
    iget-object v3, v1, Lc/e/a/a/B$b;->a:Lc/e/a/a/O;

    invoke-virtual {p0, v3}, Lc/e/a/a/B;->e(Lc/e/a/a/O;)V

    .line 155
    iget-object v3, v1, Lc/e/a/a/B$b;->a:Lc/e/a/a/O;

    invoke-virtual {v3}, Lc/e/a/a/O;->b()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v1, v1, Lc/e/a/a/B$b;->a:Lc/e/a/a/O;

    invoke-virtual {v1}, Lc/e/a/a/O;->j()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    .line 156
    :cond_8
    iget v1, p0, Lc/e/a/a/B;->F:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc/e/a/a/B;->F:I

    goto :goto_4

    .line 157
    :cond_9
    :goto_3
    iget-object v1, p0, Lc/e/a/a/B;->p:Ljava/util/ArrayList;

    iget v3, p0, Lc/e/a/a/B;->F:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 158
    :goto_4
    iget v1, p0, Lc/e/a/a/B;->F:I

    iget-object v3, p0, Lc/e/a/a/B;->p:Ljava/util/ArrayList;

    .line 159
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    iget-object v1, p0, Lc/e/a/a/B;->p:Ljava/util/ArrayList;

    iget v3, p0, Lc/e/a/a/B;->F:I

    .line 160
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/B$b;

    goto :goto_2

    :cond_a
    move-object v1, v2

    goto :goto_2

    :cond_b
    :goto_5
    return-void
.end method

.method public final a(Lc/e/a/a/B$a;)V
    .locals 13

    .line 170
    iget-object v0, p1, Lc/e/a/a/B$a;->a:Lc/e/a/a/j/v;

    iget-object v1, p0, Lc/e/a/a/B;->u:Lc/e/a/a/j/v;

    if-eq v0, v1, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lc/e/a/a/B;->o:Lc/e/a/a/B$c;

    iget v1, p0, Lc/e/a/a/B;->C:I

    invoke-virtual {v0, v1}, Lc/e/a/a/B$c;->a(I)V

    const/4 v0, 0x0

    .line 172
    iput v0, p0, Lc/e/a/a/B;->C:I

    .line 173
    iget-object v1, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-object v1, v1, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    .line 174
    iget-object v2, p1, Lc/e/a/a/B$a;->b:Lc/e/a/a/Z;

    .line 175
    iget-object p1, p1, Lc/e/a/a/B$a;->c:Ljava/lang/Object;

    .line 176
    iget-object v3, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v3, v2}, Lc/e/a/a/I;->a(Lc/e/a/a/Z;)V

    .line 177
    iget-object v3, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    invoke-virtual {v3, v2, p1}, Lc/e/a/a/J;->a(Lc/e/a/a/Z;Ljava/lang/Object;)Lc/e/a/a/J;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    .line 178
    invoke-virtual {p0}, Lc/e/a/a/B;->q()V

    .line 179
    iget-object p1, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-object p1, p1, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    .line 180
    invoke-virtual {p1}, Lc/e/a/a/j/v$a;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-wide v3, v3, Lc/e/a/a/J;->f:J

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-wide v3, v3, Lc/e/a/a/J;->n:J

    .line 181
    :goto_0
    iget-object v5, p0, Lc/e/a/a/B;->D:Lc/e/a/a/B$d;

    if-eqz v5, :cond_3

    const/4 p1, 0x1

    .line 182
    invoke-virtual {p0, v5, p1}, Lc/e/a/a/B;->a(Lc/e/a/a/B$d;Z)Landroid/util/Pair;

    move-result-object p1

    const/4 v1, 0x0

    .line 183
    iput-object v1, p0, Lc/e/a/a/B;->D:Lc/e/a/a/B$d;

    if-nez p1, :cond_2

    .line 184
    invoke-virtual {p0}, Lc/e/a/a/B;->f()V

    return-void

    .line 185
    :cond_2
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 186
    iget-object v5, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, p1, v1, v2}, Lc/e/a/a/I;->a(Ljava/lang/Object;J)Lc/e/a/a/j/v$a;

    move-result-object p1

    :goto_1
    move-object v6, p1

    move-wide v9, v1

    goto :goto_2

    :cond_3
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    .line 187
    invoke-virtual {v2}, Lc/e/a/a/Z;->c()Z

    move-result v7

    if-nez v7, :cond_4

    .line 188
    iget-boolean p1, p0, Lc/e/a/a/B;->A:Z

    .line 189
    invoke-virtual {v2, p1}, Lc/e/a/a/Z;->a(Z)I

    move-result p1

    .line 190
    invoke-virtual {p0, v2, p1, v5, v6}, Lc/e/a/a/B;->a(Lc/e/a/a/Z;IJ)Landroid/util/Pair;

    move-result-object p1

    .line 191
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 192
    iget-object v5, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, p1, v1, v2}, Lc/e/a/a/I;->a(Ljava/lang/Object;J)Lc/e/a/a/j/v$a;

    move-result-object p1

    goto :goto_1

    .line 193
    :cond_4
    iget-object v7, p1, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    invoke-virtual {v2, v7}, Lc/e/a/a/Z;->a(Ljava/lang/Object;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    .line 194
    iget-object p1, p1, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v2}, Lc/e/a/a/B;->a(Ljava/lang/Object;Lc/e/a/a/Z;Lc/e/a/a/Z;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_5

    .line 195
    invoke-virtual {p0}, Lc/e/a/a/B;->f()V

    return-void

    .line 196
    :cond_5
    iget-object v1, p0, Lc/e/a/a/B;->k:Lc/e/a/a/Z$a;

    .line 197
    invoke-virtual {v2, p1, v1}, Lc/e/a/a/Z;->a(Ljava/lang/Object;Lc/e/a/a/Z$a;)Lc/e/a/a/Z$a;

    move-result-object p1

    iget p1, p1, Lc/e/a/a/Z$a;->c:I

    .line 198
    invoke-virtual {p0, v2, p1, v5, v6}, Lc/e/a/a/B;->a(Lc/e/a/a/Z;IJ)Landroid/util/Pair;

    move-result-object p1

    .line 199
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 200
    iget-object v5, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, p1, v1, v2}, Lc/e/a/a/I;->a(Ljava/lang/Object;J)Lc/e/a/a/j/v$a;

    move-result-object p1

    goto :goto_1

    .line 201
    :cond_6
    invoke-virtual {p1}, Lc/e/a/a/j/v$a;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 202
    iget-object v1, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    iget-object p1, p1, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    invoke-virtual {v1, p1, v3, v4}, Lc/e/a/a/I;->a(Ljava/lang/Object;J)Lc/e/a/a/j/v$a;

    move-result-object p1

    :cond_7
    move-object v6, p1

    move-wide v9, v3

    .line 203
    :goto_2
    iget-object p1, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-object p1, p1, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    invoke-virtual {p1, v6}, Lc/e/a/a/j/v$a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    cmp-long p1, v3, v9

    if-nez p1, :cond_8

    .line 204
    iget-object p1, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    iget-wide v1, p0, Lc/e/a/a/B;->E:J

    invoke-virtual {p0}, Lc/e/a/a/B;->c()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lc/e/a/a/I;->b(JJ)Z

    move-result p1

    if-nez p1, :cond_c

    .line 205
    invoke-virtual {p0, v0}, Lc/e/a/a/B;->b(Z)V

    goto :goto_5

    .line 206
    :cond_8
    iget-object p1, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {p1}, Lc/e/a/a/I;->c()Lc/e/a/a/G;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 207
    :cond_9
    :goto_3
    invoke-virtual {p1}, Lc/e/a/a/G;->d()Lc/e/a/a/G;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 208
    invoke-virtual {p1}, Lc/e/a/a/G;->d()Lc/e/a/a/G;

    move-result-object p1

    .line 209
    iget-object v1, p1, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-object v1, v1, Lc/e/a/a/H;->a:Lc/e/a/a/j/v$a;

    invoke-virtual {v1, v6}, Lc/e/a/a/j/v$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 210
    iget-object v1, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    iget-object v2, p1, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    invoke-virtual {v1, v2}, Lc/e/a/a/I;->a(Lc/e/a/a/H;)Lc/e/a/a/H;

    move-result-object v1

    iput-object v1, p1, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    goto :goto_3

    .line 211
    :cond_a
    invoke-virtual {v6}, Lc/e/a/a/j/v$a;->a()Z

    move-result p1

    if-eqz p1, :cond_b

    const-wide/16 v1, 0x0

    goto :goto_4

    :cond_b
    move-wide v1, v9

    .line 212
    :goto_4
    invoke-virtual {p0, v6, v1, v2}, Lc/e/a/a/B;->a(Lc/e/a/a/j/v$a;J)J

    move-result-wide v7

    .line 213
    iget-object v5, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    .line 214
    invoke-virtual {p0}, Lc/e/a/a/B;->e()J

    move-result-wide v11

    .line 215
    invoke-virtual/range {v5 .. v12}, Lc/e/a/a/J;->a(Lc/e/a/a/j/v$a;JJJ)Lc/e/a/a/J;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    .line 216
    :cond_c
    :goto_5
    invoke-virtual {p0, v0}, Lc/e/a/a/B;->a(Z)V

    return-void
.end method

.method public final a(Lc/e/a/a/B$d;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 19
    iget-object v2, v1, Lc/e/a/a/B;->o:Lc/e/a/a/B$c;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lc/e/a/a/B$c;->a(I)V

    .line 20
    invoke-virtual {v1, v0, v3}, Lc/e/a/a/B;->a(Lc/e/a/a/B$d;Z)Landroid/util/Pair;

    move-result-object v2

    const-wide/16 v4, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    if-nez v2, :cond_0

    .line 21
    iget-object v2, v1, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-boolean v9, v1, Lc/e/a/a/B;->A:Z

    iget-object v10, v1, Lc/e/a/a/B;->j:Lc/e/a/a/Z$b;

    invoke-virtual {v2, v9, v10}, Lc/e/a/a/J;->a(ZLc/e/a/a/Z$b;)Lc/e/a/a/j/v$a;

    move-result-object v2

    move-object v15, v2

    move-wide v12, v6

    move-wide/from16 v18, v12

    :goto_0
    const/4 v2, 0x1

    goto :goto_2

    .line 22
    :cond_0
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 23
    iget-object v10, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 24
    iget-object v12, v1, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v12, v9, v10, v11}, Lc/e/a/a/I;->a(Ljava/lang/Object;J)Lc/e/a/a/j/v$a;

    move-result-object v9

    .line 25
    invoke-virtual {v9}, Lc/e/a/a/j/v$a;->a()Z

    move-result v12

    if-eqz v12, :cond_1

    move-wide v12, v4

    move-object v15, v9

    move-wide/from16 v18, v10

    goto :goto_0

    .line 26
    :cond_1
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 27
    iget-wide v14, v0, Lc/e/a/a/B$d;->c:J

    cmp-long v2, v14, v6

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move-object v15, v9

    move-wide/from16 v18, v10

    :goto_2
    const/4 v9, 0x2

    .line 28
    :try_start_0
    iget-object v10, v1, Lc/e/a/a/B;->u:Lc/e/a/a/j/v;

    if-eqz v10, :cond_a

    iget v10, v1, Lc/e/a/a/B;->C:I

    if-lez v10, :cond_3

    goto :goto_5

    :cond_3
    cmp-long v0, v12, v6

    if-nez v0, :cond_4

    const/4 v0, 0x4

    .line 29
    invoke-virtual {v1, v0}, Lc/e/a/a/B;->c(I)V

    .line 30
    invoke-virtual {v1, v8, v8, v3, v8}, Lc/e/a/a/B;->a(ZZZZ)V

    goto :goto_6

    .line 31
    :cond_4
    iget-object v0, v1, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-object v0, v0, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    invoke-virtual {v15, v0}, Lc/e/a/a/j/v$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 32
    iget-object v0, v1, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0}, Lc/e/a/a/I;->e()Lc/e/a/a/G;

    move-result-object v0

    if-eqz v0, :cond_5

    cmp-long v6, v12, v4

    if-eqz v6, :cond_5

    .line 33
    iget-object v0, v0, Lc/e/a/a/G;->a:Lc/e/a/a/j/u;

    iget-object v4, v1, Lc/e/a/a/B;->s:Lc/e/a/a/V;

    .line 34
    invoke-interface {v0, v12, v13, v4}, Lc/e/a/a/j/u;->a(JLc/e/a/a/V;)J

    move-result-wide v4

    goto :goto_3

    :cond_5
    move-wide v4, v12

    .line 35
    :goto_3
    invoke-static {v4, v5}, Lc/e/a/a/q;->b(J)J

    move-result-wide v6

    iget-object v0, v1, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-wide v10, v0, Lc/e/a/a/J;->n:J

    invoke-static {v10, v11}, Lc/e/a/a/q;->b(J)J

    move-result-wide v10

    cmp-long v0, v6, v10

    if-nez v0, :cond_8

    .line 36
    iget-object v0, v1, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-wide v3, v0, Lc/e/a/a/J;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    iget-object v14, v1, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    .line 38
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/B;->e()J

    move-result-wide v20

    move-wide/from16 v16, v3

    .line 39
    invoke-virtual/range {v14 .. v21}, Lc/e/a/a/J;->a(Lc/e/a/a/j/v$a;JJJ)Lc/e/a/a/J;

    move-result-object v0

    iput-object v0, v1, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    if-eqz v2, :cond_6

    .line 40
    iget-object v0, v1, Lc/e/a/a/B;->o:Lc/e/a/a/B$c;

    invoke-virtual {v0, v9}, Lc/e/a/a/B$c;->b(I)V

    :cond_6
    return-void

    :cond_7
    move-wide v4, v12

    .line 41
    :cond_8
    :try_start_1
    invoke-virtual {v1, v15, v4, v5}, Lc/e/a/a/B;->a(Lc/e/a/a/j/v$a;J)J

    move-result-wide v4

    cmp-long v0, v12, v4

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    or-int/2addr v2, v3

    move-wide/from16 v16, v4

    goto :goto_7

    .line 42
    :cond_a
    :goto_5
    iput-object v0, v1, Lc/e/a/a/B;->D:Lc/e/a/a/B$d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    move-wide/from16 v16, v12

    .line 43
    :goto_7
    iget-object v14, v1, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    .line 44
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/B;->e()J

    move-result-wide v20

    .line 45
    invoke-virtual/range {v14 .. v21}, Lc/e/a/a/J;->a(Lc/e/a/a/j/v$a;JJJ)Lc/e/a/a/J;

    move-result-object v0

    iput-object v0, v1, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    if-eqz v2, :cond_b

    .line 46
    iget-object v0, v1, Lc/e/a/a/B;->o:Lc/e/a/a/B$c;

    invoke-virtual {v0, v9}, Lc/e/a/a/B$c;->b(I)V

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    .line 47
    iget-object v14, v1, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    .line 48
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/B;->e()J

    move-result-wide v20

    move-wide/from16 v16, v12

    .line 49
    invoke-virtual/range {v14 .. v21}, Lc/e/a/a/J;->a(Lc/e/a/a/j/v$a;JJJ)Lc/e/a/a/J;

    move-result-object v3

    iput-object v3, v1, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    if-eqz v2, :cond_c

    .line 50
    iget-object v2, v1, Lc/e/a/a/B;->o:Lc/e/a/a/B$c;

    invoke-virtual {v2, v9}, Lc/e/a/a/B$c;->b(I)V

    .line 51
    :cond_c
    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public final a(Lc/e/a/a/G;)V
    .locals 8

    .line 233
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0}, Lc/e/a/a/I;->e()Lc/e/a/a/G;

    move-result-object v0

    if-eqz v0, :cond_6

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 234
    :cond_0
    iget-object v1, p0, Lc/e/a/a/B;->a:[Lc/e/a/a/Q;

    array-length v1, v1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 235
    :goto_0
    iget-object v5, p0, Lc/e/a/a/B;->a:[Lc/e/a/a/Q;

    array-length v6, v5

    if-ge v3, v6, :cond_5

    .line 236
    aget-object v5, v5, v3

    .line 237
    invoke-interface {v5}, Lc/e/a/a/Q;->getState()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    aput-boolean v6, v1, v3

    .line 238
    invoke-virtual {v0}, Lc/e/a/a/G;->i()Lc/e/a/a/l/s;

    move-result-object v6

    invoke-virtual {v6, v3}, Lc/e/a/a/l/s;->a(I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 239
    :cond_2
    aget-boolean v6, v1, v3

    if-eqz v6, :cond_4

    .line 240
    invoke-virtual {v0}, Lc/e/a/a/G;->i()Lc/e/a/a/l/s;

    move-result-object v6

    invoke-virtual {v6, v3}, Lc/e/a/a/l/s;->a(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 241
    invoke-interface {v5}, Lc/e/a/a/Q;->m()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 242
    invoke-interface {v5}, Lc/e/a/a/Q;->j()Lc/e/a/a/j/C;

    move-result-object v6

    iget-object v7, p1, Lc/e/a/a/G;->c:[Lc/e/a/a/j/C;

    aget-object v7, v7, v3

    if-ne v6, v7, :cond_4

    .line 243
    :cond_3
    invoke-virtual {p0, v5}, Lc/e/a/a/B;->a(Lc/e/a/a/Q;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    :cond_5
    iget-object p1, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    .line 245
    invoke-virtual {v0}, Lc/e/a/a/G;->h()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    .line 246
    invoke-virtual {v0}, Lc/e/a/a/G;->i()Lc/e/a/a/l/s;

    move-result-object v0

    .line 247
    invoke-virtual {p1, v2, v0}, Lc/e/a/a/J;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/s;)Lc/e/a/a/J;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    .line 248
    invoke-virtual {p0, v1, v4}, Lc/e/a/a/B;->a([ZI)V

    :cond_6
    :goto_2
    return-void
.end method

.method public a(Lc/e/a/a/K;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    const/16 v1, 0x11

    .line 17
    invoke-interface {v0, v1, p1}, Lc/e/a/a/o/o;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized a(Lc/e/a/a/O;)V
    .locals 2

    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v0, p0, Lc/e/a/a/B;->w:Z

    if-eqz v0, :cond_0

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    .line 7
    invoke-static {v0, v1}, Lc/e/a/a/o/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lc/e/a/a/O;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_0
    :try_start_1
    iget-object v0, p0, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    const/16 v1, 0xf

    invoke-interface {v0, v1, p1}, Lc/e/a/a/o/o;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lc/e/a/a/Q;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lc/e/a/a/B;->n:Lc/e/a/a/u;

    invoke-virtual {v0, p1}, Lc/e/a/a/u;->a(Lc/e/a/a/Q;)V

    .line 162
    invoke-virtual {p0, p1}, Lc/e/a/a/B;->b(Lc/e/a/a/Q;)V

    .line 163
    invoke-interface {p1}, Lc/e/a/a/Q;->e()V

    return-void
.end method

.method public final a(Lc/e/a/a/V;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lc/e/a/a/B;->s:Lc/e/a/a/V;

    return-void
.end method

.method public bridge synthetic a(Lc/e/a/a/j/D;)V
    .locals 0

    .line 1
    check-cast p1, Lc/e/a/a/j/u;

    invoke-virtual {p0, p1}, Lc/e/a/a/B;->d(Lc/e/a/a/j/u;)V

    return-void
.end method

.method public a(Lc/e/a/a/j/u;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Lc/e/a/a/o/o;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lc/e/a/a/j/v;Lc/e/a/a/Z;Ljava/lang/Object;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    new-instance v1, Lc/e/a/a/B$a;

    invoke-direct {v1, p1, p2, p3}, Lc/e/a/a/B$a;-><init>(Lc/e/a/a/j/v;Lc/e/a/a/Z;Ljava/lang/Object;)V

    const/16 p1, 0x8

    invoke-interface {v0, p1, v1}, Lc/e/a/a/o/o;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lc/e/a/a/j/v;ZZ)V
    .locals 2

    .line 2
    iget-object v0, p0, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1, p2, p3, p1}, Lc/e/a/a/o/o;->a(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/s;)V
    .locals 2

    .line 286
    iget-object v0, p0, Lc/e/a/a/B;->e:Lc/e/a/a/F;

    iget-object v1, p0, Lc/e/a/a/B;->a:[Lc/e/a/a/Q;

    iget-object p2, p2, Lc/e/a/a/l/s;->c:Lc/e/a/a/l/o;

    invoke-interface {v0, v1, p1, p2}, Lc/e/a/a/F;->a([Lc/e/a/a/Q;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/o;)V

    return-void
.end method

.method public final a(Z)V
    .locals 5

    .line 271
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0}, Lc/e/a/a/I;->d()Lc/e/a/a/G;

    move-result-object v0

    if-nez v0, :cond_0

    .line 272
    iget-object v1, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-object v1, v1, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-object v1, v1, Lc/e/a/a/H;->a:Lc/e/a/a/j/v$a;

    .line 273
    :goto_0
    iget-object v2, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-object v2, v2, Lc/e/a/a/J;->k:Lc/e/a/a/j/v$a;

    .line 274
    invoke-virtual {v2, v1}, Lc/e/a/a/j/v$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 275
    iget-object v3, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    invoke-virtual {v3, v1}, Lc/e/a/a/J;->a(Lc/e/a/a/j/v$a;)Lc/e/a/a/J;

    move-result-object v1

    iput-object v1, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    .line 276
    :cond_1
    iget-object v1, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    if-nez v0, :cond_2

    iget-wide v3, v1, Lc/e/a/a/J;->n:J

    goto :goto_1

    .line 277
    :cond_2
    invoke-virtual {v0}, Lc/e/a/a/G;->c()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Lc/e/a/a/J;->l:J

    .line 278
    iget-object v1, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    invoke-virtual {p0}, Lc/e/a/a/B;->e()J

    move-result-wide v3

    iput-wide v3, v1, Lc/e/a/a/J;->m:J

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    .line 279
    iget-boolean p1, v0, Lc/e/a/a/G;->d:Z

    if-eqz p1, :cond_4

    .line 280
    invoke-virtual {v0}, Lc/e/a/a/G;->h()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p1

    .line 281
    invoke-virtual {v0}, Lc/e/a/a/G;->i()Lc/e/a/a/l/s;

    move-result-object v0

    .line 282
    invoke-virtual {p0, p1, v0}, Lc/e/a/a/B;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/s;)V

    :cond_4
    return-void
.end method

.method public final a(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4

    .line 78
    iget-boolean v0, p0, Lc/e/a/a/B;->B:Z

    if-eq v0, p1, :cond_1

    .line 79
    iput-boolean p1, p0, Lc/e/a/a/B;->B:Z

    if-nez p1, :cond_1

    .line 80
    iget-object p1, p0, Lc/e/a/a/B;->a:[Lc/e/a/a/Q;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 81
    invoke-interface {v2}, Lc/e/a/a/Q;->getState()I

    move-result v3

    if-nez v3, :cond_0

    .line 82
    invoke-interface {v2}, Lc/e/a/a/Q;->reset()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 83
    monitor-enter p0

    const/4 p1, 0x1

    .line 84
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 86
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(ZZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 87
    iget-boolean p1, p0, Lc/e/a/a/B;->B:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1, v1, p2, p2}, Lc/e/a/a/B;->a(ZZZZ)V

    .line 88
    iget-object p1, p0, Lc/e/a/a/B;->o:Lc/e/a/a/B$c;

    iget p2, p0, Lc/e/a/a/B;->C:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lc/e/a/a/B$c;->a(I)V

    .line 89
    iput v0, p0, Lc/e/a/a/B;->C:I

    .line 90
    iget-object p1, p0, Lc/e/a/a/B;->e:Lc/e/a/a/F;

    invoke-interface {p1}, Lc/e/a/a/F;->f()V

    .line 91
    invoke-virtual {p0, v1}, Lc/e/a/a/B;->c(I)V

    return-void
.end method

.method public final a(ZZZZ)V
    .locals 24

    move-object/from16 v1, p0

    .line 92
    iget-object v0, v1, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lc/e/a/a/o/o;->b(I)V

    const/4 v2, 0x0

    .line 93
    iput-boolean v2, v1, Lc/e/a/a/B;->y:Z

    .line 94
    iget-object v0, v1, Lc/e/a/a/B;->n:Lc/e/a/a/u;

    invoke-virtual {v0}, Lc/e/a/a/u;->f()V

    const-wide/16 v3, 0x0

    .line 95
    iput-wide v3, v1, Lc/e/a/a/B;->E:J

    .line 96
    iget-object v3, v1, Lc/e/a/a/B;->v:[Lc/e/a/a/Q;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    const-string v6, "ExoPlayerImplInternal"

    if-ge v5, v4, :cond_0

    aget-object v0, v3, v5

    .line 97
    :try_start_0
    invoke-virtual {v1, v0}, Lc/e/a/a/B;->a(Lc/e/a/a/Q;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v7, "Disable failed."

    .line 98
    invoke-static {v6, v7, v0}, Lc/e/a/a/o/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 99
    iget-object v3, v1, Lc/e/a/a/B;->a:[Lc/e/a/a/Q;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_1

    aget-object v0, v3, v5

    .line 100
    :try_start_1
    invoke-interface {v0}, Lc/e/a/a/Q;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v7, v0

    const-string v0, "Reset failed."

    .line 101
    invoke-static {v6, v0, v7}, Lc/e/a/a/o/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 102
    :cond_1
    new-array v0, v2, [Lc/e/a/a/Q;

    iput-object v0, v1, Lc/e/a/a/B;->v:[Lc/e/a/a/Q;

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_2

    .line 103
    iput-object v0, v1, Lc/e/a/a/B;->D:Lc/e/a/a/B$d;

    goto :goto_5

    :cond_2
    if-eqz p4, :cond_4

    .line 104
    iget-object v4, v1, Lc/e/a/a/B;->D:Lc/e/a/a/B$d;

    if-nez v4, :cond_3

    iget-object v4, v1, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-object v4, v4, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    invoke-virtual {v4}, Lc/e/a/a/Z;->c()Z

    move-result v4

    if-nez v4, :cond_3

    .line 105
    iget-object v4, v1, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-object v5, v4, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    iget-object v4, v4, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    iget-object v4, v4, Lc/e/a/a/j/v$a;->a:Ljava/lang/Object;

    iget-object v6, v1, Lc/e/a/a/B;->k:Lc/e/a/a/Z$a;

    invoke-virtual {v5, v4, v6}, Lc/e/a/a/Z;->a(Ljava/lang/Object;Lc/e/a/a/Z$a;)Lc/e/a/a/Z$a;

    .line 106
    iget-object v4, v1, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-wide v4, v4, Lc/e/a/a/J;->n:J

    iget-object v6, v1, Lc/e/a/a/B;->k:Lc/e/a/a/Z$a;

    invoke-virtual {v6}, Lc/e/a/a/Z$a;->e()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 107
    new-instance v6, Lc/e/a/a/B$d;

    sget-object v7, Lc/e/a/a/Z;->a:Lc/e/a/a/Z;

    iget-object v8, v1, Lc/e/a/a/B;->k:Lc/e/a/a/Z$a;

    iget v8, v8, Lc/e/a/a/Z$a;->c:I

    invoke-direct {v6, v7, v8, v4, v5}, Lc/e/a/a/B$d;-><init>(Lc/e/a/a/Z;IJ)V

    iput-object v6, v1, Lc/e/a/a/B;->D:Lc/e/a/a/B$d;

    :cond_3
    const/4 v4, 0x1

    goto :goto_6

    :cond_4
    :goto_5
    move/from16 v4, p3

    .line 108
    :goto_6
    iget-object v5, v1, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    if-nez v4, :cond_5

    goto :goto_7

    :cond_5
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v5, v3}, Lc/e/a/a/I;->a(Z)V

    .line 109
    invoke-virtual {v1, v2}, Lc/e/a/a/B;->c(Z)V

    if-eqz p4, :cond_7

    .line 110
    iget-object v3, v1, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    sget-object v5, Lc/e/a/a/Z;->a:Lc/e/a/a/Z;

    invoke-virtual {v3, v5}, Lc/e/a/a/I;->a(Lc/e/a/a/Z;)V

    .line 111
    iget-object v3, v1, Lc/e/a/a/B;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/e/a/a/B$b;

    .line 112
    iget-object v5, v5, Lc/e/a/a/B$b;->a:Lc/e/a/a/O;

    invoke-virtual {v5, v2}, Lc/e/a/a/O;->a(Z)V

    goto :goto_8

    .line 113
    :cond_6
    iget-object v3, v1, Lc/e/a/a/B;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 114
    iput v2, v1, Lc/e/a/a/B;->F:I

    :cond_7
    if-eqz v4, :cond_8

    .line 115
    iget-object v2, v1, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-boolean v3, v1, Lc/e/a/a/B;->A:Z

    iget-object v5, v1, Lc/e/a/a/B;->j:Lc/e/a/a/Z$b;

    .line 116
    invoke-virtual {v2, v3, v5}, Lc/e/a/a/J;->a(ZLc/e/a/a/Z$b;)Lc/e/a/a/j/v$a;

    move-result-object v2

    goto :goto_9

    :cond_8
    iget-object v2, v1, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-object v2, v2, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    :goto_9
    move-object/from16 v17, v2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v4, :cond_9

    move-wide/from16 v22, v2

    goto :goto_a

    .line 117
    :cond_9
    iget-object v5, v1, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-wide v5, v5, Lc/e/a/a/J;->n:J

    move-wide/from16 v22, v5

    :goto_a
    if-eqz v4, :cond_a

    goto :goto_b

    .line 118
    :cond_a
    iget-object v2, v1, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-wide v2, v2, Lc/e/a/a/J;->f:J

    :goto_b
    move-wide v11, v2

    .line 119
    new-instance v2, Lc/e/a/a/J;

    if-eqz p4, :cond_b

    sget-object v3, Lc/e/a/a/Z;->a:Lc/e/a/a/Z;

    goto :goto_c

    :cond_b
    iget-object v3, v1, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-object v3, v3, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    :goto_c
    move-object v6, v3

    if-eqz p4, :cond_c

    move-object v7, v0

    goto :goto_d

    :cond_c
    iget-object v3, v1, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-object v3, v3, Lc/e/a/a/J;->c:Ljava/lang/Object;

    move-object v7, v3

    :goto_d
    iget-object v3, v1, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget v13, v3, Lc/e/a/a/J;->g:I

    const/4 v14, 0x0

    if-eqz p4, :cond_d

    sget-object v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    goto :goto_e

    :cond_d
    iget-object v3, v3, Lc/e/a/a/J;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    :goto_e
    move-object v15, v3

    if-eqz p4, :cond_e

    iget-object v3, v1, Lc/e/a/a/B;->d:Lc/e/a/a/l/s;

    goto :goto_f

    :cond_e
    iget-object v3, v1, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-object v3, v3, Lc/e/a/a/J;->j:Lc/e/a/a/l/s;

    :goto_f
    move-object/from16 v16, v3

    const-wide/16 v20, 0x0

    move-object v5, v2

    move-object/from16 v8, v17

    move-wide/from16 v9, v22

    move-wide/from16 v18, v22

    invoke-direct/range {v5 .. v23}, Lc/e/a/a/J;-><init>(Lc/e/a/a/Z;Ljava/lang/Object;Lc/e/a/a/j/v$a;JJIZLcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/s;Lc/e/a/a/j/v$a;JJJ)V

    iput-object v2, v1, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    if-eqz p2, :cond_f

    .line 120
    iget-object v2, v1, Lc/e/a/a/B;->u:Lc/e/a/a/j/v;

    if-eqz v2, :cond_f

    .line 121
    invoke-interface {v2, v1}, Lc/e/a/a/j/v;->a(Lc/e/a/a/j/v$b;)V

    .line 122
    iput-object v0, v1, Lc/e/a/a/B;->u:Lc/e/a/a/j/v;

    :cond_f
    return-void
.end method

.method public final a([ZI)V
    .locals 4

    .line 249
    new-array p2, p2, [Lc/e/a/a/Q;

    iput-object p2, p0, Lc/e/a/a/B;->v:[Lc/e/a/a/Q;

    .line 250
    iget-object p2, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {p2}, Lc/e/a/a/I;->e()Lc/e/a/a/G;

    move-result-object p2

    invoke-virtual {p2}, Lc/e/a/a/G;->i()Lc/e/a/a/l/s;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 251
    :goto_0
    iget-object v2, p0, Lc/e/a/a/B;->a:[Lc/e/a/a/Q;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 252
    invoke-virtual {p2, v1}, Lc/e/a/a/l/s;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    iget-object v2, p0, Lc/e/a/a/B;->a:[Lc/e/a/a/Q;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lc/e/a/a/Q;->reset()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 254
    :goto_1
    iget-object v2, p0, Lc/e/a/a/B;->a:[Lc/e/a/a/Q;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 255
    invoke-virtual {p2, v0}, Lc/e/a/a/l/s;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    aget-boolean v2, p1, v0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lc/e/a/a/B;->a(IZI)V

    move v1, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final a(Lc/e/a/a/B$b;)Z
    .locals 6

    .line 123
    iget-object v0, p1, Lc/e/a/a/B$b;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 124
    new-instance v0, Lc/e/a/a/B$d;

    iget-object v2, p1, Lc/e/a/a/B$b;->a:Lc/e/a/a/O;

    .line 125
    invoke-virtual {v2}, Lc/e/a/a/O;->g()Lc/e/a/a/Z;

    move-result-object v2

    iget-object v3, p1, Lc/e/a/a/B$b;->a:Lc/e/a/a/O;

    .line 126
    invoke-virtual {v3}, Lc/e/a/a/O;->i()I

    move-result v3

    iget-object v4, p1, Lc/e/a/a/B$b;->a:Lc/e/a/a/O;

    .line 127
    invoke-virtual {v4}, Lc/e/a/a/O;->e()J

    move-result-wide v4

    invoke-static {v4, v5}, Lc/e/a/a/q;->a(J)J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lc/e/a/a/B$d;-><init>(Lc/e/a/a/Z;IJ)V

    .line 128
    invoke-virtual {p0, v0, v1}, Lc/e/a/a/B;->a(Lc/e/a/a/B$d;Z)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 129
    :cond_0
    iget-object v1, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-object v1, v1, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 130
    invoke-virtual {v1, v2}, Lc/e/a/a/Z;->a(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 131
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 132
    invoke-virtual {p1, v1, v2, v3, v0}, Lc/e/a/a/B$b;->a(IJLjava/lang/Object;)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v2, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-object v2, v2, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    invoke-virtual {v2, v0}, Lc/e/a/a/Z;->a(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    return v1

    .line 134
    :cond_2
    iput v0, p1, Lc/e/a/a/B$b;->b:I

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b()V
    .locals 17

    move-object/from16 v0, p0

    .line 22
    iget-object v1, v0, Lc/e/a/a/B;->q:Lc/e/a/a/o/f;

    invoke-interface {v1}, Lc/e/a/a/o/f;->b()J

    move-result-wide v1

    .line 23
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/B;->t()V

    .line 24
    iget-object v3, v0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v3}, Lc/e/a/a/I;->g()Z

    move-result v3

    const-wide/16 v4, 0xa

    if-nez v3, :cond_0

    .line 25
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/B;->j()V

    .line 26
    invoke-virtual {v0, v1, v2, v4, v5}, Lc/e/a/a/B;->b(JJ)V

    return-void

    .line 27
    :cond_0
    iget-object v3, v0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v3}, Lc/e/a/a/I;->e()Lc/e/a/a/G;

    move-result-object v3

    const-string v6, "doSomeWork"

    .line 28
    invoke-static {v6}, Lc/e/a/a/o/G;->a(Ljava/lang/String;)V

    .line 29
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/B;->u()V

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    .line 31
    iget-object v10, v3, Lc/e/a/a/G;->a:Lc/e/a/a/j/u;

    iget-object v11, v0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-wide v11, v11, Lc/e/a/a/J;->n:J

    iget-wide v13, v0, Lc/e/a/a/B;->l:J

    sub-long/2addr v11, v13

    iget-boolean v13, v0, Lc/e/a/a/B;->m:Z

    invoke-interface {v10, v11, v12, v13}, Lc/e/a/a/j/u;->a(JZ)V

    .line 32
    iget-object v10, v0, Lc/e/a/a/B;->v:[Lc/e/a/a/Q;

    array-length v11, v10

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    :goto_0
    if-ge v14, v11, :cond_6

    aget-object v12, v10, v14

    .line 33
    iget-wide v8, v0, Lc/e/a/a/B;->E:J

    invoke-interface {v12, v8, v9, v6, v7}, Lc/e/a/a/Q;->a(JJ)V

    if-eqz v16, :cond_1

    .line 34
    invoke-interface {v12}, Lc/e/a/a/Q;->d()Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    .line 35
    :goto_1
    invoke-interface {v12}, Lc/e/a/a/Q;->c()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {v12}, Lc/e/a/a/Q;->d()Z

    move-result v8

    if-nez v8, :cond_3

    .line 36
    invoke-virtual {v0, v12}, Lc/e/a/a/B;->c(Lc/e/a/a/Q;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v8, 0x1

    :goto_3
    if-nez v8, :cond_4

    .line 37
    invoke-interface {v12}, Lc/e/a/a/Q;->k()V

    :cond_4
    if-eqz v15, :cond_5

    if-eqz v8, :cond_5

    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    add-int/lit8 v14, v14, 0x1

    const-wide/16 v8, 0x3e8

    goto :goto_0

    :cond_6
    if-nez v15, :cond_7

    .line 38
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/B;->j()V

    .line 39
    :cond_7
    iget-object v6, v3, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-wide v6, v6, Lc/e/a/a/H;->e:J

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v16, :cond_9

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v6, v11

    if-eqz v13, :cond_8

    .line 40
    iget-object v11, v0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-wide v11, v11, Lc/e/a/a/J;->n:J

    cmp-long v13, v6, v11

    if-gtz v13, :cond_9

    :cond_8
    iget-object v3, v3, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-boolean v3, v3, Lc/e/a/a/H;->g:Z

    if-eqz v3, :cond_9

    .line 41
    invoke-virtual {v0, v8}, Lc/e/a/a/B;->c(I)V

    .line 42
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/B;->s()V

    goto :goto_5

    .line 43
    :cond_9
    iget-object v3, v0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget v3, v3, Lc/e/a/a/J;->g:I

    if-ne v3, v10, :cond_a

    .line 44
    invoke-virtual {v0, v15}, Lc/e/a/a/B;->h(Z)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 45
    invoke-virtual {v0, v9}, Lc/e/a/a/B;->c(I)V

    .line 46
    iget-boolean v3, v0, Lc/e/a/a/B;->x:Z

    if-eqz v3, :cond_d

    .line 47
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/B;->r()V

    goto :goto_5

    .line 48
    :cond_a
    iget-object v3, v0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget v3, v3, Lc/e/a/a/J;->g:I

    if-ne v3, v9, :cond_d

    iget-object v3, v0, Lc/e/a/a/B;->v:[Lc/e/a/a/Q;

    array-length v3, v3

    if-nez v3, :cond_b

    .line 49
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/B;->g()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_5

    :cond_b
    if-nez v15, :cond_d

    .line 50
    :cond_c
    iget-boolean v3, v0, Lc/e/a/a/B;->x:Z

    iput-boolean v3, v0, Lc/e/a/a/B;->y:Z

    .line 51
    invoke-virtual {v0, v10}, Lc/e/a/a/B;->c(I)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/B;->s()V

    .line 53
    :cond_d
    :goto_5
    iget-object v3, v0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget v3, v3, Lc/e/a/a/J;->g:I

    if-ne v3, v10, :cond_e

    .line 54
    iget-object v3, v0, Lc/e/a/a/B;->v:[Lc/e/a/a/Q;

    array-length v6, v3

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v6, :cond_e

    aget-object v11, v3, v7

    .line 55
    invoke-interface {v11}, Lc/e/a/a/Q;->k()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 56
    :cond_e
    iget-boolean v3, v0, Lc/e/a/a/B;->x:Z

    if-eqz v3, :cond_f

    iget-object v3, v0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget v3, v3, Lc/e/a/a/J;->g:I

    if-eq v3, v9, :cond_10

    :cond_f
    iget-object v3, v0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget v3, v3, Lc/e/a/a/J;->g:I

    if-ne v3, v10, :cond_11

    .line 57
    :cond_10
    invoke-virtual {v0, v1, v2, v4, v5}, Lc/e/a/a/B;->b(JJ)V

    goto :goto_7

    .line 58
    :cond_11
    iget-object v4, v0, Lc/e/a/a/B;->v:[Lc/e/a/a/Q;

    array-length v4, v4

    if-eqz v4, :cond_12

    if-eq v3, v8, :cond_12

    const-wide/16 v3, 0x3e8

    .line 59
    invoke-virtual {v0, v1, v2, v3, v4}, Lc/e/a/a/B;->b(JJ)V

    goto :goto_7

    .line 60
    :cond_12
    iget-object v1, v0, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    invoke-interface {v1, v10}, Lc/e/a/a/o/o;->b(I)V

    .line 61
    :goto_7
    invoke-static {}, Lc/e/a/a/o/G;->a()V

    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 10
    iput p1, p0, Lc/e/a/a/B;->z:I

    .line 11
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0, p1}, Lc/e/a/a/I;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Lc/e/a/a/B;->b(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lc/e/a/a/B;->a(Z)V

    return-void
.end method

.method public final b(J)V
    .locals 4

    .line 64
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    .line 65
    invoke-virtual {v0}, Lc/e/a/a/I;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    .line 66
    invoke-virtual {v0}, Lc/e/a/a/I;->e()Lc/e/a/a/G;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc/e/a/a/G;->d(J)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lc/e/a/a/B;->E:J

    .line 67
    iget-object p1, p0, Lc/e/a/a/B;->n:Lc/e/a/a/u;

    iget-wide v0, p0, Lc/e/a/a/B;->E:J

    invoke-virtual {p1, v0, v1}, Lc/e/a/a/u;->a(J)V

    .line 68
    iget-object p1, p0, Lc/e/a/a/B;->v:[Lc/e/a/a/Q;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    .line 69
    iget-wide v2, p0, Lc/e/a/a/B;->E:J

    invoke-interface {v1, v2, v3}, Lc/e/a/a/Q;->a(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {p0}, Lc/e/a/a/B;->m()V

    return-void
.end method

.method public final b(JJ)V
    .locals 2

    .line 62
    iget-object v0, p0, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lc/e/a/a/o/o;->b(I)V

    .line 63
    iget-object v0, p0, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    add-long/2addr p1, p3

    invoke-interface {v0, v1, p1, p2}, Lc/e/a/a/o/o;->a(IJ)Z

    return-void
.end method

.method public final b(Lc/e/a/a/K;)V
    .locals 5

    .line 80
    iget-object v0, p0, Lc/e/a/a/B;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 81
    iget v0, p1, Lc/e/a/a/K;->b:F

    invoke-virtual {p0, v0}, Lc/e/a/a/B;->a(F)V

    .line 82
    iget-object v0, p0, Lc/e/a/a/B;->a:[Lc/e/a/a/Q;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 83
    iget v4, p1, Lc/e/a/a/K;->b:F

    invoke-interface {v3, v4}, Lc/e/a/a/Q;->a(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Lc/e/a/a/O;)V
    .locals 4

    .line 71
    invoke-virtual {p1}, Lc/e/a/a/O;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 72
    :try_start_0
    invoke-virtual {p1}, Lc/e/a/a/O;->f()Lc/e/a/a/O$b;

    move-result-object v1

    invoke-virtual {p1}, Lc/e/a/a/O;->h()I

    move-result v2

    invoke-virtual {p1}, Lc/e/a/a/O;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lc/e/a/a/O$b;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {p1, v0}, Lc/e/a/a/O;->a(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lc/e/a/a/O;->a(Z)V

    .line 74
    throw v1
.end method

.method public final b(Lc/e/a/a/Q;)V
    .locals 2

    .line 75
    invoke-interface {p1}, Lc/e/a/a/Q;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 76
    invoke-interface {p1}, Lc/e/a/a/Q;->stop()V

    :cond_0
    return-void
.end method

.method public b(Lc/e/a/a/Z;IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    new-instance v1, Lc/e/a/a/B$d;

    invoke-direct {v1, p1, p2, p3, p4}, Lc/e/a/a/B$d;-><init>(Lc/e/a/a/Z;IJ)V

    const/4 p1, 0x3

    invoke-interface {v0, p1, v1}, Lc/e/a/a/o/o;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final b(Lc/e/a/a/j/u;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0, p1}, Lc/e/a/a/I;->a(Lc/e/a/a/j/u;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object p1, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    iget-wide v0, p0, Lc/e/a/a/B;->E:J

    invoke-virtual {p1, v0, v1}, Lc/e/a/a/I;->a(J)V

    .line 79
    invoke-virtual {p0}, Lc/e/a/a/B;->h()V

    return-void
.end method

.method public final b(Lc/e/a/a/j/v;ZZ)V
    .locals 2

    .line 3
    iget v0, p0, Lc/e/a/a/B;->C:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lc/e/a/a/B;->C:I

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, p2, p3}, Lc/e/a/a/B;->a(ZZZZ)V

    .line 5
    iget-object p2, p0, Lc/e/a/a/B;->e:Lc/e/a/a/F;

    invoke-interface {p2}, Lc/e/a/a/F;->a()V

    .line 6
    iput-object p1, p0, Lc/e/a/a/B;->u:Lc/e/a/a/j/v;

    const/4 p2, 0x2

    .line 7
    invoke-virtual {p0, p2}, Lc/e/a/a/B;->c(I)V

    .line 8
    iget-object p3, p0, Lc/e/a/a/B;->f:Lc/e/a/a/n/f;

    invoke-interface {p3}, Lc/e/a/a/n/f;->a()Lc/e/a/a/n/A;

    move-result-object p3

    invoke-interface {p1, p0, p3}, Lc/e/a/a/j/v;->a(Lc/e/a/a/j/v$b;Lc/e/a/a/n/A;)V

    .line 9
    iget-object p1, p0, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    invoke-interface {p1, p2}, Lc/e/a/a/o/o;->a(I)Z

    return-void
.end method

.method public final b(Z)V
    .locals 9

    .line 14
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0}, Lc/e/a/a/I;->e()Lc/e/a/a/G;

    move-result-object v0

    iget-object v0, v0, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-object v2, v0, Lc/e/a/a/H;->a:Lc/e/a/a/j/v$a;

    .line 15
    iget-object v0, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-wide v0, v0, Lc/e/a/a/J;->n:J

    const/4 v3, 0x1

    .line 16
    invoke-virtual {p0, v2, v0, v1, v3}, Lc/e/a/a/B;->a(Lc/e/a/a/j/v$a;JZ)J

    move-result-wide v3

    .line 17
    iget-object v0, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-wide v0, v0, Lc/e/a/a/J;->n:J

    cmp-long v5, v3, v0

    if-eqz v5, :cond_0

    .line 18
    iget-object v1, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-wide v5, v1, Lc/e/a/a/J;->f:J

    .line 19
    invoke-virtual {p0}, Lc/e/a/a/B;->e()J

    move-result-wide v7

    .line 20
    invoke-virtual/range {v1 .. v8}, Lc/e/a/a/J;->a(Lc/e/a/a/j/v$a;JJJ)Lc/e/a/a/J;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    if-eqz p1, :cond_0

    .line 21
    iget-object p1, p0, Lc/e/a/a/B;->o:Lc/e/a/a/B$c;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lc/e/a/a/B$c;->b(I)V

    :cond_0
    return-void
.end method

.method public final c()J
    .locals 9

    .line 9
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0}, Lc/e/a/a/I;->f()Lc/e/a/a/G;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lc/e/a/a/G;->f()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 11
    :goto_0
    iget-object v4, p0, Lc/e/a/a/B;->a:[Lc/e/a/a/Q;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 12
    aget-object v4, v4, v3

    invoke-interface {v4}, Lc/e/a/a/Q;->getState()I

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lc/e/a/a/B;->a:[Lc/e/a/a/Q;

    aget-object v4, v4, v3

    .line 13
    invoke-interface {v4}, Lc/e/a/a/Q;->j()Lc/e/a/a/j/C;

    move-result-object v4

    iget-object v5, v0, Lc/e/a/a/G;->c:[Lc/e/a/a/j/C;

    aget-object v5, v5, v3

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    iget-object v4, p0, Lc/e/a/a/B;->a:[Lc/e/a/a/Q;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lc/e/a/a/Q;->l()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    return-wide v6

    .line 15
    :cond_2
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-wide v1
.end method

.method public final c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget v1, v0, Lc/e/a/a/J;->g:I

    if-eq v1, p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lc/e/a/a/J;->a(I)Lc/e/a/a/J;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    :cond_0
    return-void
.end method

.method public final c(Lc/e/a/a/K;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lc/e/a/a/B;->n:Lc/e/a/a/u;

    invoke-virtual {v0, p1}, Lc/e/a/a/u;->a(Lc/e/a/a/K;)Lc/e/a/a/K;

    return-void
.end method

.method public synthetic c(Lc/e/a/a/O;)V
    .locals 2

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lc/e/a/a/B;->b(Lc/e/a/a/O;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Unexpected error delivering message on external thread."

    .line 7
    invoke-static {v0, v1, p1}, Lc/e/a/a/o/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final c(Lc/e/a/a/j/u;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0, p1}, Lc/e/a/a/I;->a(Lc/e/a/a/j/u;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 17
    :cond_0
    iget-object p1, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {p1}, Lc/e/a/a/I;->d()Lc/e/a/a/G;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lc/e/a/a/B;->n:Lc/e/a/a/u;

    .line 19
    invoke-virtual {v0}, Lc/e/a/a/u;->a()Lc/e/a/a/K;

    move-result-object v0

    iget v0, v0, Lc/e/a/a/K;->b:F

    iget-object v1, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-object v1, v1, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    .line 20
    invoke-virtual {p1, v0, v1}, Lc/e/a/a/G;->a(FLc/e/a/a/Z;)V

    .line 21
    invoke-virtual {p1}, Lc/e/a/a/G;->h()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    invoke-virtual {p1}, Lc/e/a/a/G;->i()Lc/e/a/a/l/s;

    move-result-object p1

    .line 22
    invoke-virtual {p0, v0, p1}, Lc/e/a/a/B;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/s;)V

    .line 23
    iget-object p1, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {p1}, Lc/e/a/a/I;->g()Z

    move-result p1

    if-nez p1, :cond_1

    .line 24
    iget-object p1, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {p1}, Lc/e/a/a/I;->a()Lc/e/a/a/G;

    move-result-object p1

    .line 25
    iget-object p1, p1, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-wide v0, p1, Lc/e/a/a/H;->b:J

    invoke-virtual {p0, v0, v1}, Lc/e/a/a/B;->b(J)V

    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Lc/e/a/a/B;->a(Lc/e/a/a/G;)V

    .line 27
    :cond_1
    invoke-virtual {p0}, Lc/e/a/a/B;->h()V

    return-void
.end method

.method public final c(Z)V
    .locals 2

    .line 3
    iget-object v0, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-boolean v1, v0, Lc/e/a/a/J;->h:Z

    if-eq v1, p1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lc/e/a/a/J;->a(Z)Lc/e/a/a/J;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    :cond_0
    return-void
.end method

.method public final c(Lc/e/a/a/Q;)Z
    .locals 1

    .line 28
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0}, Lc/e/a/a/I;->f()Lc/e/a/a/G;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lc/e/a/a/G;->d()Lc/e/a/a/G;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-boolean v0, v0, Lc/e/a/a/G;->d:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lc/e/a/a/Q;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()Landroid/os/Looper;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/e/a/a/B;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lc/e/a/a/O;)V
    .locals 5

    .line 4
    invoke-virtual {p1}, Lc/e/a/a/O;->e()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lc/e/a/a/B;->e(Lc/e/a/a/O;)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lc/e/a/a/B;->u:Lc/e/a/a/j/v;

    if-eqz v0, :cond_3

    iget v0, p0, Lc/e/a/a/B;->C:I

    if-lez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Lc/e/a/a/B$b;

    invoke-direct {v0, p1}, Lc/e/a/a/B$b;-><init>(Lc/e/a/a/O;)V

    .line 8
    invoke-virtual {p0, v0}, Lc/e/a/a/B;->a(Lc/e/a/a/B$b;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object p1, p0, Lc/e/a/a/B;->p:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lc/e/a/a/B;->p:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v0}, Lc/e/a/a/O;->a(Z)V

    goto :goto_1

    .line 12
    :cond_3
    :goto_0
    iget-object v0, p0, Lc/e/a/a/B;->p:Ljava/util/ArrayList;

    new-instance v1, Lc/e/a/a/B$b;

    invoke-direct {v1, p1}, Lc/e/a/a/B$b;-><init>(Lc/e/a/a/O;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public d(Lc/e/a/a/j/u;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    const/16 v1, 0xa

    invoke-interface {v0, v1, p1}, Lc/e/a/a/o/o;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public d(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, p1, v1}, Lc/e/a/a/o/o;->a(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final e()J
    .locals 2

    .line 14
    iget-object v0, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-wide v0, v0, Lc/e/a/a/J;->l:J

    invoke-virtual {p0, v0, v1}, Lc/e/a/a/B;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(Lc/e/a/a/O;)V
    .locals 2

    .line 9
    invoke-virtual {p1}, Lc/e/a/a/O;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    invoke-interface {v1}, Lc/e/a/a/o/o;->a()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 10
    invoke-virtual {p0, p1}, Lc/e/a/a/B;->b(Lc/e/a/a/O;)V

    .line 11
    iget-object p1, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget p1, p1, Lc/e/a/a/J;->g:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_2

    .line 12
    :cond_0
    iget-object p1, p0, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    invoke-interface {p1, v1}, Lc/e/a/a/o/o;->a(I)Z

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    const/16 v1, 0x10

    invoke-interface {v0, v1, p1}, Lc/e/a/a/o/o;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final e(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lc/e/a/a/B;->y:Z

    .line 2
    iput-boolean p1, p0, Lc/e/a/a/B;->x:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lc/e/a/a/B;->s()V

    .line 4
    invoke-virtual {p0}, Lc/e/a/a/B;->u()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget p1, p1, Lc/e/a/a/J;->g:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lc/e/a/a/B;->r()V

    .line 7
    iget-object p1, p0, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    invoke-interface {p1, v1}, Lc/e/a/a/o/o;->a(I)Z

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 8
    iget-object p1, p0, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    invoke-interface {p1, v1}, Lc/e/a/a/o/o;->a(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final f()V
    .locals 2

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, v0}, Lc/e/a/a/B;->c(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, v0, v0, v1, v0}, Lc/e/a/a/B;->a(ZZZZ)V

    return-void
.end method

.method public final f(Lc/e/a/a/O;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lc/e/a/a/O;->c()Landroid/os/Handler;

    move-result-object v0

    .line 3
    new-instance v1, Lc/e/a/a/n;

    invoke-direct {v1, p0, p1}, Lc/e/a/a/n;-><init>(Lc/e/a/a/B;Lc/e/a/a/O;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public f(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-interface {v0, v2, p1, v1}, Lc/e/a/a/o/o;->a(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final g(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lc/e/a/a/B;->A:Z

    .line 2
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0, p1}, Lc/e/a/a/I;->b(Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lc/e/a/a/B;->b(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lc/e/a/a/B;->a(Z)V

    return-void
.end method

.method public final g()Z
    .locals 6

    .line 5
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0}, Lc/e/a/a/I;->e()Lc/e/a/a/G;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lc/e/a/a/G;->d()Lc/e/a/a/G;

    move-result-object v1

    .line 7
    iget-object v0, v0, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-wide v2, v0, Lc/e/a/a/H;->e:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-wide v4, v0, Lc/e/a/a/J;->n:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1

    if-eqz v1, :cond_0

    iget-boolean v0, v1, Lc/e/a/a/G;->d:Z

    if-nez v0, :cond_1

    iget-object v0, v1, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-object v0, v0, Lc/e/a/a/H;->a:Lc/e/a/a/j/v$a;

    .line 9
    invoke-virtual {v0}, Lc/e/a/a/j/v$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final h()V
    .locals 6

    .line 9
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0}, Lc/e/a/a/I;->d()Lc/e/a/a/G;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lc/e/a/a/G;->e()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lc/e/a/a/B;->c(Z)V

    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, v1, v2}, Lc/e/a/a/B;->a(J)J

    move-result-wide v1

    .line 13
    iget-object v3, p0, Lc/e/a/a/B;->e:Lc/e/a/a/F;

    iget-object v4, p0, Lc/e/a/a/B;->n:Lc/e/a/a/u;

    .line 14
    invoke-virtual {v4}, Lc/e/a/a/u;->a()Lc/e/a/a/K;

    move-result-object v4

    iget v4, v4, Lc/e/a/a/K;->b:F

    .line 15
    invoke-interface {v3, v1, v2, v4}, Lc/e/a/a/F;->a(JF)Z

    move-result v1

    .line 16
    invoke-virtual {p0, v1}, Lc/e/a/a/B;->c(Z)V

    if-eqz v1, :cond_1

    .line 17
    iget-wide v1, p0, Lc/e/a/a/B;->E:J

    invoke-virtual {v0, v1, v2}, Lc/e/a/a/G;->a(J)V

    :cond_1
    return-void
.end method

.method public final h(Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lc/e/a/a/B;->v:[Lc/e/a/a/Q;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/B;->g()Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 3
    :cond_1
    iget-object p1, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-boolean p1, p1, Lc/e/a/a/J;->h:Z

    const/4 v1, 0x1

    if-nez p1, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object p1, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {p1}, Lc/e/a/a/I;->d()Lc/e/a/a/G;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lc/e/a/a/G;->j()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p1, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-boolean p1, p1, Lc/e/a/a/H;->g:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    .line 6
    iget-object p1, p0, Lc/e/a/a/B;->e:Lc/e/a/a/F;

    .line 7
    invoke-virtual {p0}, Lc/e/a/a/B;->e()J

    move-result-wide v2

    iget-object v4, p0, Lc/e/a/a/B;->n:Lc/e/a/a/u;

    invoke-virtual {v4}, Lc/e/a/a/u;->a()Lc/e/a/a/K;

    move-result-object v4

    iget v4, v4, Lc/e/a/a/K;->b:F

    iget-boolean v5, p0, Lc/e/a/a/B;->y:Z

    .line 8
    invoke-interface {p1, v2, v3, v4, v5}, Lc/e/a/a/F;->a(JFZ)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    const-string v0, "ExoPlayerImplInternal"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    return v3

    .line 2
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/e/a/a/K;

    invoke-virtual {p0, p1}, Lc/e/a/a/B;->b(Lc/e/a/a/K;)V

    goto/16 :goto_6

    .line 3
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/e/a/a/O;

    invoke-virtual {p0, p1}, Lc/e/a/a/B;->f(Lc/e/a/a/O;)V

    goto/16 :goto_6

    .line 4
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/e/a/a/O;

    invoke-virtual {p0, p1}, Lc/e/a/a/B;->d(Lc/e/a/a/O;)V

    goto/16 :goto_6

    .line 5
    :pswitch_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v4, p1}, Lc/e/a/a/B;->a(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_6

    .line 6
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lc/e/a/a/B;->g(Z)V

    goto/16 :goto_6

    .line 7
    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lc/e/a/a/B;->b(I)V

    goto/16 :goto_6

    .line 8
    :pswitch_6
    invoke-virtual {p0}, Lc/e/a/a/B;->p()V

    goto/16 :goto_6

    .line 9
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/e/a/a/j/u;

    invoke-virtual {p0, p1}, Lc/e/a/a/B;->b(Lc/e/a/a/j/u;)V

    goto :goto_6

    .line 10
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/e/a/a/j/u;

    invoke-virtual {p0, p1}, Lc/e/a/a/B;->c(Lc/e/a/a/j/u;)V

    goto :goto_6

    .line 11
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/e/a/a/B$a;

    invoke-virtual {p0, p1}, Lc/e/a/a/B;->a(Lc/e/a/a/B$a;)V

    goto :goto_6

    .line 12
    :pswitch_a
    invoke-virtual {p0}, Lc/e/a/a/B;->o()V

    return v2

    .line 13
    :pswitch_b
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0, v3, p1, v2}, Lc/e/a/a/B;->a(ZZZ)V

    goto :goto_6

    .line 14
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/e/a/a/V;

    invoke-virtual {p0, p1}, Lc/e/a/a/B;->a(Lc/e/a/a/V;)V

    goto :goto_6

    .line 15
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/e/a/a/K;

    invoke-virtual {p0, p1}, Lc/e/a/a/B;->c(Lc/e/a/a/K;)V

    goto :goto_6

    .line 16
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/e/a/a/B$d;

    invoke-virtual {p0, p1}, Lc/e/a/a/B;->a(Lc/e/a/a/B$d;)V

    goto :goto_6

    .line 17
    :pswitch_f
    invoke-virtual {p0}, Lc/e/a/a/B;->b()V

    goto :goto_6

    .line 18
    :pswitch_10
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {p0, p1}, Lc/e/a/a/B;->e(Z)V

    goto :goto_6

    .line 19
    :pswitch_11
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lc/e/a/a/j/v;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_5

    :cond_5
    const/4 p1, 0x0

    :goto_5
    invoke-virtual {p0, v4, v5, p1}, Lc/e/a/a/B;->b(Lc/e/a/a/j/v;ZZ)V

    .line 20
    :goto_6
    invoke-virtual {p0}, Lc/e/a/a/B;->i()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception p1

    goto :goto_7

    :catch_1
    move-exception p1

    :goto_7
    const-string v4, "Internal runtime error."

    .line 21
    invoke-static {v0, v4, p1}, Lc/e/a/a/o/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/OutOfMemoryError;

    .line 23
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->a(Ljava/lang/OutOfMemoryError;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    goto :goto_8

    :cond_6
    check-cast p1, Ljava/lang/RuntimeException;

    .line 24
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->a(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    .line 25
    :goto_8
    iget-object v0, p0, Lc/e/a/a/B;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 26
    invoke-virtual {p0, v2, v3, v3}, Lc/e/a/a/B;->a(ZZZ)V

    .line 27
    invoke-virtual {p0}, Lc/e/a/a/B;->i()V

    goto :goto_9

    :catch_2
    move-exception p1

    const-string v4, "Source error."

    .line 28
    invoke-static {v0, v4, p1}, Lc/e/a/a/o/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    iget-object v0, p0, Lc/e/a/a/B;->i:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->a(Ljava/io/IOException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 30
    invoke-virtual {p0, v3, v3, v3}, Lc/e/a/a/B;->a(ZZZ)V

    .line 31
    invoke-virtual {p0}, Lc/e/a/a/B;->i()V

    goto :goto_9

    :catch_3
    move-exception p1

    const-string v4, "Playback error."

    .line 32
    invoke-static {v0, v4, p1}, Lc/e/a/a/o/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    iget-object v0, p0, Lc/e/a/a/B;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 34
    invoke-virtual {p0, v2, v3, v3}, Lc/e/a/a/B;->a(ZZZ)V

    .line 35
    invoke-virtual {p0}, Lc/e/a/a/B;->i()V

    :goto_9
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/e/a/a/B;->o:Lc/e/a/a/B$c;

    iget-object v1, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    invoke-virtual {v0, v1}, Lc/e/a/a/B$c;->a(Lc/e/a/a/J;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lc/e/a/a/B;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Lc/e/a/a/B;->o:Lc/e/a/a/B$c;

    .line 3
    invoke-static {v2}, Lc/e/a/a/B$c;->a(Lc/e/a/a/B$c;)I

    move-result v2

    iget-object v3, p0, Lc/e/a/a/B;->o:Lc/e/a/a/B$c;

    .line 4
    invoke-static {v3}, Lc/e/a/a/B$c;->b(Lc/e/a/a/B$c;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc/e/a/a/B;->o:Lc/e/a/a/B$c;

    .line 5
    invoke-static {v3}, Lc/e/a/a/B$c;->c(Lc/e/a/a/B$c;)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    iget-object v4, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    .line 6
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 8
    iget-object v0, p0, Lc/e/a/a/B;->o:Lc/e/a/a/B$c;

    iget-object v1, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    invoke-virtual {v0, v1}, Lc/e/a/a/B$c;->b(Lc/e/a/a/J;)V

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0}, Lc/e/a/a/I;->d()Lc/e/a/a/G;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v1}, Lc/e/a/a/I;->f()Lc/e/a/a/G;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 3
    iget-boolean v2, v0, Lc/e/a/a/G;->d:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lc/e/a/a/G;->d()Lc/e/a/a/G;

    move-result-object v1

    if-ne v1, v0, :cond_3

    .line 5
    :cond_0
    iget-object v1, p0, Lc/e/a/a/B;->v:[Lc/e/a/a/Q;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 6
    invoke-interface {v4}, Lc/e/a/a/Q;->g()Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, v0, Lc/e/a/a/G;->a:Lc/e/a/a/j/u;

    invoke-interface {v0}, Lc/e/a/a/j/u;->d()V

    :cond_3
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0}, Lc/e/a/a/I;->d()Lc/e/a/a/G;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lc/e/a/a/B;->v:[Lc/e/a/a/Q;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3}, Lc/e/a/a/Q;->g()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lc/e/a/a/B;->u:Lc/e/a/a/j/v;

    invoke-interface {v0}, Lc/e/a/a/j/v;->a()V

    return-void
.end method

.method public final l()V
    .locals 10

    .line 1
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    iget-wide v1, p0, Lc/e/a/a/B;->E:J

    invoke-virtual {v0, v1, v2}, Lc/e/a/a/I;->a(J)V

    .line 2
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0}, Lc/e/a/a/I;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    iget-wide v1, p0, Lc/e/a/a/B;->E:J

    iget-object v3, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    invoke-virtual {v0, v1, v2, v3}, Lc/e/a/a/I;->a(JLc/e/a/a/J;)Lc/e/a/a/H;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lc/e/a/a/B;->k()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v4, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    iget-object v5, p0, Lc/e/a/a/B;->b:[Lc/e/a/a/S;

    iget-object v6, p0, Lc/e/a/a/B;->c:Lc/e/a/a/l/r;

    iget-object v1, p0, Lc/e/a/a/B;->e:Lc/e/a/a/F;

    .line 6
    invoke-interface {v1}, Lc/e/a/a/F;->e()Lc/e/a/a/n/e;

    move-result-object v7

    iget-object v8, p0, Lc/e/a/a/B;->u:Lc/e/a/a/j/v;

    move-object v9, v0

    .line 7
    invoke-virtual/range {v4 .. v9}, Lc/e/a/a/I;->a([Lc/e/a/a/S;Lc/e/a/a/l/r;Lc/e/a/a/n/e;Lc/e/a/a/j/v;Lc/e/a/a/H;)Lc/e/a/a/j/u;

    move-result-object v1

    .line 8
    iget-wide v2, v0, Lc/e/a/a/H;->b:J

    invoke-interface {v1, p0, v2, v3}, Lc/e/a/a/j/u;->a(Lc/e/a/a/j/u$a;J)V

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Lc/e/a/a/B;->c(Z)V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lc/e/a/a/B;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final m()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0}, Lc/e/a/a/I;->c()Lc/e/a/a/G;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lc/e/a/a/G;->i()Lc/e/a/a/l/s;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v1, Lc/e/a/a/l/s;->c:Lc/e/a/a/l/o;

    invoke-virtual {v1}, Lc/e/a/a/l/o;->a()[Lc/e/a/a/l/n;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 5
    invoke-interface {v4}, Lc/e/a/a/l/n;->i()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0}, Lc/e/a/a/G;->d()Lc/e/a/a/G;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public declared-synchronized n()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lc/e/a/a/B;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lc/e/a/a/o/o;->a(I)Z

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-boolean v1, p0, Lc/e/a/a/B;->w:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 5
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 6
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final o()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v0, v0, v0}, Lc/e/a/a/B;->a(ZZZZ)V

    .line 2
    iget-object v1, p0, Lc/e/a/a/B;->e:Lc/e/a/a/F;

    invoke-interface {v1}, Lc/e/a/a/F;->d()V

    .line 3
    invoke-virtual {p0, v0}, Lc/e/a/a/B;->c(I)V

    .line 4
    iget-object v1, p0, Lc/e/a/a/B;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iput-boolean v0, p0, Lc/e/a/a/B;->w:Z

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final p()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v1}, Lc/e/a/a/I;->g()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lc/e/a/a/B;->n:Lc/e/a/a/u;

    invoke-virtual {v1}, Lc/e/a/a/u;->a()Lc/e/a/a/K;

    move-result-object v1

    iget v1, v1, Lc/e/a/a/K;->b:F

    .line 3
    iget-object v2, v0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v2}, Lc/e/a/a/I;->e()Lc/e/a/a/G;

    move-result-object v2

    .line 4
    iget-object v3, v0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v3}, Lc/e/a/a/I;->f()Lc/e/a/a/G;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_0
    if-eqz v2, :cond_d

    .line 5
    iget-boolean v6, v2, Lc/e/a/a/G;->d:Z

    if-nez v6, :cond_1

    goto/16 :goto_5

    .line 6
    :cond_1
    iget-object v6, v0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-object v6, v6, Lc/e/a/a/J;->b:Lc/e/a/a/Z;

    invoke-virtual {v2, v1, v6}, Lc/e/a/a/G;->b(FLc/e/a/a/Z;)Lc/e/a/a/l/s;

    move-result-object v8

    const/4 v6, 0x0

    if-eqz v8, :cond_b

    const/4 v1, 0x4

    if-eqz v5, :cond_8

    .line 7
    iget-object v2, v0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v2}, Lc/e/a/a/I;->e()Lc/e/a/a/G;

    move-result-object v2

    .line 8
    iget-object v3, v0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v3, v2}, Lc/e/a/a/I;->a(Lc/e/a/a/G;)Z

    move-result v11

    .line 9
    iget-object v3, v0, Lc/e/a/a/B;->a:[Lc/e/a/a/Q;

    array-length v3, v3

    new-array v3, v3, [Z

    .line 10
    iget-object v5, v0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-wide v9, v5, Lc/e/a/a/J;->n:J

    move-object v7, v2

    move-object v12, v3

    .line 11
    invoke-virtual/range {v7 .. v12}, Lc/e/a/a/G;->a(Lc/e/a/a/l/s;JZ[Z)J

    move-result-wide v7

    .line 12
    iget-object v5, v0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget v9, v5, Lc/e/a/a/J;->g:I

    if-eq v9, v1, :cond_2

    iget-wide v9, v5, Lc/e/a/a/J;->n:J

    cmp-long v5, v7, v9

    if-eqz v5, :cond_2

    .line 13
    iget-object v12, v0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-object v13, v12, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    iget-wide v9, v12, Lc/e/a/a/J;->f:J

    .line 14
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/B;->e()J

    move-result-wide v18

    move-wide v14, v7

    move-wide/from16 v16, v9

    .line 15
    invoke-virtual/range {v12 .. v19}, Lc/e/a/a/J;->a(Lc/e/a/a/j/v$a;JJJ)Lc/e/a/a/J;

    move-result-object v5

    iput-object v5, v0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    .line 16
    iget-object v5, v0, Lc/e/a/a/B;->o:Lc/e/a/a/B$c;

    invoke-virtual {v5, v1}, Lc/e/a/a/B$c;->b(I)V

    .line 17
    invoke-virtual {v0, v7, v8}, Lc/e/a/a/B;->b(J)V

    .line 18
    :cond_2
    iget-object v5, v0, Lc/e/a/a/B;->a:[Lc/e/a/a/Q;

    array-length v5, v5

    new-array v5, v5, [Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 19
    :goto_1
    iget-object v9, v0, Lc/e/a/a/B;->a:[Lc/e/a/a/Q;

    array-length v10, v9

    if-ge v7, v10, :cond_7

    .line 20
    aget-object v9, v9, v7

    .line 21
    invoke-interface {v9}, Lc/e/a/a/Q;->getState()I

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    aput-boolean v10, v5, v7

    .line 22
    iget-object v10, v2, Lc/e/a/a/G;->c:[Lc/e/a/a/j/C;

    aget-object v10, v10, v7

    if-eqz v10, :cond_4

    add-int/lit8 v8, v8, 0x1

    .line 23
    :cond_4
    aget-boolean v11, v5, v7

    if-eqz v11, :cond_6

    .line 24
    invoke-interface {v9}, Lc/e/a/a/Q;->j()Lc/e/a/a/j/C;

    move-result-object v11

    if-eq v10, v11, :cond_5

    .line 25
    invoke-virtual {v0, v9}, Lc/e/a/a/B;->a(Lc/e/a/a/Q;)V

    goto :goto_3

    .line 26
    :cond_5
    aget-boolean v10, v3, v7

    if-eqz v10, :cond_6

    .line 27
    iget-wide v10, v0, Lc/e/a/a/B;->E:J

    invoke-interface {v9, v10, v11}, Lc/e/a/a/Q;->a(J)V

    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 28
    :cond_7
    iget-object v3, v0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    .line 29
    invoke-virtual {v2}, Lc/e/a/a/G;->h()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v6

    invoke-virtual {v2}, Lc/e/a/a/G;->i()Lc/e/a/a/l/s;

    move-result-object v2

    .line 30
    invoke-virtual {v3, v6, v2}, Lc/e/a/a/J;->a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/l/s;)Lc/e/a/a/J;

    move-result-object v2

    iput-object v2, v0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    .line 31
    invoke-virtual {v0, v5, v8}, Lc/e/a/a/B;->a([ZI)V

    goto :goto_4

    .line 32
    :cond_8
    iget-object v3, v0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v3, v2}, Lc/e/a/a/I;->a(Lc/e/a/a/G;)Z

    .line 33
    iget-boolean v3, v2, Lc/e/a/a/G;->d:Z

    if-eqz v3, :cond_9

    .line 34
    iget-object v3, v2, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-wide v9, v3, Lc/e/a/a/H;->b:J

    iget-wide v11, v0, Lc/e/a/a/B;->E:J

    .line 35
    invoke-virtual {v2, v11, v12}, Lc/e/a/a/G;->c(J)J

    move-result-wide v11

    .line 36
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 37
    invoke-virtual {v2, v8, v9, v10, v6}, Lc/e/a/a/G;->a(Lc/e/a/a/l/s;JZ)J

    .line 38
    :cond_9
    :goto_4
    invoke-virtual {v0, v4}, Lc/e/a/a/B;->a(Z)V

    .line 39
    iget-object v2, v0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget v2, v2, Lc/e/a/a/J;->g:I

    if-eq v2, v1, :cond_a

    .line 40
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/B;->h()V

    .line 41
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/B;->u()V

    .line 42
    iget-object v1, v0, Lc/e/a/a/B;->g:Lc/e/a/a/o/o;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lc/e/a/a/o/o;->a(I)Z

    :cond_a
    return-void

    :cond_b
    if-ne v2, v3, :cond_c

    const/4 v5, 0x0

    .line 43
    :cond_c
    invoke-virtual {v2}, Lc/e/a/a/G;->d()Lc/e/a/a/G;

    move-result-object v2

    goto/16 :goto_0

    :cond_d
    :goto_5
    return-void
.end method

.method public final q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/a/B;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lc/e/a/a/B;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/B$b;

    invoke-virtual {p0, v1}, Lc/e/a/a/B;->a(Lc/e/a/a/B$b;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lc/e/a/a/B;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/a/B$b;

    iget-object v1, v1, Lc/e/a/a/B$b;->a:Lc/e/a/a/O;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc/e/a/a/O;->a(Z)V

    .line 4
    iget-object v1, p0, Lc/e/a/a/B;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lc/e/a/a/B;->p:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public final r()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lc/e/a/a/B;->y:Z

    .line 2
    iget-object v1, p0, Lc/e/a/a/B;->n:Lc/e/a/a/u;

    invoke-virtual {v1}, Lc/e/a/a/u;->e()V

    .line 3
    iget-object v1, p0, Lc/e/a/a/B;->v:[Lc/e/a/a/Q;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 4
    invoke-interface {v3}, Lc/e/a/a/Q;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/a/B;->n:Lc/e/a/a/u;

    invoke-virtual {v0}, Lc/e/a/a/u;->f()V

    .line 2
    iget-object v0, p0, Lc/e/a/a/B;->v:[Lc/e/a/a/Q;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {p0, v3}, Lc/e/a/a/B;->b(Lc/e/a/a/Q;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 14

    .line 1
    iget-object v0, p0, Lc/e/a/a/B;->u:Lc/e/a/a/j/v;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lc/e/a/a/B;->C:I

    if-lez v1, :cond_1

    .line 3
    invoke-interface {v0}, Lc/e/a/a/j/v;->a()V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lc/e/a/a/B;->l()V

    .line 5
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0}, Lc/e/a/a/I;->d()Lc/e/a/a/G;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Lc/e/a/a/G;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-boolean v0, v0, Lc/e/a/a/J;->h:Z

    if-nez v0, :cond_4

    .line 8
    invoke-virtual {p0}, Lc/e/a/a/B;->h()V

    goto :goto_1

    .line 9
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lc/e/a/a/B;->c(Z)V

    .line 10
    :cond_4
    :goto_1
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0}, Lc/e/a/a/I;->g()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 11
    :cond_5
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0}, Lc/e/a/a/I;->e()Lc/e/a/a/G;

    move-result-object v0

    .line 12
    iget-object v2, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v2}, Lc/e/a/a/I;->f()Lc/e/a/a/G;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 13
    :goto_2
    iget-boolean v5, p0, Lc/e/a/a/B;->x:Z

    if-eqz v5, :cond_8

    if-eq v0, v2, :cond_8

    iget-wide v5, p0, Lc/e/a/a/B;->E:J

    .line 14
    invoke-virtual {v0}, Lc/e/a/a/G;->d()Lc/e/a/a/G;

    move-result-object v7

    invoke-virtual {v7}, Lc/e/a/a/G;->g()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-ltz v9, :cond_8

    if-eqz v4, :cond_6

    .line 15
    invoke-virtual {p0}, Lc/e/a/a/B;->i()V

    .line 16
    :cond_6
    iget-object v4, v0, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-boolean v4, v4, Lc/e/a/a/H;->f:Z

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    const/4 v4, 0x3

    .line 17
    :goto_3
    iget-object v5, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v5}, Lc/e/a/a/I;->a()Lc/e/a/a/G;

    move-result-object v5

    .line 18
    invoke-virtual {p0, v0}, Lc/e/a/a/B;->a(Lc/e/a/a/G;)V

    .line 19
    iget-object v6, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-object v0, v5, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-object v7, v0, Lc/e/a/a/H;->a:Lc/e/a/a/j/v$a;

    iget-wide v8, v0, Lc/e/a/a/H;->b:J

    iget-wide v10, v0, Lc/e/a/a/H;->c:J

    .line 20
    invoke-virtual {p0}, Lc/e/a/a/B;->e()J

    move-result-wide v12

    .line 21
    invoke-virtual/range {v6 .. v13}, Lc/e/a/a/J;->a(Lc/e/a/a/j/v$a;JJJ)Lc/e/a/a/J;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    .line 22
    iget-object v0, p0, Lc/e/a/a/B;->o:Lc/e/a/a/B$c;

    invoke-virtual {v0, v4}, Lc/e/a/a/B$c;->b(I)V

    .line 23
    invoke-virtual {p0}, Lc/e/a/a/B;->u()V

    move-object v0, v5

    const/4 v4, 0x1

    goto :goto_2

    .line 24
    :cond_8
    iget-object v0, v2, Lc/e/a/a/G;->f:Lc/e/a/a/H;

    iget-boolean v0, v0, Lc/e/a/a/H;->g:Z

    if-eqz v0, :cond_b

    .line 25
    :goto_4
    iget-object v0, p0, Lc/e/a/a/B;->a:[Lc/e/a/a/Q;

    array-length v3, v0

    if-ge v1, v3, :cond_a

    .line 26
    aget-object v0, v0, v1

    .line 27
    iget-object v3, v2, Lc/e/a/a/G;->c:[Lc/e/a/a/j/C;

    aget-object v3, v3, v1

    if-eqz v3, :cond_9

    .line 28
    invoke-interface {v0}, Lc/e/a/a/Q;->j()Lc/e/a/a/j/C;

    move-result-object v4

    if-ne v4, v3, :cond_9

    .line 29
    invoke-interface {v0}, Lc/e/a/a/Q;->g()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 30
    invoke-interface {v0}, Lc/e/a/a/Q;->h()V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    return-void

    .line 31
    :cond_b
    invoke-virtual {v2}, Lc/e/a/a/G;->d()Lc/e/a/a/G;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x0

    .line 32
    :goto_5
    iget-object v4, p0, Lc/e/a/a/B;->a:[Lc/e/a/a/Q;

    array-length v5, v4

    if-ge v0, v5, :cond_f

    .line 33
    aget-object v4, v4, v0

    .line 34
    iget-object v5, v2, Lc/e/a/a/G;->c:[Lc/e/a/a/j/C;

    aget-object v5, v5, v0

    .line 35
    invoke-interface {v4}, Lc/e/a/a/Q;->j()Lc/e/a/a/j/C;

    move-result-object v6

    if-ne v6, v5, :cond_e

    if-eqz v5, :cond_d

    .line 36
    invoke-interface {v4}, Lc/e/a/a/Q;->g()Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_6

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    return-void

    .line 37
    :cond_f
    invoke-virtual {v2}, Lc/e/a/a/G;->d()Lc/e/a/a/G;

    move-result-object v0

    iget-boolean v0, v0, Lc/e/a/a/G;->d:Z

    if-nez v0, :cond_10

    .line 38
    invoke-virtual {p0}, Lc/e/a/a/B;->j()V

    return-void

    .line 39
    :cond_10
    invoke-virtual {v2}, Lc/e/a/a/G;->i()Lc/e/a/a/l/s;

    move-result-object v0

    .line 40
    iget-object v2, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v2}, Lc/e/a/a/I;->b()Lc/e/a/a/G;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lc/e/a/a/G;->i()Lc/e/a/a/l/s;

    move-result-object v4

    .line 42
    iget-object v5, v2, Lc/e/a/a/G;->a:Lc/e/a/a/j/u;

    .line 43
    invoke-interface {v5}, Lc/e/a/a/j/u;->e()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-eqz v9, :cond_11

    const/4 v5, 0x1

    goto :goto_7

    :cond_11
    const/4 v5, 0x0

    :goto_7
    const/4 v6, 0x0

    .line 44
    :goto_8
    iget-object v7, p0, Lc/e/a/a/B;->a:[Lc/e/a/a/Q;

    array-length v8, v7

    if-ge v6, v8, :cond_17

    .line 45
    aget-object v7, v7, v6

    .line 46
    invoke-virtual {v0, v6}, Lc/e/a/a/l/s;->a(I)Z

    move-result v8

    if-nez v8, :cond_12

    goto :goto_a

    :cond_12
    if-eqz v5, :cond_13

    .line 47
    invoke-interface {v7}, Lc/e/a/a/Q;->h()V

    goto :goto_a

    .line 48
    :cond_13
    invoke-interface {v7}, Lc/e/a/a/Q;->m()Z

    move-result v8

    if-nez v8, :cond_16

    .line 49
    iget-object v8, v4, Lc/e/a/a/l/s;->c:Lc/e/a/a/l/o;

    invoke-virtual {v8, v6}, Lc/e/a/a/l/o;->a(I)Lc/e/a/a/l/n;

    move-result-object v8

    .line 50
    invoke-virtual {v4, v6}, Lc/e/a/a/l/s;->a(I)Z

    move-result v9

    .line 51
    iget-object v10, p0, Lc/e/a/a/B;->b:[Lc/e/a/a/S;

    aget-object v10, v10, v6

    invoke-interface {v10}, Lc/e/a/a/S;->f()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_14

    const/4 v10, 0x1

    goto :goto_9

    :cond_14
    const/4 v10, 0x0

    .line 52
    :goto_9
    iget-object v11, v0, Lc/e/a/a/l/s;->b:[Lc/e/a/a/T;

    aget-object v11, v11, v6

    .line 53
    iget-object v12, v4, Lc/e/a/a/l/s;->b:[Lc/e/a/a/T;

    aget-object v12, v12, v6

    if-eqz v9, :cond_15

    .line 54
    invoke-virtual {v12, v11}, Lc/e/a/a/T;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    if-nez v10, :cond_15

    .line 55
    invoke-static {v8}, Lc/e/a/a/B;->a(Lc/e/a/a/l/n;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    .line 56
    iget-object v9, v2, Lc/e/a/a/G;->c:[Lc/e/a/a/j/C;

    aget-object v9, v9, v6

    .line 57
    invoke-virtual {v2}, Lc/e/a/a/G;->f()J

    move-result-wide v10

    .line 58
    invoke-interface {v7, v8, v9, v10, v11}, Lc/e/a/a/Q;->a([Lcom/google/android/exoplayer2/Format;Lc/e/a/a/j/C;J)V

    goto :goto_a

    .line 59
    :cond_15
    invoke-interface {v7}, Lc/e/a/a/Q;->h()V

    :cond_16
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_17
    return-void
.end method

.method public final u()V
    .locals 10

    .line 1
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0}, Lc/e/a/a/I;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0}, Lc/e/a/a/I;->e()Lc/e/a/a/G;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lc/e/a/a/G;->a:Lc/e/a/a/j/u;

    invoke-interface {v1}, Lc/e/a/a/j/u;->e()J

    move-result-wide v4

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v1

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {p0, v4, v5}, Lc/e/a/a/B;->b(J)V

    .line 5
    iget-object v0, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-wide v0, v0, Lc/e/a/a/J;->n:J

    cmp-long v2, v4, v0

    if-eqz v2, :cond_2

    .line 6
    iget-object v2, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-object v3, v2, Lc/e/a/a/J;->d:Lc/e/a/a/j/v$a;

    iget-wide v6, v2, Lc/e/a/a/J;->f:J

    .line 7
    invoke-virtual {p0}, Lc/e/a/a/B;->e()J

    move-result-wide v8

    .line 8
    invoke-virtual/range {v2 .. v9}, Lc/e/a/a/J;->a(Lc/e/a/a/j/v$a;JJJ)Lc/e/a/a/J;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    .line 9
    iget-object v0, p0, Lc/e/a/a/B;->o:Lc/e/a/a/B$c;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lc/e/a/a/B$c;->b(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lc/e/a/a/B;->n:Lc/e/a/a/u;

    invoke-virtual {v1}, Lc/e/a/a/u;->g()J

    move-result-wide v1

    iput-wide v1, p0, Lc/e/a/a/B;->E:J

    .line 11
    iget-wide v1, p0, Lc/e/a/a/B;->E:J

    invoke-virtual {v0, v1, v2}, Lc/e/a/a/G;->c(J)J

    move-result-wide v0

    .line 12
    iget-object v2, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iget-wide v2, v2, Lc/e/a/a/J;->n:J

    invoke-virtual {p0, v2, v3, v0, v1}, Lc/e/a/a/B;->a(JJ)V

    .line 13
    iget-object v2, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    iput-wide v0, v2, Lc/e/a/a/J;->n:J

    .line 14
    :cond_2
    :goto_0
    iget-object v0, p0, Lc/e/a/a/B;->r:Lc/e/a/a/I;

    invoke-virtual {v0}, Lc/e/a/a/I;->d()Lc/e/a/a/G;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    invoke-virtual {v0}, Lc/e/a/a/G;->c()J

    move-result-wide v2

    iput-wide v2, v1, Lc/e/a/a/J;->l:J

    .line 16
    iget-object v0, p0, Lc/e/a/a/B;->t:Lc/e/a/a/J;

    invoke-virtual {p0}, Lc/e/a/a/B;->e()J

    move-result-wide v1

    iput-wide v1, v0, Lc/e/a/a/J;->m:J

    return-void
.end method
