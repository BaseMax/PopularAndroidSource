.class final Lcom/koushikdutta/async/http/spdy/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/spdy/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/spdy/j$a;,
        Lcom/koushikdutta/async/http/spdy/j$c;,
        Lcom/koushikdutta/async/http/spdy/j$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Lcom/koushikdutta/async/http/spdy/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/koushikdutta/async/http/spdy/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/j;->a:Ljava/util/logging/Logger;

    const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    .line 50
    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/c;->encodeUtf8(Ljava/lang/String;)Lcom/koushikdutta/async/http/spdy/c;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/http/spdy/j;->b:Lcom/koushikdutta/async/http/spdy/c;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lcom/koushikdutta/async/http/spdy/j;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Ljava/util/logging/Logger;
    .locals 1

    .line 41
    sget-object v0, Lcom/koushikdutta/async/http/spdy/j;->a:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic a(SBS)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, -0x1

    int-to-short p0, p0

    :cond_0
    if-gt p2, p0, :cond_1

    sub-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1647
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    const/4 p2, 0x1

    aput-object p0, p1, p2

    const-string p0, "PROTOCOL_ERROR padding %s > remaining length %s"

    invoke-static {p0, p1}, Lcom/koushikdutta/async/http/spdy/j;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method static synthetic b()Lcom/koushikdutta/async/http/spdy/c;
    .locals 1

    .line 41
    sget-object v0, Lcom/koushikdutta/async/http/spdy/j;->b:Lcom/koushikdutta/async/http/spdy/c;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 2636
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 640
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getProtocol()Lcom/koushikdutta/async/http/Protocol;
    .locals 1

    .line 46
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    return-object v0
.end method

.method public final maxFrameSize()I
    .locals 1

    const/16 v0, 0x3fff

    return v0
.end method

.method public final newReader(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/http/spdy/e$a;Z)Lcom/koushikdutta/async/http/spdy/e;
    .locals 1

    .line 81
    new-instance v0, Lcom/koushikdutta/async/http/spdy/j$b;

    invoke-direct {v0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/j$b;-><init>(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/http/spdy/e$a;Z)V

    return-object v0
.end method

.method public final newWriter(Lcom/koushikdutta/async/k;Z)Lcom/koushikdutta/async/http/spdy/f;
    .locals 1

    .line 86
    new-instance v0, Lcom/koushikdutta/async/http/spdy/j$c;

    invoke-direct {v0, p1, p2}, Lcom/koushikdutta/async/http/spdy/j$c;-><init>(Lcom/koushikdutta/async/k;Z)V

    return-object v0
.end method
