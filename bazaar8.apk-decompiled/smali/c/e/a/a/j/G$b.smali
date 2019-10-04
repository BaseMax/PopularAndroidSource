.class public final Lc/e/a/a/j/G$b;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field public final a:Lc/e/a/a/n/l;

.field public final b:Lc/e/a/a/n/z;

.field public c:[B


# direct methods
.method public constructor <init>(Lc/e/a/a/n/l;Lc/e/a/a/n/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/j/G$b;->a:Lc/e/a/a/n/l;

    .line 3
    new-instance p1, Lc/e/a/a/n/z;

    invoke-direct {p1, p2}, Lc/e/a/a/n/z;-><init>(Lc/e/a/a/n/j;)V

    iput-object p1, p0, Lc/e/a/a/j/G$b;->b:Lc/e/a/a/n/z;

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/j/G$b;)Lc/e/a/a/n/z;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/j/G$b;->b:Lc/e/a/a/n/z;

    return-object p0
.end method

.method public static synthetic b(Lc/e/a/a/j/G$b;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/j/G$b;->c:[B

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 2
    iget-object v0, p0, Lc/e/a/a/j/G$b;->b:Lc/e/a/a/n/z;

    invoke-virtual {v0}, Lc/e/a/a/n/z;->e()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lc/e/a/a/j/G$b;->b:Lc/e/a/a/n/z;

    iget-object v1, p0, Lc/e/a/a/j/G$b;->a:Lc/e/a/a/n/l;

    invoke-virtual {v0, v1}, Lc/e/a/a/n/z;->a(Lc/e/a/a/n/l;)J

    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lc/e/a/a/j/G$b;->b:Lc/e/a/a/n/z;

    invoke-virtual {v0}, Lc/e/a/a/n/z;->b()J

    move-result-wide v0

    long-to-int v1, v0

    .line 5
    iget-object v0, p0, Lc/e/a/a/j/G$b;->c:[B

    if-nez v0, :cond_0

    const/16 v0, 0x400

    .line 6
    new-array v0, v0, [B

    iput-object v0, p0, Lc/e/a/a/j/G$b;->c:[B

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/G$b;->c:[B

    array-length v0, v0

    if-ne v1, v0, :cond_1

    .line 8
    iget-object v0, p0, Lc/e/a/a/j/G$b;->c:[B

    iget-object v2, p0, Lc/e/a/a/j/G$b;->c:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/j/G$b;->c:[B

    .line 9
    :cond_1
    :goto_1
    iget-object v0, p0, Lc/e/a/a/j/G$b;->b:Lc/e/a/a/n/z;

    iget-object v2, p0, Lc/e/a/a/j/G$b;->c:[B

    iget-object v3, p0, Lc/e/a/a/j/G$b;->c:[B

    array-length v3, v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Lc/e/a/a/n/z;->read([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lc/e/a/a/j/G$b;->b:Lc/e/a/a/n/z;

    invoke-static {v0}, Lc/e/a/a/o/I;->a(Lc/e/a/a/n/j;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc/e/a/a/j/G$b;->b:Lc/e/a/a/n/z;

    invoke-static {v1}, Lc/e/a/a/o/I;->a(Lc/e/a/a/n/j;)V

    .line 11
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public b()V
    .locals 0

    return-void
.end method
