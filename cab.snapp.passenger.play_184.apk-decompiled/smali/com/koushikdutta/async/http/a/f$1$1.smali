.class final Lcom/koushikdutta/async/http/a/f$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/a/f$1;->onStringAvailable(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/a/f$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a/f$1;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/f$1$1;->a:Lcom/koushikdutta/async/http/a/f$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/f$1$1;->a:Lcom/koushikdutta/async/http/a/f$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/a/f$1;->b:Lcom/koushikdutta/async/http/a/f;

    iget-object p1, p1, Lcom/koushikdutta/async/http/a/f;->f:Lcom/koushikdutta/async/l;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/l;->get(Lcom/koushikdutta/async/l;)V

    return-void
.end method
