.class public final Lc/e/a/a/e/h/h;
.super Ljava/lang/Object;
.source "Ac4Extractor.java"

# interfaces
.implements Lc/e/a/a/e/g;


# static fields
.field public static final a:Lc/e/a/a/e/j;

.field public static final b:I


# instance fields
.field public final c:J

.field public final d:Lc/e/a/a/e/h/i;

.field public final e:Lc/e/a/a/o/v;

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/a/e/h/b;->a:Lc/e/a/a/e/h/b;

    sput-object v0, Lc/e/a/a/e/h/h;->a:Lc/e/a/a/e/j;

    const-string v0, "ID3"

    .line 2
    invoke-static {v0}, Lc/e/a/a/o/I;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lc/e/a/a/e/h/h;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lc/e/a/a/e/h/h;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lc/e/a/a/e/h/h;->c:J

    .line 4
    new-instance p1, Lc/e/a/a/e/h/i;

    invoke-direct {p1}, Lc/e/a/a/e/h/i;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/h/h;->d:Lc/e/a/a/e/h/i;

    .line 5
    new-instance p1, Lc/e/a/a/o/v;

    const/16 p2, 0x4000

    invoke-direct {p1, p2}, Lc/e/a/a/o/v;-><init>(I)V

    iput-object p1, p0, Lc/e/a/a/e/h/h;->e:Lc/e/a/a/o/v;

    return-void
.end method

.method public static synthetic b()[Lc/e/a/a/e/g;
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Lc/e/a/a/e/g;

    new-instance v1, Lc/e/a/a/e/h/h;

    invoke-direct {v1}, Lc/e/a/a/e/h/h;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public a(Lc/e/a/a/e/h;Lc/e/a/a/e/n;)I
    .locals 3

    .line 22
    iget-object p2, p0, Lc/e/a/a/e/h/h;->e:Lc/e/a/a/o/v;

    iget-object p2, p2, Lc/e/a/a/o/v;->a:[B

    const/4 v0, 0x0

    const/16 v1, 0x4000

    invoke-interface {p1, p2, v0, v1}, Lc/e/a/a/e/h;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 23
    :cond_0
    iget-object p2, p0, Lc/e/a/a/e/h/h;->e:Lc/e/a/a/o/v;

    invoke-virtual {p2, v0}, Lc/e/a/a/o/v;->e(I)V

    .line 24
    iget-object p2, p0, Lc/e/a/a/e/h/h;->e:Lc/e/a/a/o/v;

    invoke-virtual {p2, p1}, Lc/e/a/a/o/v;->d(I)V

    .line 25
    iget-boolean p1, p0, Lc/e/a/a/e/h/h;->f:Z

    if-nez p1, :cond_1

    .line 26
    iget-object p1, p0, Lc/e/a/a/e/h/h;->d:Lc/e/a/a/e/h/i;

    iget-wide v1, p0, Lc/e/a/a/e/h/h;->c:J

    const/4 p2, 0x4

    invoke-virtual {p1, v1, v2, p2}, Lc/e/a/a/e/h/i;->a(JI)V

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lc/e/a/a/e/h/h;->f:Z

    .line 28
    :cond_1
    iget-object p1, p0, Lc/e/a/a/e/h/h;->d:Lc/e/a/a/e/h/i;

    iget-object p2, p0, Lc/e/a/a/e/h/h;->e:Lc/e/a/a/o/v;

    invoke-virtual {p1, p2}, Lc/e/a/a/e/h/i;->a(Lc/e/a/a/o/v;)V

    return v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lc/e/a/a/e/h/h;->f:Z

    .line 21
    iget-object p1, p0, Lc/e/a/a/e/h/h;->d:Lc/e/a/a/e/h/i;

    invoke-virtual {p1}, Lc/e/a/a/e/h/i;->a()V

    return-void
.end method

.method public a(Lc/e/a/a/e/i;)V
    .locals 4

    .line 17
    iget-object v0, p0, Lc/e/a/a/e/h/h;->d:Lc/e/a/a/e/h/i;

    new-instance v1, Lc/e/a/a/e/h/J$d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lc/e/a/a/e/h/J$d;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lc/e/a/a/e/h/i;->a(Lc/e/a/a/e/i;Lc/e/a/a/e/h/J$d;)V

    .line 18
    invoke-interface {p1}, Lc/e/a/a/e/i;->a()V

    .line 19
    new-instance v0, Lc/e/a/a/e/o$b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lc/e/a/a/e/o$b;-><init>(J)V

    invoke-interface {p1, v0}, Lc/e/a/a/e/i;->a(Lc/e/a/a/e/o;)V

    return-void
.end method

.method public a(Lc/e/a/a/e/h;)Z
    .locals 8

    .line 1
    new-instance v0, Lc/e/a/a/o/v;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lc/e/a/a/o/v;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    iget-object v4, v0, Lc/e/a/a/o/v;->a:[B

    invoke-interface {p1, v4, v2, v1}, Lc/e/a/a/e/h;->a([BII)V

    .line 3
    invoke-virtual {v0, v2}, Lc/e/a/a/o/v;->e(I)V

    .line 4
    invoke-virtual {v0}, Lc/e/a/a/o/v;->x()I

    move-result v4

    sget v5, Lc/e/a/a/e/h/h;->b:I

    if-eq v4, v5, :cond_4

    .line 5
    invoke-interface {p1}, Lc/e/a/a/e/h;->b()V

    .line 6
    invoke-interface {p1, v3}, Lc/e/a/a/e/h;->a(I)V

    move v4, v3

    :goto_1
    const/4 v1, 0x0

    .line 7
    :goto_2
    iget-object v5, v0, Lc/e/a/a/o/v;->a:[B

    const/4 v6, 0x7

    invoke-interface {p1, v5, v2, v6}, Lc/e/a/a/e/h;->a([BII)V

    .line 8
    invoke-virtual {v0, v2}, Lc/e/a/a/o/v;->e(I)V

    .line 9
    invoke-virtual {v0}, Lc/e/a/a/o/v;->A()I

    move-result v5

    const v6, 0xac40

    if-eq v5, v6, :cond_1

    const v6, 0xac41

    if-eq v5, v6, :cond_1

    .line 10
    invoke-interface {p1}, Lc/e/a/a/e/h;->b()V

    add-int/lit8 v4, v4, 0x1

    sub-int v1, v4, v3

    const/16 v5, 0x2000

    if-lt v1, v5, :cond_0

    return v2

    .line 11
    :cond_0
    invoke-interface {p1, v4}, Lc/e/a/a/e/h;->a(I)V

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    add-int/2addr v1, v6

    const/4 v7, 0x4

    if-lt v1, v7, :cond_2

    return v6

    .line 12
    :cond_2
    iget-object v6, v0, Lc/e/a/a/o/v;->a:[B

    invoke-static {v6, v5}, Lc/e/a/a/b/j;->a([BI)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    return v2

    :cond_3
    add-int/lit8 v5, v5, -0x7

    .line 13
    invoke-interface {p1, v5}, Lc/e/a/a/e/h;->a(I)V

    goto :goto_2

    :cond_4
    const/4 v4, 0x3

    .line 14
    invoke-virtual {v0, v4}, Lc/e/a/a/o/v;->f(I)V

    .line 15
    invoke-virtual {v0}, Lc/e/a/a/o/v;->t()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    .line 16
    invoke-interface {p1, v4}, Lc/e/a/a/e/h;->a(I)V

    goto :goto_0
.end method
