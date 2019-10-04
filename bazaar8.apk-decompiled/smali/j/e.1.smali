.class public Lj/e;
.super Lk/j;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/f$a;-><init>(Lj/f;Lj/a/a/h$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lj/f;

.field public final synthetic c:Lj/a/a/h$a;

.field public final synthetic d:Lj/f$a;


# direct methods
.method public constructor <init>(Lj/f$a;Lk/y;Lj/f;Lj/a/a/h$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/e;->d:Lj/f$a;

    iput-object p3, p0, Lj/e;->b:Lj/f;

    iput-object p4, p0, Lj/e;->c:Lj/a/a/h$a;

    invoke-direct {p0, p2}, Lk/j;-><init>(Lk/y;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lj/e;->d:Lj/f$a;

    iget-object v0, v0, Lj/f$a;->e:Lj/f;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lj/e;->d:Lj/f$a;

    iget-boolean v1, v1, Lj/f$a;->d:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lj/e;->d:Lj/f$a;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lj/f$a;->d:Z

    .line 5
    iget-object v1, p0, Lj/e;->d:Lj/f$a;

    iget-object v1, v1, Lj/f$a;->e:Lj/f;

    iget v3, v1, Lj/f;->c:I

    add-int/2addr v3, v2

    iput v3, v1, Lj/f;->c:I

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-super {p0}, Lk/j;->close()V

    .line 8
    iget-object v0, p0, Lj/e;->c:Lj/a/a/h$a;

    invoke-virtual {v0}, Lj/a/a/h$a;->b()V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
