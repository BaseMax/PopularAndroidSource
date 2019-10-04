.class public final Lc/e/a/a/e/c/g$c;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/e/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public final a:[B

.field public b:Z

.field public c:I

.field public d:I

.field public e:J

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 2
    new-array v0, v0, [B

    iput-object v0, p0, Lc/e/a/a/e/c/g$c;->a:[B

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lc/e/a/a/e/c/g$c;->b:Z

    return-void
.end method

.method public a(Lc/e/a/a/e/c/g$b;)V
    .locals 8

    .line 18
    iget-boolean v0, p0, Lc/e/a/a/e/c/g$c;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lc/e/a/a/e/c/g$c;->c:I

    if-lez v0, :cond_0

    .line 19
    iget-object v1, p1, Lc/e/a/a/e/c/g$b;->U:Lc/e/a/a/e/q;

    iget-wide v2, p0, Lc/e/a/a/e/c/g$c;->e:J

    iget v4, p0, Lc/e/a/a/e/c/g$c;->f:I

    iget v5, p0, Lc/e/a/a/e/c/g$c;->d:I

    const/4 v6, 0x0

    iget-object v7, p1, Lc/e/a/a/e/c/g$b;->h:Lc/e/a/a/e/q$a;

    invoke-interface/range {v1 .. v7}, Lc/e/a/a/e/q;->a(JIIILc/e/a/a/e/q$a;)V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lc/e/a/a/e/c/g$c;->c:I

    :cond_0
    return-void
.end method

.method public a(Lc/e/a/a/e/c/g$b;J)V
    .locals 7

    .line 12
    iget-boolean v0, p0, Lc/e/a/a/e/c/g$c;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 13
    :cond_0
    iget v0, p0, Lc/e/a/a/e/c/g$c;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc/e/a/a/e/c/g$c;->c:I

    if-nez v0, :cond_1

    .line 14
    iput-wide p2, p0, Lc/e/a/a/e/c/g$c;->e:J

    .line 15
    :cond_1
    iget p2, p0, Lc/e/a/a/e/c/g$c;->c:I

    const/16 p3, 0x10

    if-ge p2, p3, :cond_2

    return-void

    .line 16
    :cond_2
    iget-object v0, p1, Lc/e/a/a/e/c/g$b;->U:Lc/e/a/a/e/q;

    iget-wide v1, p0, Lc/e/a/a/e/c/g$c;->e:J

    iget v3, p0, Lc/e/a/a/e/c/g$c;->f:I

    iget v4, p0, Lc/e/a/a/e/c/g$c;->d:I

    const/4 v5, 0x0

    iget-object v6, p1, Lc/e/a/a/e/c/g$b;->h:Lc/e/a/a/e/q$a;

    invoke-interface/range {v0 .. v6}, Lc/e/a/a/e/q;->a(JIIILc/e/a/a/e/q$a;)V

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lc/e/a/a/e/c/g$c;->c:I

    return-void
.end method

.method public a(Lc/e/a/a/e/h;II)V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lc/e/a/a/e/c/g$c;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lc/e/a/a/e/c/g$c;->a:[B

    const/16 v2, 0xa

    invoke-interface {p1, v0, v1, v2}, Lc/e/a/a/e/h;->a([BII)V

    .line 4
    invoke-interface {p1}, Lc/e/a/a/e/h;->b()V

    .line 5
    iget-object p1, p0, Lc/e/a/a/e/c/g$c;->a:[B

    invoke-static {p1}, Lc/e/a/a/b/h;->b([B)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lc/e/a/a/e/c/g$c;->b:Z

    .line 7
    iput v1, p0, Lc/e/a/a/e/c/g$c;->c:I

    .line 8
    :cond_1
    iget p1, p0, Lc/e/a/a/e/c/g$c;->c:I

    if-nez p1, :cond_2

    .line 9
    iput p2, p0, Lc/e/a/a/e/c/g$c;->f:I

    .line 10
    iput v1, p0, Lc/e/a/a/e/c/g$c;->d:I

    .line 11
    :cond_2
    iget p1, p0, Lc/e/a/a/e/c/g$c;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Lc/e/a/a/e/c/g$c;->d:I

    return-void
.end method
