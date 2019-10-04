.class public Lj/a/e/m;
.super Lj/a/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/a/e/k$d;->a(ZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lj/a/e/q;

.field public final synthetic c:Lj/a/e/k$d;


# direct methods
.method public varargs constructor <init>(Lj/a/e/k$d;Ljava/lang/String;[Ljava/lang/Object;Lj/a/e/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/a/e/m;->c:Lj/a/e/k$d;

    iput-object p4, p0, Lj/a/e/m;->b:Lj/a/e/q;

    invoke-direct {p0, p2, p3}, Lj/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lj/a/e/m;->c:Lj/a/e/k$d;

    iget-object v0, v0, Lj/a/e/k$d;->c:Lj/a/e/k;

    iget-object v0, v0, Lj/a/e/k;->c:Lj/a/e/k$b;

    iget-object v1, p0, Lj/a/e/m;->b:Lj/a/e/q;

    invoke-virtual {v0, v1}, Lj/a/e/k$b;->a(Lj/a/e/q;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {}, Lj/a/g/f;->b()Lj/a/g/f;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Http2Connection.Listener failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lj/a/e/m;->c:Lj/a/e/k$d;

    iget-object v4, v4, Lj/a/e/k$d;->c:Lj/a/e/k;

    iget-object v4, v4, Lj/a/e/k;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lj/a/g/f;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :try_start_1
    iget-object v0, p0, Lj/a/e/m;->b:Lj/a/e/q;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lj/a/e/q;->a(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method
