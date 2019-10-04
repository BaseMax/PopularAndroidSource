.class final Lcom/koushikdutta/async/http/e/a$6$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/e/a$6;->onRequest(Lcom/koushikdutta/async/http/e/b;Lcom/koushikdutta/async/http/e/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/e/d;

.field final synthetic b:Lcom/koushikdutta/async/http/e/a$6;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/e/a$6;Lcom/koushikdutta/async/http/e/d;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/koushikdutta/async/http/e/a$6$2;->b:Lcom/koushikdutta/async/http/e/a$6;

    iput-object p2, p0, Lcom/koushikdutta/async/http/e/a$6$2;->a:Lcom/koushikdutta/async/http/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 0

    .line 499
    iget-object p1, p0, Lcom/koushikdutta/async/http/e/a$6$2;->a:Lcom/koushikdutta/async/http/e/d;

    invoke-interface {p1}, Lcom/koushikdutta/async/http/e/d;->end()V

    return-void
.end method
