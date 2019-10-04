.class public final Lc/e/a/a/j/c/h;
.super Ljava/lang/Object;
.source "DashWrappingSegmentIndex.java"

# interfaces
.implements Lc/e/a/a/j/c/g;


# instance fields
.field public final a:Lc/e/a/a/e/b;

.field public final b:J


# direct methods
.method public constructor <init>(Lc/e/a/a/e/b;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/j/c/h;->a:Lc/e/a/a/e/b;

    .line 3
    iput-wide p2, p0, Lc/e/a/a/j/c/h;->b:J

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/h;->a:Lc/e/a/a/e/b;

    iget-object v0, v0, Lc/e/a/a/e/b;->e:[J

    long-to-int p2, p1

    aget-wide p1, v0, p2

    iget-wide v0, p0, Lc/e/a/a/j/c/h;->b:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public a(JJ)J
    .locals 0

    .line 2
    iget-object p3, p0, Lc/e/a/a/j/c/h;->a:Lc/e/a/a/e/b;

    iget-object p3, p3, Lc/e/a/a/e/b;->d:[J

    long-to-int p2, p1

    aget-wide p1, p3, p2

    return-wide p1
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public b(JJ)J
    .locals 2

    .line 2
    iget-object p3, p0, Lc/e/a/a/j/c/h;->a:Lc/e/a/a/e/b;

    iget-wide v0, p0, Lc/e/a/a/j/c/h;->b:J

    add-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Lc/e/a/a/e/b;->c(J)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public b(J)Lc/e/a/a/j/c/a/h;
    .locals 7

    .line 1
    new-instance v6, Lc/e/a/a/j/c/a/h;

    iget-object v0, p0, Lc/e/a/a/j/c/h;->a:Lc/e/a/a/e/b;

    iget-object v1, v0, Lc/e/a/a/e/b;->c:[J

    long-to-int p2, p1

    aget-wide v2, v1, p2

    iget-object p1, v0, Lc/e/a/a/e/b;->b:[I

    aget p1, p1, p2

    int-to-long v4, p1

    const/4 v1, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lc/e/a/a/j/c/a/h;-><init>(Ljava/lang/String;JJ)V

    return-object v6
.end method

.method public c(J)I
    .locals 0

    .line 1
    iget-object p1, p0, Lc/e/a/a/j/c/h;->a:Lc/e/a/a/e/b;

    iget p1, p1, Lc/e/a/a/e/b;->a:I

    return p1
.end method
