.class public Lc/e/a/a/e/f/e;
.super Ljava/lang/Object;
.source "OggExtractor.java"

# interfaces
.implements Lc/e/a/a/e/g;


# static fields
.field public static final a:Lc/e/a/a/e/j;


# instance fields
.field public b:Lc/e/a/a/e/i;

.field public c:Lc/e/a/a/e/f/k;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/a/e/f/a;->a:Lc/e/a/a/e/f/a;

    sput-object v0, Lc/e/a/a/e/f/e;->a:Lc/e/a/a/e/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lc/e/a/a/o/v;)Lc/e/a/a/o/v;
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Lc/e/a/a/o/v;->e(I)V

    return-object p0
.end method

.method public static synthetic b()[Lc/e/a/a/e/g;
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Lc/e/a/a/e/g;

    new-instance v1, Lc/e/a/a/e/f/e;

    invoke-direct {v1}, Lc/e/a/a/e/f/e;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public a(Lc/e/a/a/e/h;Lc/e/a/a/e/n;)I
    .locals 4

    .line 5
    iget-object v0, p0, Lc/e/a/a/e/f/e;->c:Lc/e/a/a/e/f/k;

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lc/e/a/a/e/f/e;->b(Lc/e/a/a/e/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {p1}, Lc/e/a/a/e/h;->b()V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Failed to determine bitstream type"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lc/e/a/a/e/f/e;->d:Z

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lc/e/a/a/e/f/e;->b:Lc/e/a/a/e/i;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lc/e/a/a/e/i;->a(II)Lc/e/a/a/e/q;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lc/e/a/a/e/f/e;->b:Lc/e/a/a/e/i;

    invoke-interface {v1}, Lc/e/a/a/e/i;->a()V

    .line 12
    iget-object v1, p0, Lc/e/a/a/e/f/e;->c:Lc/e/a/a/e/f/k;

    iget-object v3, p0, Lc/e/a/a/e/f/e;->b:Lc/e/a/a/e/i;

    invoke-virtual {v1, v3, v0}, Lc/e/a/a/e/f/k;->a(Lc/e/a/a/e/i;Lc/e/a/a/e/q;)V

    .line 13
    iput-boolean v2, p0, Lc/e/a/a/e/f/e;->d:Z

    .line 14
    :cond_2
    iget-object v0, p0, Lc/e/a/a/e/f/e;->c:Lc/e/a/a/e/f/k;

    invoke-virtual {v0, p1, p2}, Lc/e/a/a/e/f/k;->a(Lc/e/a/a/e/h;Lc/e/a/a/e/n;)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(JJ)V
    .locals 1

    .line 3
    iget-object v0, p0, Lc/e/a/a/e/f/e;->c:Lc/e/a/a/e/f/k;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Lc/e/a/a/e/f/k;->a(JJ)V

    :cond_0
    return-void
.end method

.method public a(Lc/e/a/a/e/i;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/e/a/a/e/f/e;->b:Lc/e/a/a/e/i;

    return-void
.end method

.method public a(Lc/e/a/a/e/h;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lc/e/a/a/e/f/e;->b(Lc/e/a/a/e/h;)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lc/e/a/a/e/h;)Z
    .locals 5

    .line 2
    new-instance v0, Lc/e/a/a/e/f/g;

    invoke-direct {v0}, Lc/e/a/a/e/f/g;-><init>()V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, p1, v1}, Lc/e/a/a/e/f/g;->a(Lc/e/a/a/e/h;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Lc/e/a/a/e/f/g;->c:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget v0, v0, Lc/e/a/a/e/f/g;->j:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    new-instance v2, Lc/e/a/a/o/v;

    invoke-direct {v2, v0}, Lc/e/a/a/o/v;-><init>(I)V

    .line 6
    iget-object v4, v2, Lc/e/a/a/o/v;->a:[B

    invoke-interface {p1, v4, v3, v0}, Lc/e/a/a/e/h;->a([BII)V

    .line 7
    invoke-static {v2}, Lc/e/a/a/e/f/e;->a(Lc/e/a/a/o/v;)Lc/e/a/a/o/v;

    invoke-static {v2}, Lc/e/a/a/e/f/d;->c(Lc/e/a/a/o/v;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    new-instance p1, Lc/e/a/a/e/f/d;

    invoke-direct {p1}, Lc/e/a/a/e/f/d;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/f/e;->c:Lc/e/a/a/e/f/k;

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v2}, Lc/e/a/a/e/f/e;->a(Lc/e/a/a/o/v;)Lc/e/a/a/o/v;

    invoke-static {v2}, Lc/e/a/a/e/f/m;->c(Lc/e/a/a/o/v;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    new-instance p1, Lc/e/a/a/e/f/m;

    invoke-direct {p1}, Lc/e/a/a/e/f/m;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/f/e;->c:Lc/e/a/a/e/f/k;

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {v2}, Lc/e/a/a/e/f/e;->a(Lc/e/a/a/o/v;)Lc/e/a/a/o/v;

    invoke-static {v2}, Lc/e/a/a/e/f/i;->b(Lc/e/a/a/o/v;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    new-instance p1, Lc/e/a/a/e/f/i;

    invoke-direct {p1}, Lc/e/a/a/e/f/i;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/f/e;->c:Lc/e/a/a/e/f/k;

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v3
.end method
