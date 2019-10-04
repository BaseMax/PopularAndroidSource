.class final Lcom/koushikdutta/async/http/r$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/r;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/r;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/koushikdutta/async/http/r$4;->a:Lcom/koushikdutta/async/http/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 2

    .line 185
    iget-object p1, p0, Lcom/koushikdutta/async/http/r$4;->a:Lcom/koushikdutta/async/http/r;

    const/4 v0, 0x4

    new-array v1, v0, [B

    invoke-static {p1, v1}, Lcom/koushikdutta/async/http/r;->b(Lcom/koushikdutta/async/http/r;[B)[B

    .line 186
    iget-object p1, p0, Lcom/koushikdutta/async/http/r$4;->a:Lcom/koushikdutta/async/http/r;

    invoke-static {p1}, Lcom/koushikdutta/async/http/r;->b(Lcom/koushikdutta/async/http/r;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/l;->get([B)V

    .line 187
    iget-object p1, p0, Lcom/koushikdutta/async/http/r$4;->a:Lcom/koushikdutta/async/http/r;

    invoke-static {p1, v0}, Lcom/koushikdutta/async/http/r;->a(Lcom/koushikdutta/async/http/r;I)I

    .line 188
    iget-object p1, p0, Lcom/koushikdutta/async/http/r$4;->a:Lcom/koushikdutta/async/http/r;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/r;->a()V

    return-void
.end method
