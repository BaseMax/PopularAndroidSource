.class public final Lc/c/a/e/h/a/c$a;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lj/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/e/h/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field public final a:Lj/a/a/h$a;

.field public b:Lk/y;

.field public c:Lk/y;

.field public d:Z

.field public final synthetic e:Lc/c/a/e/h/a/c;


# direct methods
.method public constructor <init>(Lc/c/a/e/h/a/c;Lj/a/a/h$a;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lc/c/a/e/h/a/c$a;->e:Lc/c/a/e/h/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lc/c/a/e/h/a/c$a;->a:Lj/a/a/h$a;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p2, v0}, Lj/a/a/h$a;->a(I)Lk/y;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/e/h/a/c$a;->b:Lk/y;

    .line 4
    new-instance v0, Lc/c/a/e/h/a/b;

    iget-object v1, p0, Lc/c/a/e/h/a/c$a;->b:Lk/y;

    invoke-direct {v0, p0, v1, p1, p2}, Lc/c/a/e/h/a/b;-><init>(Lc/c/a/e/h/a/c$a;Lk/y;Lc/c/a/e/h/a/c;Lj/a/a/h$a;)V

    iput-object v0, p0, Lc/c/a/e/h/a/c$a;->c:Lk/y;

    return-void
.end method


# virtual methods
.method public a()Lk/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/h/a/c$a;->c:Lk/y;

    return-object v0
.end method

.method public abort()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/e/h/a/c$a;->e:Lc/c/a/e/h/a/c;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lc/c/a/e/h/a/c$a;->d:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lc/c/a/e/h/a/c$a;->d:Z

    .line 5
    iget-object v1, p0, Lc/c/a/e/h/a/c$a;->e:Lc/c/a/e/h/a/c;

    invoke-static {v1}, Lc/c/a/e/h/a/c;->b(Lc/c/a/e/h/a/c;)I

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lc/c/a/e/h/a/c$a;->b:Lk/y;

    invoke-static {v0}, Lj/a/e;->a(Ljava/io/Closeable;)V

    .line 8
    :try_start_1
    iget-object v0, p0, Lc/c/a/e/h/a/c$a;->a:Lj/a/a/h$a;

    invoke-virtual {v0}, Lj/a/a/h$a;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
