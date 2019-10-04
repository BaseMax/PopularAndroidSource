.class public Lj/a/e/e;
.super Lj/a/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/a/e/k;->c(ILokhttp3/internal/http2/ErrorCode;)V
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
    iput-object p1, p0, Lj/a/e/e;->d:Lj/a/e/k;

    iput p4, p0, Lj/a/e/e;->b:I

    iput-object p5, p0, Lj/a/e/e;->c:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {p0, p2, p3}, Lj/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lj/a/e/e;->d:Lj/a/e/k;

    iget v1, p0, Lj/a/e/e;->b:I

    iget-object v2, p0, Lj/a/e/e;->c:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1, v2}, Lj/a/e/k;->b(ILokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object v0, p0, Lj/a/e/e;->d:Lj/a/e/k;

    invoke-static {v0}, Lj/a/e/k;->a(Lj/a/e/k;)V

    :goto_0
    return-void
.end method
