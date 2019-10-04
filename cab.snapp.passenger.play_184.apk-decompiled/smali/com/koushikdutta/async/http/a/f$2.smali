.class final Lcom/koushikdutta/async/http/a/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/a/f;->write(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/a/a;

.field final synthetic b:Lcom/koushikdutta/async/http/a/f;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/a/f;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/f$2;->b:Lcom/koushikdutta/async/http/a/f;

    iput-object p2, p0, Lcom/koushikdutta/async/http/a/f$2;->a:Lcom/koushikdutta/async/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/f$2;->a:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method
