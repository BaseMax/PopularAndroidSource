.class final Lcom/koushikdutta/async/http/spdy/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "connection"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v4, "host"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string v6, "keep-alive"

    const/4 v7, 0x2

    aput-object v6, v1, v7

    const-string v8, "proxy-connection"

    const/4 v9, 0x3

    aput-object v8, v1, v9

    const-string v10, "transfer-encoding"

    const/4 v11, 0x4

    aput-object v10, v1, v11

    .line 28
    invoke-static {v1}, Lcom/koushikdutta/async/http/spdy/q;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/koushikdutta/async/http/spdy/p;->a:Ljava/util/List;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object v4, v1, v5

    aput-object v6, v1, v7

    aput-object v8, v1, v9

    const-string v2, "te"

    aput-object v2, v1, v11

    aput-object v10, v1, v0

    const/4 v0, 0x6

    const-string v2, "encoding"

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const-string v2, "upgrade"

    aput-object v2, v1, v0

    .line 36
    invoke-static {v1}, Lcom/koushikdutta/async/http/spdy/q;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/p;->b:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/koushikdutta/async/http/Protocol;Ljava/lang/String;)Z
    .locals 1

    .line 48
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->SPDY_3:Lcom/koushikdutta/async/http/Protocol;

    if-ne p0, v0, :cond_0

    .line 49
    sget-object p0, Lcom/koushikdutta/async/http/spdy/p;->a:Ljava/util/List;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 50
    :cond_0
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    if-ne p0, v0, :cond_1

    .line 51
    sget-object p0, Lcom/koushikdutta/async/http/spdy/p;->b:Ljava/util/List;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
