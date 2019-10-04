.class public final Lc/e/a/b/h/b/k$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/h/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lc/e/a/b/g/f/sa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/g/f/sa<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public volatile d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/b/h/b/k$a;->e:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lc/e/a/b/h/b/k$a;->c:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lc/e/a/b/h/b/k$a;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;DD)Lc/e/a/b/h/b/k$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lc/e/a/b/h/b/k$a<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 9
    new-instance p1, Lc/e/a/b/h/b/k$a;

    const-wide/high16 p2, -0x3ff8000000000000L    # -3.0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p0, p2, p2}, Lc/e/a/b/h/b/k$a;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    sget-object p0, Lc/e/a/b/h/b/k;->f:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public static a(Ljava/lang/String;II)Lc/e/a/b/h/b/k$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lc/e/a/b/h/b/k$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Lc/e/a/b/h/b/k$a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lc/e/a/b/h/b/k$a;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    sget-object p0, Lc/e/a/b/h/b/k;->b:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static a(Ljava/lang/String;JJ)Lc/e/a/b/h/b/k$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Lc/e/a/b/h/b/k$a<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Lc/e/a/b/h/b/k$a;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lc/e/a/b/h/b/k$a;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    sget-object p0, Lc/e/a/b/h/b/k;->c:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/e/a/b/h/b/k$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lc/e/a/b/h/b/k$a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lc/e/a/b/h/b/k$a;

    invoke-direct {v0, p0, p1, p2}, Lc/e/a/b/h/b/k$a;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    sget-object p0, Lc/e/a/b/h/b/k;->e:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static a(Ljava/lang/String;ZZ)Lc/e/a/b/h/b/k$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Lc/e/a/b/h/b/k$a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/e/a/b/h/b/k$a;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lc/e/a/b/h/b/k$a;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    sget-object p0, Lc/e/a/b/h/b/k;->d:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static b()V
    .locals 7

    .line 1
    const-class v0, Lc/e/a/b/h/b/k$a;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lc/e/a/b/h/b/k;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/b/h/b/k$a;

    .line 3
    invoke-static {}, Lc/e/a/b/h/b/k;->a()Lc/e/a/b/g/f/ya;

    move-result-object v3

    iget-object v4, v2, Lc/e/a/b/h/b/k$a;->e:Ljava/lang/String;

    .line 4
    sget-object v5, Lc/e/a/b/h/b/k;->a:Lc/e/a/b/h/b/nc;

    .line 5
    iget-object v5, v2, Lc/e/a/b/h/b/k$a;->c:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    .line 6
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 7
    invoke-virtual {v3, v4, v5}, Lc/e/a/b/g/f/ya;->a(Ljava/lang/String;Z)Lc/e/a/b/g/f/sa;

    move-result-object v3

    iput-object v3, v2, Lc/e/a/b/h/b/k$a;->a:Lc/e/a/b/g/f/sa;

    goto :goto_0

    .line 8
    :cond_0
    sget-object v1, Lc/e/a/b/h/b/k;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/b/h/b/k$a;

    .line 9
    invoke-static {}, Lc/e/a/b/h/b/k;->a()Lc/e/a/b/g/f/ya;

    move-result-object v3

    iget-object v4, v2, Lc/e/a/b/h/b/k$a;->e:Ljava/lang/String;

    .line 10
    sget-object v5, Lc/e/a/b/h/b/k;->a:Lc/e/a/b/h/b/nc;

    .line 11
    iget-object v5, v2, Lc/e/a/b/h/b/k$a;->c:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 12
    invoke-virtual {v3, v4, v5}, Lc/e/a/b/g/f/ya;->a(Ljava/lang/String;Ljava/lang/String;)Lc/e/a/b/g/f/sa;

    move-result-object v3

    iput-object v3, v2, Lc/e/a/b/h/b/k$a;->a:Lc/e/a/b/g/f/sa;

    goto :goto_1

    .line 13
    :cond_1
    sget-object v1, Lc/e/a/b/h/b/k;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/b/h/b/k$a;

    .line 14
    invoke-static {}, Lc/e/a/b/h/b/k;->a()Lc/e/a/b/g/f/ya;

    move-result-object v3

    iget-object v4, v2, Lc/e/a/b/h/b/k$a;->e:Ljava/lang/String;

    .line 15
    sget-object v5, Lc/e/a/b/h/b/k;->a:Lc/e/a/b/h/b/nc;

    .line 16
    iget-object v5, v2, Lc/e/a/b/h/b/k$a;->c:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    .line 17
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 18
    invoke-virtual {v3, v4, v5, v6}, Lc/e/a/b/g/f/ya;->a(Ljava/lang/String;J)Lc/e/a/b/g/f/sa;

    move-result-object v3

    iput-object v3, v2, Lc/e/a/b/h/b/k$a;->a:Lc/e/a/b/g/f/sa;

    goto :goto_2

    .line 19
    :cond_2
    sget-object v1, Lc/e/a/b/h/b/k;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/b/h/b/k$a;

    .line 20
    invoke-static {}, Lc/e/a/b/h/b/k;->a()Lc/e/a/b/g/f/ya;

    move-result-object v3

    iget-object v4, v2, Lc/e/a/b/h/b/k$a;->e:Ljava/lang/String;

    .line 21
    sget-object v5, Lc/e/a/b/h/b/k;->a:Lc/e/a/b/h/b/nc;

    .line 22
    iget-object v5, v2, Lc/e/a/b/h/b/k$a;->c:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 23
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 24
    invoke-virtual {v3, v4, v5}, Lc/e/a/b/g/f/ya;->a(Ljava/lang/String;I)Lc/e/a/b/g/f/sa;

    move-result-object v3

    iput-object v3, v2, Lc/e/a/b/h/b/k$a;->a:Lc/e/a/b/g/f/sa;

    goto :goto_3

    .line 25
    :cond_3
    sget-object v1, Lc/e/a/b/h/b/k;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e/a/b/h/b/k$a;

    .line 26
    invoke-static {}, Lc/e/a/b/h/b/k;->a()Lc/e/a/b/g/f/ya;

    move-result-object v3

    iget-object v4, v2, Lc/e/a/b/h/b/k$a;->e:Ljava/lang/String;

    .line 27
    sget-object v5, Lc/e/a/b/h/b/k;->a:Lc/e/a/b/h/b/nc;

    .line 28
    iget-object v5, v2, Lc/e/a/b/h/b/k$a;->c:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Double;

    .line 29
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 30
    invoke-virtual {v3, v4, v5, v6}, Lc/e/a/b/g/f/ya;->a(Ljava/lang/String;D)Lc/e/a/b/g/f/sa;

    move-result-object v3

    iput-object v3, v2, Lc/e/a/b/h/b/k$a;->a:Lc/e/a/b/g/f/sa;

    goto :goto_4

    .line 31
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method public static synthetic c()V
    .locals 0

    .line 1
    invoke-static {}, Lc/e/a/b/h/b/k$a;->b()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-object p1

    .line 12
    :cond_0
    sget-object p1, Lc/e/a/b/h/b/k;->a:Lc/e/a/b/h/b/nc;

    if-nez p1, :cond_1

    .line 13
    iget-object p1, p0, Lc/e/a/b/h/b/k$a;->c:Ljava/lang/Object;

    return-object p1

    .line 14
    :cond_1
    invoke-static {}, Lc/e/a/b/h/b/nc;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    iget-object p1, p0, Lc/e/a/b/h/b/k$a;->d:Ljava/lang/Object;

    if-nez p1, :cond_2

    iget-object p1, p0, Lc/e/a/b/h/b/k$a;->c:Ljava/lang/Object;

    return-object p1

    :cond_2
    iget-object p1, p0, Lc/e/a/b/h/b/k$a;->d:Ljava/lang/Object;

    return-object p1

    .line 16
    :cond_3
    const-class p1, Lc/e/a/b/h/b/k$a;

    monitor-enter p1

    .line 17
    :try_start_0
    invoke-static {}, Lc/e/a/b/h/b/nc;->a()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lc/e/a/b/h/b/k;->a:Lc/e/a/b/h/b/nc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :try_start_1
    sget-object v0, Lc/e/a/b/h/b/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/b/h/b/k$a;

    .line 19
    iget-object v2, v1, Lc/e/a/b/h/b/k$a;->a:Lc/e/a/b/g/f/sa;

    invoke-virtual {v2}, Lc/e/a/b/g/f/sa;->a()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lc/e/a/b/h/b/k$a;->d:Ljava/lang/Object;

    goto :goto_0

    .line 20
    :cond_4
    sget-object v0, Lc/e/a/b/h/b/k;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/b/h/b/k$a;

    .line 21
    iget-object v2, v1, Lc/e/a/b/h/b/k$a;->a:Lc/e/a/b/g/f/sa;

    invoke-virtual {v2}, Lc/e/a/b/g/f/sa;->a()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lc/e/a/b/h/b/k$a;->d:Ljava/lang/Object;

    goto :goto_1

    .line 22
    :cond_5
    sget-object v0, Lc/e/a/b/h/b/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/b/h/b/k$a;

    .line 23
    iget-object v2, v1, Lc/e/a/b/h/b/k$a;->a:Lc/e/a/b/g/f/sa;

    invoke-virtual {v2}, Lc/e/a/b/g/f/sa;->a()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lc/e/a/b/h/b/k$a;->d:Ljava/lang/Object;

    goto :goto_2

    .line 24
    :cond_6
    sget-object v0, Lc/e/a/b/h/b/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/b/h/b/k$a;

    .line 25
    iget-object v2, v1, Lc/e/a/b/h/b/k$a;->a:Lc/e/a/b/g/f/sa;

    invoke-virtual {v2}, Lc/e/a/b/g/f/sa;->a()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lc/e/a/b/h/b/k$a;->d:Ljava/lang/Object;

    goto :goto_3

    .line 26
    :cond_7
    sget-object v0, Lc/e/a/b/h/b/k;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e/a/b/h/b/k$a;

    .line 27
    iget-object v2, v1, Lc/e/a/b/h/b/k$a;->a:Lc/e/a/b/g/f/sa;

    invoke-virtual {v2}, Lc/e/a/b/g/f/sa;->a()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lc/e/a/b/h/b/k$a;->d:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 28
    :try_start_2
    invoke-static {v0}, Lc/e/a/b/h/b/k;->a(Ljava/lang/Exception;)V

    .line 29
    :cond_8
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    :try_start_3
    iget-object p1, p0, Lc/e/a/b/h/b/k$a;->a:Lc/e/a/b/g/f/sa;

    invoke-virtual {p1}, Lc/e/a/b/g/f/sa;->a()Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 31
    invoke-static {p1}, Lc/e/a/b/h/b/k;->a(Ljava/lang/Exception;)V

    .line 32
    iget-object p1, p0, Lc/e/a/b/h/b/k$a;->a:Lc/e/a/b/g/f/sa;

    invoke-virtual {p1}, Lc/e/a/b/g/f/sa;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 33
    :cond_9
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to refresh flag cache on main thread or on package side."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 34
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lc/e/a/b/h/b/k$a;->e:Ljava/lang/String;

    return-object v0
.end method
