.class public Lj/a/e/j;
.super Lj/a/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/a/e/k;->a(ILokhttp3/internal/http2/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lokhttp3/internal/http2/ErrorCode;

.field public final synthetic d:Lj/a/e/k;


# direct methods
.method public varargs constructor <init>(Lj/a/e/k;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/http2/ErrorCode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/a/e/j;->d:Lj/a/e/k;

    iput p4, p0, Lj/a/e/j;->b:I

    iput-object p5, p0, Lj/a/e/j;->c:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {p0, p2, p3}, Lj/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lj/a/e/j;->d:Lj/a/e/k;

    iget-object v0, v0, Lj/a/e/k;->k:Lj/a/e/u;

    iget v1, p0, Lj/a/e/j;->b:I

    iget-object v2, p0, Lj/a/e/j;->c:Lokhttp3/internal/http2/ErrorCode;

    invoke-interface {v0, v1, v2}, Lj/a/e/u;->a(ILokhttp3/internal/http2/ErrorCode;)V

    .line 2
    iget-object v0, p0, Lj/a/e/j;->d:Lj/a/e/k;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lj/a/e/j;->d:Lj/a/e/k;

    iget-object v1, v1, Lj/a/e/k;->u:Ljava/util/Set;

    iget v2, p0, Lj/a/e/j;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
