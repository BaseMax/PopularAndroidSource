.class final Lcom/koushikdutta/async/http/i$1;
.super Lcom/koushikdutta/async/b/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/i;->getSocket(Lcom/koushikdutta/async/http/b$a;)Lcom/koushikdutta/async/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/b/j<",
        "Lcom/koushikdutta/async/j;",
        "[",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Exception;

.field final synthetic b:Lcom/koushikdutta/async/http/b$a;

.field final synthetic c:Landroid/net/Uri;

.field final synthetic d:I

.field final synthetic e:Lcom/koushikdutta/async/http/i;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/i;Lcom/koushikdutta/async/http/b$a;Landroid/net/Uri;I)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/koushikdutta/async/http/i$1;->e:Lcom/koushikdutta/async/http/i;

    iput-object p2, p0, Lcom/koushikdutta/async/http/i$1;->b:Lcom/koushikdutta/async/http/b$a;

    iput-object p3, p0, Lcom/koushikdutta/async/http/i$1;->c:Landroid/net/Uri;

    iput p4, p0, Lcom/koushikdutta/async/http/i$1;->d:I

    invoke-direct {p0}, Lcom/koushikdutta/async/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/Exception;)V
    .locals 6

    .line 198
    invoke-super {p0, p1}, Lcom/koushikdutta/async/b/j;->error(Ljava/lang/Exception;)V

    .line 199
    iget-object v0, p0, Lcom/koushikdutta/async/http/i$1;->e:Lcom/koushikdutta/async/http/i;

    iget-object v1, p0, Lcom/koushikdutta/async/http/i$1;->b:Lcom/koushikdutta/async/http/b$a;

    iget-object v2, p0, Lcom/koushikdutta/async/http/i$1;->c:Landroid/net/Uri;

    iget v3, p0, Lcom/koushikdutta/async/http/i$1;->d:I

    iget-object v5, v1, Lcom/koushikdutta/async/http/b$a;->connectCallback:Lcom/koushikdutta/async/a/b;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/http/i;->wrapCallback(Lcom/koushikdutta/async/http/b$a;Landroid/net/Uri;IZLcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/a/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/a/b;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/j;)V

    return-void
.end method

.method public final synthetic transform(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    check-cast p1, [Ljava/net/InetAddress;

    .line 1204
    new-instance v0, Lcom/koushikdutta/async/b/b;

    new-instance v1, Lcom/koushikdutta/async/http/i$1$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/i$1$1;-><init>(Lcom/koushikdutta/async/http/i$1;)V

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/b/b;-><init>(Lcom/koushikdutta/async/a/a;)V

    .line 1216
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 1217
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    iget v7, p0, Lcom/koushikdutta/async/http/i$1;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-string v7, "%s:%s"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1218
    new-instance v6, Lcom/koushikdutta/async/http/i$1$2;

    invoke-direct {v6, p0, v5, v4}, Lcom/koushikdutta/async/http/i$1$2;-><init>(Lcom/koushikdutta/async/http/i$1;Ljava/lang/String;Ljava/net/InetAddress;)V

    invoke-virtual {v0, v6}, Lcom/koushikdutta/async/b/b;->add(Lcom/koushikdutta/async/a/c;)Lcom/koushikdutta/async/b/b;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1256
    :cond_0
    invoke-virtual {v0}, Lcom/koushikdutta/async/b/b;->start()Lcom/koushikdutta/async/b/b;

    return-void
.end method
