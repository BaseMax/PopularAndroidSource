.class final Lcom/koushikdutta/async/http/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/h;->createHandshakeCallback(Lcom/koushikdutta/async/http/b$a;Lcom/koushikdutta/async/a/b;)Lcom/koushikdutta/async/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/a/b;

.field final synthetic b:Lcom/koushikdutta/async/http/h;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/h;Lcom/koushikdutta/async/a/b;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/koushikdutta/async/http/h$1;->b:Lcom/koushikdutta/async/http/h;

    iput-object p2, p0, Lcom/koushikdutta/async/http/h$1;->a:Lcom/koushikdutta/async/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHandshakeCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/e;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/koushikdutta/async/http/h$1;->a:Lcom/koushikdutta/async/a/b;

    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/async/a/b;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/j;)V

    return-void
.end method
