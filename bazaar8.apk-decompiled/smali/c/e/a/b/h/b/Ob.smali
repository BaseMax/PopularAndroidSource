.class public final Lc/e/a/b/h/b/Ob;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lc/e/a/b/d/g/e;

.field public b:J


# direct methods
.method public constructor <init>(Lc/e/a/b/d/g/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lc/e/a/b/h/b/Ob;->a:Lc/e/a/b/d/g/e;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lc/e/a/b/h/b/Ob;->b:J

    return-void
.end method

.method public final a(J)Z
    .locals 4

    .line 2
    iget-wide p1, p0, Lc/e/a/b/h/b/Ob;->b:J

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object p1, p0, Lc/e/a/b/h/b/Ob;->a:Lc/e/a/b/d/g/e;

    invoke-interface {p1}, Lc/e/a/b/d/g/e;->a()J

    move-result-wide p1

    iget-wide v1, p0, Lc/e/a/b/h/b/Ob;->b:J

    sub-long/2addr p1, v1

    const-wide/32 v1, 0x36ee80

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Ob;->a:Lc/e/a/b/d/g/e;

    invoke-interface {v0}, Lc/e/a/b/d/g/e;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lc/e/a/b/h/b/Ob;->b:J

    return-void
.end method
