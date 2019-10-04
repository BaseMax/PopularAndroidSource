.class public final Lc/e/a/a/n/s;
.super Lcom/google/android/exoplayer2/upstream/HttpDataSource$a;
.source "DefaultHttpDataSourceFactory.java"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lc/e/a/a/n/A;

.field public final d:I

.field public final e:I

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc/e/a/a/n/A;)V
    .locals 6

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lc/e/a/a/n/s;-><init>(Ljava/lang/String;Lc/e/a/a/n/A;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lc/e/a/a/n/A;IIZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$a;-><init>()V

    .line 3
    invoke-static {p1}, Lc/e/a/a/o/e;->a(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lc/e/a/a/n/s;->b:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lc/e/a/a/n/s;->c:Lc/e/a/a/n/A;

    .line 5
    iput p3, p0, Lc/e/a/a/n/s;->d:I

    .line 6
    iput p4, p0, Lc/e/a/a/n/s;->e:I

    .line 7
    iput-boolean p5, p0, Lc/e/a/a/n/s;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;)Lc/e/a/a/n/r;
    .locals 8

    .line 2
    new-instance v7, Lc/e/a/a/n/r;

    iget-object v1, p0, Lc/e/a/a/n/s;->b:Ljava/lang/String;

    iget v3, p0, Lc/e/a/a/n/s;->d:I

    iget v4, p0, Lc/e/a/a/n/s;->e:I

    iget-boolean v5, p0, Lc/e/a/a/n/s;->f:Z

    const/4 v2, 0x0

    move-object v0, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lc/e/a/a/n/r;-><init>(Ljava/lang/String;Lc/e/a/a/o/x;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$c;)V

    .line 3
    iget-object p1, p0, Lc/e/a/a/n/s;->c:Lc/e/a/a/n/A;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v7, p1}, Lc/e/a/a/n/g;->a(Lc/e/a/a/n/A;)V

    :cond_0
    return-object v7
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;)Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/e/a/a/n/s;->a(Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;)Lc/e/a/a/n/r;

    move-result-object p1

    return-object p1
.end method
