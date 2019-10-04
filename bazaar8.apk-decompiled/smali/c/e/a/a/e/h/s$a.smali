.class public final Lc/e/a/a/e/h/s$a;
.super Ljava/lang/Object;
.source "H265Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/e/h/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Lc/e/a/a/e/q;

.field public b:J

.field public c:Z

.field public d:I

.field public e:J

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:J

.field public l:J

.field public m:Z


# direct methods
.method public constructor <init>(Lc/e/a/a/e/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/e/h/s$a;->a:Lc/e/a/a/e/q;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lc/e/a/a/e/h/s$a;->f:Z

    .line 2
    iput-boolean v0, p0, Lc/e/a/a/e/h/s$a;->g:Z

    .line 3
    iput-boolean v0, p0, Lc/e/a/a/e/h/s$a;->h:Z

    .line 4
    iput-boolean v0, p0, Lc/e/a/a/e/h/s$a;->i:Z

    .line 5
    iput-boolean v0, p0, Lc/e/a/a/e/h/s$a;->j:Z

    return-void
.end method

.method public final a(I)V
    .locals 7

    .line 34
    iget-boolean v3, p0, Lc/e/a/a/e/h/s$a;->m:Z

    .line 35
    iget-wide v0, p0, Lc/e/a/a/e/h/s$a;->b:J

    iget-wide v4, p0, Lc/e/a/a/e/h/s$a;->k:J

    sub-long/2addr v0, v4

    long-to-int v4, v0

    .line 36
    iget-object v0, p0, Lc/e/a/a/e/h/s$a;->a:Lc/e/a/a/e/q;

    iget-wide v1, p0, Lc/e/a/a/e/h/s$a;->l:J

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lc/e/a/a/e/q;->a(JIIILc/e/a/a/e/q$a;)V

    return-void
.end method

.method public a(JI)V
    .locals 2

    .line 23
    iget-boolean v0, p0, Lc/e/a/a/e/h/s$a;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc/e/a/a/e/h/s$a;->g:Z

    if-eqz v0, :cond_0

    .line 24
    iget-boolean p1, p0, Lc/e/a/a/e/h/s$a;->c:Z

    iput-boolean p1, p0, Lc/e/a/a/e/h/s$a;->m:Z

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lc/e/a/a/e/h/s$a;->j:Z

    goto :goto_0

    .line 26
    :cond_0
    iget-boolean v0, p0, Lc/e/a/a/e/h/s$a;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lc/e/a/a/e/h/s$a;->g:Z

    if-eqz v0, :cond_3

    .line 27
    :cond_1
    iget-boolean v0, p0, Lc/e/a/a/e/h/s$a;->i:Z

    if-eqz v0, :cond_2

    .line 28
    iget-wide v0, p0, Lc/e/a/a/e/h/s$a;->b:J

    sub-long/2addr p1, v0

    long-to-int p2, p1

    add-int/2addr p3, p2

    .line 29
    invoke-virtual {p0, p3}, Lc/e/a/a/e/h/s$a;->a(I)V

    .line 30
    :cond_2
    iget-wide p1, p0, Lc/e/a/a/e/h/s$a;->b:J

    iput-wide p1, p0, Lc/e/a/a/e/h/s$a;->k:J

    .line 31
    iget-wide p1, p0, Lc/e/a/a/e/h/s$a;->e:J

    iput-wide p1, p0, Lc/e/a/a/e/h/s$a;->l:J

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lc/e/a/a/e/h/s$a;->i:Z

    .line 33
    iget-boolean p1, p0, Lc/e/a/a/e/h/s$a;->c:Z

    iput-boolean p1, p0, Lc/e/a/a/e/h/s$a;->m:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public a(JIIJ)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lc/e/a/a/e/h/s$a;->g:Z

    .line 7
    iput-boolean v0, p0, Lc/e/a/a/e/h/s$a;->h:Z

    .line 8
    iput-wide p5, p0, Lc/e/a/a/e/h/s$a;->e:J

    .line 9
    iput v0, p0, Lc/e/a/a/e/h/s$a;->d:I

    .line 10
    iput-wide p1, p0, Lc/e/a/a/e/h/s$a;->b:J

    const/4 p1, 0x1

    const/16 p2, 0x20

    if-lt p4, p2, :cond_1

    .line 11
    iget-boolean p2, p0, Lc/e/a/a/e/h/s$a;->j:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lc/e/a/a/e/h/s$a;->i:Z

    if-eqz p2, :cond_0

    .line 12
    invoke-virtual {p0, p3}, Lc/e/a/a/e/h/s$a;->a(I)V

    .line 13
    iput-boolean v0, p0, Lc/e/a/a/e/h/s$a;->i:Z

    :cond_0
    const/16 p2, 0x22

    if-gt p4, p2, :cond_1

    .line 14
    iget-boolean p2, p0, Lc/e/a/a/e/h/s$a;->j:Z

    xor-int/2addr p2, p1

    iput-boolean p2, p0, Lc/e/a/a/e/h/s$a;->h:Z

    .line 15
    iput-boolean p1, p0, Lc/e/a/a/e/h/s$a;->j:Z

    :cond_1
    const/16 p2, 0x10

    if-lt p4, p2, :cond_2

    const/16 p2, 0x15

    if-gt p4, p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 16
    :goto_0
    iput-boolean p2, p0, Lc/e/a/a/e/h/s$a;->c:Z

    .line 17
    iget-boolean p2, p0, Lc/e/a/a/e/h/s$a;->c:Z

    if-nez p2, :cond_4

    const/16 p2, 0x9

    if-gt p4, p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :cond_4
    :goto_1
    iput-boolean p1, p0, Lc/e/a/a/e/h/s$a;->f:Z

    return-void
.end method

.method public a([BII)V
    .locals 2

    .line 18
    iget-boolean v0, p0, Lc/e/a/a/e/h/s$a;->f:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, p2, 0x2

    .line 19
    iget v1, p0, Lc/e/a/a/e/h/s$a;->d:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1

    .line 20
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0x80

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lc/e/a/a/e/h/s$a;->g:Z

    .line 21
    iput-boolean p2, p0, Lc/e/a/a/e/h/s$a;->f:Z

    goto :goto_1

    :cond_1
    sub-int/2addr p3, p2

    add-int/2addr v1, p3

    .line 22
    iput v1, p0, Lc/e/a/a/e/h/s$a;->d:I

    :cond_2
    :goto_1
    return-void
.end method
