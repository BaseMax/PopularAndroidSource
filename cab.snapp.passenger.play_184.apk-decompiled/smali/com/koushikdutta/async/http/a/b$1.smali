.class final Lcom/koushikdutta/async/http/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/a/b;->parse(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/b/f<",
        "Lorg/w3c/dom/Document;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/a/a;

.field final synthetic b:Lcom/koushikdutta/async/http/a/b;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a/b;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/b$1;->b:Lcom/koushikdutta/async/http/a/b;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a/b$1;->a:Lcom/koushikdutta/async/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p2, Lorg/w3c/dom/Document;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/a/b$1;->onCompleted(Ljava/lang/Exception;Lorg/w3c/dom/Document;)V

    return-void
.end method

.method public final onCompleted(Ljava/lang/Exception;Lorg/w3c/dom/Document;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/b$1;->b:Lcom/koushikdutta/async/http/a/b;

    iput-object p2, v0, Lcom/koushikdutta/async/http/a/b;->b:Lorg/w3c/dom/Document;

    .line 66
    iget-object p2, p0, Lcom/koushikdutta/async/http/a/b$1;->a:Lcom/koushikdutta/async/a/a;

    invoke-interface {p2, p1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method
