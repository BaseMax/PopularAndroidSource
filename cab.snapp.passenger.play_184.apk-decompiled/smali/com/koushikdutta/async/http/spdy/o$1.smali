.class final Lcom/koushikdutta/async/http/spdy/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/spdy/o;-><init>(Lcom/koushikdutta/async/http/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/spdy/o;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/o;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/o$1;->a:Lcom/koushikdutta/async/http/spdy/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final configureEngine(Ljavax/net/ssl/SSLEngine;Lcom/koushikdutta/async/http/b$a;Ljava/lang/String;I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/o$1;->a:Lcom/koushikdutta/async/http/spdy/o;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/o;->a(Lcom/koushikdutta/async/http/spdy/o;Ljavax/net/ssl/SSLEngine;Lcom/koushikdutta/async/http/b$a;Ljava/lang/String;I)V

    return-void
.end method

.method public final createEngine(Ljavax/net/ssl/SSLContext;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
