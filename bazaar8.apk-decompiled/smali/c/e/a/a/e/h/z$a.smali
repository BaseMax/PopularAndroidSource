.class public final Lc/e/a/a/e/h/z$a;
.super Ljava/lang/Object;
.source "PsBinarySearchSeeker.java"

# interfaces
.implements Lc/e/a/a/e/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/e/h/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Lc/e/a/a/o/F;

.field public final b:Lc/e/a/a/o/v;


# direct methods
.method public constructor <init>(Lc/e/a/a/o/F;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc/e/a/a/e/h/z$a;->a:Lc/e/a/a/o/F;

    .line 4
    new-instance p1, Lc/e/a/a/o/v;

    invoke-direct {p1}, Lc/e/a/a/o/v;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/h/z$a;->b:Lc/e/a/a/o/v;

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/a/o/F;Lc/e/a/a/e/h/y;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/e/a/a/e/h/z$a;-><init>(Lc/e/a/a/o/F;)V

    return-void
.end method

.method public static a(Lc/e/a/a/o/v;)V
    .locals 5

    .line 22
    invoke-virtual {p0}, Lc/e/a/a/o/v;->d()I

    move-result v0

    .line 23
    invoke-virtual {p0}, Lc/e/a/a/o/v;->a()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 24
    invoke-virtual {p0, v0}, Lc/e/a/a/o/v;->e(I)V

    return-void

    :cond_0
    const/16 v1, 0x9

    .line 25
    invoke-virtual {p0, v1}, Lc/e/a/a/o/v;->f(I)V

    .line 26
    invoke-virtual {p0}, Lc/e/a/a/o/v;->u()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 27
    invoke-virtual {p0}, Lc/e/a/a/o/v;->a()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 28
    invoke-virtual {p0, v0}, Lc/e/a/a/o/v;->e(I)V

    return-void

    .line 29
    :cond_1
    invoke-virtual {p0, v1}, Lc/e/a/a/o/v;->f(I)V

    .line 30
    invoke-virtual {p0}, Lc/e/a/a/o/v;->a()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 31
    invoke-virtual {p0, v0}, Lc/e/a/a/o/v;->e(I)V

    return-void

    .line 32
    :cond_2
    iget-object v1, p0, Lc/e/a/a/o/v;->a:[B

    invoke-virtual {p0}, Lc/e/a/a/o/v;->c()I

    move-result v3

    invoke-static {v1, v3}, Lc/e/a/a/e/h/z;->a([BI)I

    move-result v1

    const/16 v3, 0x1bb

    if-ne v1, v3, :cond_4

    .line 33
    invoke-virtual {p0, v2}, Lc/e/a/a/o/v;->f(I)V

    .line 34
    invoke-virtual {p0}, Lc/e/a/a/o/v;->A()I

    move-result v1

    .line 35
    invoke-virtual {p0}, Lc/e/a/a/o/v;->a()I

    move-result v3

    if-ge v3, v1, :cond_3

    .line 36
    invoke-virtual {p0, v0}, Lc/e/a/a/o/v;->e(I)V

    return-void

    .line 37
    :cond_3
    invoke-virtual {p0, v1}, Lc/e/a/a/o/v;->f(I)V

    .line 38
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lc/e/a/a/o/v;->a()I

    move-result v1

    if-lt v1, v2, :cond_8

    .line 39
    iget-object v1, p0, Lc/e/a/a/o/v;->a:[B

    invoke-virtual {p0}, Lc/e/a/a/o/v;->c()I

    move-result v3

    invoke-static {v1, v3}, Lc/e/a/a/e/h/z;->a([BI)I

    move-result v1

    const/16 v3, 0x1ba

    if-eq v1, v3, :cond_8

    const/16 v3, 0x1b9

    if-ne v1, v3, :cond_5

    goto :goto_1

    :cond_5
    ushr-int/lit8 v1, v1, 0x8

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    goto :goto_1

    .line 40
    :cond_6
    invoke-virtual {p0, v2}, Lc/e/a/a/o/v;->f(I)V

    .line 41
    invoke-virtual {p0}, Lc/e/a/a/o/v;->a()I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_7

    .line 42
    invoke-virtual {p0, v0}, Lc/e/a/a/o/v;->e(I)V

    return-void

    .line 43
    :cond_7
    invoke-virtual {p0}, Lc/e/a/a/o/v;->A()I

    move-result v1

    .line 44
    invoke-virtual {p0}, Lc/e/a/a/o/v;->d()I

    move-result v3

    invoke-virtual {p0}, Lc/e/a/a/o/v;->c()I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 45
    invoke-virtual {p0, v1}, Lc/e/a/a/o/v;->e(I)V

    goto :goto_0

    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/e/h;JLc/e/a/a/e/a$c;)Lc/e/a/a/e/a$f;
    .locals 6

    .line 1
    invoke-interface {p1}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v4

    .line 2
    invoke-interface {p1}, Lc/e/a/a/e/h;->getLength()J

    move-result-wide v0

    sub-long/2addr v0, v4

    const-wide/16 v2, 0x4e20

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p4, v0

    .line 3
    iget-object v0, p0, Lc/e/a/a/e/h/z$a;->b:Lc/e/a/a/o/v;

    invoke-virtual {v0, p4}, Lc/e/a/a/o/v;->c(I)V

    .line 4
    iget-object v0, p0, Lc/e/a/a/e/h/z$a;->b:Lc/e/a/a/o/v;

    iget-object v0, v0, Lc/e/a/a/o/v;->a:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p4}, Lc/e/a/a/e/h;->a([BII)V

    .line 5
    iget-object v1, p0, Lc/e/a/a/e/h/z$a;->b:Lc/e/a/a/o/v;

    move-object v0, p0

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lc/e/a/a/e/h/z$a;->a(Lc/e/a/a/o/v;JJ)Lc/e/a/a/e/a$f;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lc/e/a/a/o/v;JJ)Lc/e/a/a/e/a$f;
    .locals 9

    const/4 v0, -0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v3, v1

    const/4 v5, -0x1

    .line 7
    :goto_0
    invoke-virtual {p1}, Lc/e/a/a/o/v;->a()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_5

    .line 8
    iget-object v6, p1, Lc/e/a/a/o/v;->a:[B

    invoke-virtual {p1}, Lc/e/a/a/o/v;->c()I

    move-result v8

    invoke-static {v6, v8}, Lc/e/a/a/e/h/z;->a([BI)I

    move-result v6

    const/16 v8, 0x1ba

    if-eq v6, v8, :cond_0

    const/4 v6, 0x1

    .line 9
    invoke-virtual {p1, v6}, Lc/e/a/a/o/v;->f(I)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1, v7}, Lc/e/a/a/o/v;->f(I)V

    .line 11
    invoke-static {p1}, Lc/e/a/a/e/h/A;->c(Lc/e/a/a/o/v;)J

    move-result-wide v6

    cmp-long v0, v6, v1

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lc/e/a/a/e/h/z$a;->a:Lc/e/a/a/o/F;

    invoke-virtual {v0, v6, v7}, Lc/e/a/a/o/F;->b(J)J

    move-result-wide v6

    cmp-long v0, v6, p2

    if-lez v0, :cond_2

    cmp-long p1, v3, v1

    if-nez p1, :cond_1

    .line 13
    invoke-static {v6, v7, p4, p5}, Lc/e/a/a/e/a$f;->a(JJ)Lc/e/a/a/e/a$f;

    move-result-object p1

    return-object p1

    :cond_1
    int-to-long p1, v5

    add-long/2addr p4, p1

    .line 14
    invoke-static {p4, p5}, Lc/e/a/a/e/a$f;->a(J)Lc/e/a/a/e/a$f;

    move-result-object p1

    return-object p1

    :cond_2
    const-wide/32 v3, 0x186a0

    add-long/2addr v3, v6

    cmp-long v0, v3, p2

    if-lez v0, :cond_3

    .line 15
    invoke-virtual {p1}, Lc/e/a/a/o/v;->c()I

    move-result p1

    int-to-long p1, p1

    add-long/2addr p4, p1

    .line 16
    invoke-static {p4, p5}, Lc/e/a/a/e/a$f;->a(J)Lc/e/a/a/e/a$f;

    move-result-object p1

    return-object p1

    .line 17
    :cond_3
    invoke-virtual {p1}, Lc/e/a/a/o/v;->c()I

    move-result v0

    move v5, v0

    move-wide v3, v6

    .line 18
    :cond_4
    invoke-static {p1}, Lc/e/a/a/e/h/z$a;->a(Lc/e/a/a/o/v;)V

    .line 19
    invoke-virtual {p1}, Lc/e/a/a/o/v;->c()I

    move-result v0

    goto :goto_0

    :cond_5
    cmp-long p1, v3, v1

    if-eqz p1, :cond_6

    int-to-long p1, v0

    add-long/2addr p4, p1

    .line 20
    invoke-static {v3, v4, p4, p5}, Lc/e/a/a/e/a$f;->b(JJ)Lc/e/a/a/e/a$f;

    move-result-object p1

    return-object p1

    .line 21
    :cond_6
    sget-object p1, Lc/e/a/a/e/a$f;->a:Lc/e/a/a/e/a$f;

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 6
    iget-object v0, p0, Lc/e/a/a/e/h/z$a;->b:Lc/e/a/a/o/v;

    sget-object v1, Lc/e/a/a/o/I;->f:[B

    invoke-virtual {v0, v1}, Lc/e/a/a/o/v;->a([B)V

    return-void
.end method
