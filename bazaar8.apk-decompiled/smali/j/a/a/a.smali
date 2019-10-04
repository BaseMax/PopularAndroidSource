.class public Lj/a/a/a;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lk/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/a/a/b;->a(Lj/a/a/c;Lj/P;)Lj/P;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lk/i;

.field public final synthetic c:Lj/a/a/c;

.field public final synthetic d:Lk/h;

.field public final synthetic e:Lj/a/a/b;


# direct methods
.method public constructor <init>(Lj/a/a/b;Lk/i;Lj/a/a/c;Lk/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/a/a/a;->e:Lj/a/a/b;

    iput-object p2, p0, Lj/a/a/a;->b:Lk/i;

    iput-object p3, p0, Lj/a/a/a;->c:Lj/a/a/c;

    iput-object p4, p0, Lj/a/a/a;->d:Lk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lk/g;J)J
    .locals 8

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lj/a/a/a;->b:Lk/i;

    invoke-interface {v1, p1, p2, p3}, Lk/z;->b(Lk/g;J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    .line 2
    iget-boolean p1, p0, Lj/a/a/a;->a:Z

    if-nez p1, :cond_0

    .line 3
    iput-boolean v0, p0, Lj/a/a/a;->a:Z

    .line 4
    iget-object p1, p0, Lj/a/a/a;->d:Lk/h;

    invoke-interface {p1}, Lk/y;->close()V

    :cond_0
    return-wide v1

    .line 5
    :cond_1
    iget-object v0, p0, Lj/a/a/a;->d:Lk/h;

    invoke-interface {v0}, Lk/h;->a()Lk/g;

    move-result-object v3

    invoke-virtual {p1}, Lk/g;->size()J

    move-result-wide v0

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lk/g;->a(Lk/g;JJ)Lk/g;

    .line 6
    iget-object p1, p0, Lj/a/a/a;->d:Lk/h;

    invoke-interface {p1}, Lk/h;->e()Lk/h;

    return-wide p2

    :catch_0
    move-exception p1

    .line 7
    iget-boolean p2, p0, Lj/a/a/a;->a:Z

    if-nez p2, :cond_2

    .line 8
    iput-boolean v0, p0, Lj/a/a/a;->a:Z

    .line 9
    iget-object p2, p0, Lj/a/a/a;->c:Lj/a/a/c;

    invoke-interface {p2}, Lj/a/a/c;->abort()V

    .line 10
    :cond_2
    throw p1
.end method

.method public b()Lk/B;
    .locals 1

    .line 11
    iget-object v0, p0, Lj/a/a/a;->b:Lk/i;

    invoke-interface {v0}, Lk/z;->b()Lk/B;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lj/a/a/a;->a:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-static {p0, v0, v1}, Lj/a/e;->a(Lk/z;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lj/a/a/a;->a:Z

    .line 4
    iget-object v0, p0, Lj/a/a/a;->c:Lj/a/a/c;

    invoke-interface {v0}, Lj/a/a/c;->abort()V

    .line 5
    :cond_0
    iget-object v0, p0, Lj/a/a/a;->b:Lk/i;

    invoke-interface {v0}, Lk/z;->close()V

    return-void
.end method
