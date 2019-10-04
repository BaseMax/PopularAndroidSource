.class public Lj/a/a/g;
.super Lj/a/a/i;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/a/a/h$a;->a(I)Lk/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lj/a/a/h$a;


# direct methods
.method public constructor <init>(Lj/a/a/h$a;Lk/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/a/a/g;->c:Lj/a/a/h$a;

    invoke-direct {p0, p2}, Lj/a/a/i;-><init>(Lk/y;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lj/a/a/g;->c:Lj/a/a/h$a;

    iget-object p1, p1, Lj/a/a/h$a;->d:Lj/a/a/h;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lj/a/a/g;->c:Lj/a/a/h$a;

    invoke-virtual {v0}, Lj/a/a/h$a;->c()V

    .line 3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
