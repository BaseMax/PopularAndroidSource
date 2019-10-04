.class public final Ll/v;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Ll/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/v$a;,
        Ll/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ll/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ll/C;

.field public final b:[Ljava/lang/Object;

.field public final c:Lj/i$a;

.field public final d:Ll/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/j<",
            "Lj/S;",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile e:Z

.field public f:Lj/i;

.field public g:Ljava/lang/Throwable;

.field public h:Z


# direct methods
.method public constructor <init>(Ll/C;[Ljava/lang/Object;Lj/i$a;Ll/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/C;",
            "[",
            "Ljava/lang/Object;",
            "Lj/i$a;",
            "Ll/j<",
            "Lj/S;",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll/v;->a:Ll/C;

    .line 3
    iput-object p2, p0, Ll/v;->b:[Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Ll/v;->c:Lj/i$a;

    .line 5
    iput-object p4, p0, Ll/v;->d:Ll/j;

    return-void
.end method


# virtual methods
.method public final a()Lj/i;
    .locals 3

    .line 17
    iget-object v0, p0, Ll/v;->c:Lj/i$a;

    iget-object v1, p0, Ll/v;->a:Ll/C;

    iget-object v2, p0, Ll/v;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ll/C;->a([Ljava/lang/Object;)Lj/L;

    move-result-object v1

    invoke-interface {v0, v1}, Lj/i$a;->a(Lj/L;)Lj/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Call.Factory returned null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lj/P;)Ll/D;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/P;",
            ")",
            "Ll/D<",
            "TT;>;"
        }
    .end annotation

    .line 19
    invoke-virtual {p1}, Lj/P;->s()Lj/S;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lj/P;->B()Lj/P$a;

    move-result-object p1

    new-instance v1, Ll/v$b;

    .line 21
    invoke-virtual {v0}, Lj/S;->v()Lj/F;

    move-result-object v2

    invoke-virtual {v0}, Lj/S;->u()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Ll/v$b;-><init>(Lj/F;J)V

    invoke-virtual {p1, v1}, Lj/P$a;->a(Lj/S;)Lj/P$a;

    .line 22
    invoke-virtual {p1}, Lj/P$a;->a()Lj/P;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lj/P;->v()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_3

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_2

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    new-instance v1, Ll/v$a;

    invoke-direct {v1, v0}, Ll/v$a;-><init>(Lj/S;)V

    .line 25
    :try_start_0
    iget-object v0, p0, Ll/v;->d:Ll/j;

    invoke-interface {v0, v1}, Ll/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    invoke-static {v0, p1}, Ll/D;->a(Ljava/lang/Object;Lj/P;)Ll/D;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {v1}, Ll/v$a;->y()V

    .line 28
    throw p1

    .line 29
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lj/S;->close()V

    const/4 v0, 0x0

    .line 30
    invoke-static {v0, p1}, Ll/D;->a(Ljava/lang/Object;Lj/P;)Ll/D;

    move-result-object p1

    return-object p1

    .line 31
    :cond_3
    :goto_1
    :try_start_1
    invoke-static {v0}, Ll/H;->a(Lj/S;)Lj/S;

    move-result-object v1

    .line 32
    invoke-static {v1, p1}, Ll/D;->a(Lj/S;Lj/P;)Ll/D;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    invoke-virtual {v0}, Lj/S;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lj/S;->close()V

    throw p1
.end method

.method public a(Ll/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/d<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    .line 1
    invoke-static {p1, v0}, Ll/H;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Ll/v;->h:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Ll/v;->h:Z

    .line 5
    iget-object v0, p0, Ll/v;->f:Lj/i;

    .line 6
    iget-object v1, p0, Ll/v;->g:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 7
    :try_start_1
    invoke-virtual {p0}, Ll/v;->a()Lj/i;

    move-result-object v2

    iput-object v2, p0, Ll/v;->f:Lj/i;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    :try_start_2
    invoke-static {v1}, Ll/H;->a(Ljava/lang/Throwable;)V

    .line 9
    iput-object v1, p0, Ll/v;->g:Ljava/lang/Throwable;

    .line 10
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {p1, p0, v1}, Ll/d;->a(Ll/b;Ljava/lang/Throwable;)V

    return-void

    .line 12
    :cond_1
    iget-boolean v1, p0, Ll/v;->e:Z

    if-eqz v1, :cond_2

    .line 13
    invoke-interface {v0}, Lj/i;->cancel()V

    .line 14
    :cond_2
    new-instance v1, Ll/t;

    invoke-direct {v1, p0, p1}, Ll/t;-><init>(Ll/v;Ll/d;)V

    invoke-interface {v0, v1}, Lj/i;->a(Lj/j;)V

    return-void

    .line 15
    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ll/v;->e:Z

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Ll/v;->f:Lj/i;

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lj/i;->cancel()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ll/v;->clone()Ll/v;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ll/b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ll/v;->clone()Ll/v;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ll/v;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll/v<",
            "TT;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Ll/v;

    iget-object v1, p0, Ll/v;->a:Ll/C;

    iget-object v2, p0, Ll/v;->b:[Ljava/lang/Object;

    iget-object v3, p0, Ll/v;->c:Lj/i$a;

    iget-object v4, p0, Ll/v;->d:Ll/j;

    invoke-direct {v0, v1, v2, v3, v4}, Ll/v;-><init>(Ll/C;[Ljava/lang/Object;Lj/i$a;Ll/j;)V

    return-object v0
.end method

.method public execute()Ll/D;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll/D<",
            "TT;>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Ll/v;->h:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ll/v;->h:Z

    .line 4
    iget-object v0, p0, Ll/v;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Ll/v;->g:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Ll/v;->g:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Ll/v;->g:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 8
    :cond_0
    iget-object v0, p0, Ll/v;->g:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 9
    :cond_1
    iget-object v0, p0, Ll/v;->g:Ljava/lang/Throwable;

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 10
    :cond_2
    iget-object v0, p0, Ll/v;->f:Lj/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    .line 11
    :try_start_1
    invoke-virtual {p0}, Ll/v;->a()Lj/i;

    move-result-object v0

    iput-object v0, p0, Ll/v;->f:Lj/i;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 12
    :goto_0
    :try_start_2
    invoke-static {v0}, Ll/H;->a(Ljava/lang/Throwable;)V

    .line 13
    iput-object v0, p0, Ll/v;->g:Ljava/lang/Throwable;

    .line 14
    throw v0

    .line 15
    :cond_3
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    iget-boolean v1, p0, Ll/v;->e:Z

    if-eqz v1, :cond_4

    .line 17
    invoke-interface {v0}, Lj/i;->cancel()V

    .line 18
    :cond_4
    invoke-interface {v0}, Lj/i;->execute()Lj/P;

    move-result-object v0

    invoke-virtual {p0, v0}, Ll/v;->a(Lj/P;)Ll/D;

    move-result-object v0

    return-object v0

    .line 19
    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 20
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public m()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Ll/v;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Ll/v;->f:Lj/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll/v;->f:Lj/i;

    invoke-interface {v0}, Lj/i;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
