.class final Lcom/koushikdutta/async/http/b/e$g;
.super Ljava/net/CacheResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field private final a:Lcom/koushikdutta/async/http/b/e$f;

.field private final b:Ljava/io/FileInputStream;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/b/e$f;Ljava/io/FileInputStream;)V
    .locals 0

    .line 708
    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    .line 709
    iput-object p1, p0, Lcom/koushikdutta/async/http/b/e$g;->a:Lcom/koushikdutta/async/http/b/e$f;

    .line 710
    iput-object p2, p0, Lcom/koushikdutta/async/http/b/e$g;->b:Ljava/io/FileInputStream;

    return-void
.end method


# virtual methods
.method public final getBody()Ljava/io/FileInputStream;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$g;->b:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public final bridge synthetic getBody()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 704
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/b/e$g;->getBody()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 714
    iget-object v0, p0, Lcom/koushikdutta/async/http/b/e$g;->a:Lcom/koushikdutta/async/http/b/e$f;

    .line 1511
    iget-object v0, v0, Lcom/koushikdutta/async/http/b/e$f;->a:Lcom/koushikdutta/async/http/b/c;

    .line 714
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/b/c;->toMultimap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
