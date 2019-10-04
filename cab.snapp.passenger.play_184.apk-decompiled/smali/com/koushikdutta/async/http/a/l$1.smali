.class final Lcom/koushikdutta/async/http/a/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/a/l;->parse(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/l;

.field final synthetic b:Lcom/koushikdutta/async/http/a/l;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a/l;Lcom/koushikdutta/async/l;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/l$1;->b:Lcom/koushikdutta/async/http/a/l;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a/l$1;->a:Lcom/koushikdutta/async/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/l$1;->a:Lcom/koushikdutta/async/l;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/l;->get(Lcom/koushikdutta/async/l;)V

    return-void
.end method
