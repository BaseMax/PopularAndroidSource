.class public Lj/a/e/i;
.super Lj/a/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/a/e/k;->a(ILk/i;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lk/g;

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:Lj/a/e/k;


# direct methods
.method public varargs constructor <init>(Lj/a/e/k;Ljava/lang/String;[Ljava/lang/Object;ILk/g;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/a/e/i;->f:Lj/a/e/k;

    iput p4, p0, Lj/a/e/i;->b:I

    iput-object p5, p0, Lj/a/e/i;->c:Lk/g;

    iput p6, p0, Lj/a/e/i;->d:I

    iput-boolean p7, p0, Lj/a/e/i;->e:Z

    invoke-direct {p0, p2, p3}, Lj/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lj/a/e/i;->f:Lj/a/e/k;

    iget-object v0, v0, Lj/a/e/k;->k:Lj/a/e/u;

    iget v1, p0, Lj/a/e/i;->b:I

    iget-object v2, p0, Lj/a/e/i;->c:Lk/g;

    iget v3, p0, Lj/a/e/i;->d:I

    iget-boolean v4, p0, Lj/a/e/i;->e:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lj/a/e/u;->a(ILk/i;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lj/a/e/i;->f:Lj/a/e/k;

    iget-object v1, v1, Lj/a/e/k;->s:Lj/a/e/r;

    iget v2, p0, Lj/a/e/i;->b:I

    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2, v3}, Lj/a/e/r;->a(ILokhttp3/internal/http2/ErrorCode;)V

    :cond_0
    if-nez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lj/a/e/i;->e:Z

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, Lj/a/e/i;->f:Lj/a/e/k;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v1, p0, Lj/a/e/i;->f:Lj/a/e/k;

    iget-object v1, v1, Lj/a/e/k;->u:Ljava/util/Set;

    iget v2, p0, Lj/a/e/i;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
