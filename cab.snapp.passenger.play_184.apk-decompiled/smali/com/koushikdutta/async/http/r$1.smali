.class final Lcom/koushikdutta/async/http/r$1;
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

    .line 144
    iput-object p1, p0, Lcom/koushikdutta/async/http/r$1;->a:Lcom/koushikdutta/async/http/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 0

    .line 148
    :try_start_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/r$1;->a:Lcom/koushikdutta/async/http/r;

    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->get()B

    move-result p2

    invoke-static {p1, p2}, Lcom/koushikdutta/async/http/r;->a(Lcom/koushikdutta/async/http/r;B)V
    :try_end_0
    .catch Lcom/koushikdutta/async/http/r$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 151
    iget-object p2, p0, Lcom/koushikdutta/async/http/r$1;->a:Lcom/koushikdutta/async/http/r;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/http/r;->a(Ljava/lang/Exception;)V

    .line 152
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/r$a;->printStackTrace()V

    .line 154
    :goto_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/r$1;->a:Lcom/koushikdutta/async/http/r;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/r;->a()V

    return-void
.end method
