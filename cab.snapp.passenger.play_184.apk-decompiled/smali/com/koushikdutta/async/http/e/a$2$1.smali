.class final Lcom/koushikdutta/async/http/e/a$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/e/a$2;->onAccepted(Lcom/koushikdutta/async/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/e/a$2;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/e/a$2;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/a$2$1;->a:Lcom/koushikdutta/async/http/e/a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHandshakeCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/e;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 250
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/a$2$1;->a:Lcom/koushikdutta/async/http/e/a$2;

    iget-object p1, p1, Lcom/koushikdutta/async/http/e/a$2;->c:Lcom/koushikdutta/async/http/e/a;

    iget-object p1, p1, Lcom/koushikdutta/async/http/e/a;->b:Lcom/koushikdutta/async/a/e;

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/a/e;->onAccepted(Lcom/koushikdutta/async/j;)V

    :cond_0
    return-void
.end method
