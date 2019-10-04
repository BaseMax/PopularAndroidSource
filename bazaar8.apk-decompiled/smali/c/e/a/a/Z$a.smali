.class public final Lc/e/a/a/Z$a;
.super Ljava/lang/Object;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:J

.field public e:J

.field public f:Lc/e/a/a/j/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lc/e/a/a/j/a/a;->a:Lc/e/a/a/j/a/a;

    iput-object v0, p0, Lc/e/a/a/Z$a;->f:Lc/e/a/a/j/a/a;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 8
    iget-object v0, p0, Lc/e/a/a/Z$a;->f:Lc/e/a/a/j/a/a;

    iget v0, v0, Lc/e/a/a/j/a/a;->b:I

    return v0
.end method

.method public a(I)I
    .locals 1

    .line 10
    iget-object v0, p0, Lc/e/a/a/Z$a;->f:Lc/e/a/a/j/a/a;

    iget-object v0, v0, Lc/e/a/a/j/a/a;->d:[Lc/e/a/a/j/a/a$a;

    aget-object p1, v0, p1

    iget p1, p1, Lc/e/a/a/j/a/a$a;->a:I

    return p1
.end method

.method public a(J)I
    .locals 3

    .line 9
    iget-object v0, p0, Lc/e/a/a/Z$a;->f:Lc/e/a/a/j/a/a;

    iget-wide v1, p0, Lc/e/a/a/Z$a;->d:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lc/e/a/a/j/a/a;->a(JJ)I

    move-result p1

    return p1
.end method

.method public a(II)J
    .locals 2

    .line 11
    iget-object v0, p0, Lc/e/a/a/Z$a;->f:Lc/e/a/a/j/a/a;

    iget-object v0, v0, Lc/e/a/a/j/a/a;->d:[Lc/e/a/a/j/a/a$a;

    aget-object p1, v0, p1

    .line 12
    iget v0, p1, Lc/e/a/a/j/a/a$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lc/e/a/a/j/a/a$a;->d:[J

    aget-wide v0, p1, p2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lc/e/a/a/Z$a;
    .locals 9

    .line 1
    sget-object v8, Lc/e/a/a/j/a/a;->a:Lc/e/a/a/j/a/a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v8}, Lc/e/a/a/Z$a;->a(Ljava/lang/Object;Ljava/lang/Object;IJJLc/e/a/a/j/a/a;)Lc/e/a/a/Z$a;

    return-object p0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;IJJLc/e/a/a/j/a/a;)Lc/e/a/a/Z$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lc/e/a/a/Z$a;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lc/e/a/a/Z$a;->b:Ljava/lang/Object;

    .line 4
    iput p3, p0, Lc/e/a/a/Z$a;->c:I

    .line 5
    iput-wide p4, p0, Lc/e/a/a/Z$a;->d:J

    .line 6
    iput-wide p6, p0, Lc/e/a/a/Z$a;->e:J

    .line 7
    iput-object p8, p0, Lc/e/a/a/Z$a;->f:Lc/e/a/a/j/a/a;

    return-object p0
.end method

.method public b(II)I
    .locals 1

    .line 2
    iget-object v0, p0, Lc/e/a/a/Z$a;->f:Lc/e/a/a/j/a/a;

    iget-object v0, v0, Lc/e/a/a/j/a/a;->d:[Lc/e/a/a/j/a/a$a;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lc/e/a/a/j/a/a$a;->a(I)I

    move-result p1

    return p1
.end method

.method public b(J)I
    .locals 1

    .line 3
    iget-object v0, p0, Lc/e/a/a/Z$a;->f:Lc/e/a/a/j/a/a;

    invoke-virtual {v0, p1, p2}, Lc/e/a/a/j/a/a;->a(J)I

    move-result p1

    return p1
.end method

.method public b()J
    .locals 2

    .line 4
    iget-object v0, p0, Lc/e/a/a/Z$a;->f:Lc/e/a/a/j/a/a;

    iget-wide v0, v0, Lc/e/a/a/j/a/a;->e:J

    return-wide v0
.end method

.method public b(I)J
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/a/Z$a;->f:Lc/e/a/a/j/a/a;

    iget-object v0, v0, Lc/e/a/a/j/a/a;->c:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public c(I)I
    .locals 1

    .line 2
    iget-object v0, p0, Lc/e/a/a/Z$a;->f:Lc/e/a/a/j/a/a;

    iget-object v0, v0, Lc/e/a/a/j/a/a;->d:[Lc/e/a/a/j/a/a$a;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lc/e/a/a/j/a/a$a;->a()I

    move-result p1

    return p1
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/Z$a;->d:J

    return-wide v0
.end method

.method public c(II)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lc/e/a/a/Z$a;->f:Lc/e/a/a/j/a/a;

    iget-object v0, v0, Lc/e/a/a/j/a/a;->d:[Lc/e/a/a/j/a/a$a;

    aget-object p1, v0, p1

    .line 4
    iget v0, p1, Lc/e/a/a/j/a/a$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lc/e/a/a/j/a/a$a;->c:[I

    aget p1, p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/Z$a;->e:J

    invoke-static {v0, v1}, Lc/e/a/a/q;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(I)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lc/e/a/a/Z$a;->f:Lc/e/a/a/j/a/a;

    iget-object v0, v0, Lc/e/a/a/j/a/a;->d:[Lc/e/a/a/j/a/a$a;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lc/e/a/a/j/a/a$a;->b()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/Z$a;->e:J

    return-wide v0
.end method
