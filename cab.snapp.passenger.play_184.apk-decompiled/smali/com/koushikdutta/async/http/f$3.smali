.class final Lcom/koushikdutta/async/http/f$3;
.super Lcom/koushikdutta/async/a/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/f;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/f;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/koushikdutta/async/http/f$3;->a:Lcom/koushikdutta/async/http/f;

    invoke-direct {p0}, Lcom/koushikdutta/async/a/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 0

    .line 84
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/a/d$a;->onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    .line 85
    iget-object p1, p0, Lcom/koushikdutta/async/http/f$3;->a:Lcom/koushikdutta/async/http/f;

    invoke-static {p1}, Lcom/koushikdutta/async/http/f;->a(Lcom/koushikdutta/async/http/f;)Lcom/koushikdutta/async/j;

    move-result-object p1

    invoke-interface {p1}, Lcom/koushikdutta/async/j;->close()V

    return-void
.end method
