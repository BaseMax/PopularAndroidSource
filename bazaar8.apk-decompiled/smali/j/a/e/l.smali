.class public Lj/a/e/l;
.super Lj/a/e/k$b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/a/e/k$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj/a/e/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lj/a/e/q;)V
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Lj/a/e/q;->a(Lokhttp3/internal/http2/ErrorCode;)V

    return-void
.end method
