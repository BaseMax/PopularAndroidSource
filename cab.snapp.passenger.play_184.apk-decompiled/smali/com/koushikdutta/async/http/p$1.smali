.class final Lcom/koushikdutta/async/http/p$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/p;->exchangeHeaders(Lcom/koushikdutta/async/http/b$c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/a/a;

.field final synthetic b:Lcom/koushikdutta/async/k;

.field final synthetic c:Lcom/koushikdutta/async/http/p;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/p;Lcom/koushikdutta/async/a/a;Lcom/koushikdutta/async/k;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/koushikdutta/async/http/p$1;->c:Lcom/koushikdutta/async/http/p;

    iput-object p2, p0, Lcom/koushikdutta/async/http/p$1;->a:Lcom/koushikdutta/async/a/a;

    iput-object p3, p0, Lcom/koushikdutta/async/http/p$1;->b:Lcom/koushikdutta/async/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/koushikdutta/async/http/p$1;->a:Lcom/koushikdutta/async/a/a;

    invoke-static {v0, p1}, Lcom/koushikdutta/async/af;->end(Lcom/koushikdutta/async/a/a;Ljava/lang/Exception;)V

    .line 74
    iget-object p1, p0, Lcom/koushikdutta/async/http/p$1;->b:Lcom/koushikdutta/async/k;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/k;->forceBuffering(Z)V

    .line 76
    iget-object p1, p0, Lcom/koushikdutta/async/http/p$1;->b:Lcom/koushikdutta/async/k;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/k;->setMaxBuffer(I)V

    :cond_0
    return-void
.end method
