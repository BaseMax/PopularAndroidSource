.class final Lcom/koushikdutta/async/b/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/b/b;->add(Lcom/koushikdutta/async/b/d;)Lcom/koushikdutta/async/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/b/d;

.field final synthetic b:Lcom/koushikdutta/async/b/b;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/b/b;Lcom/koushikdutta/async/b/d;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/koushikdutta/async/b/b$3;->b:Lcom/koushikdutta/async/b/b;

    iput-object p2, p0, Lcom/koushikdutta/async/b/b$3;->a:Lcom/koushikdutta/async/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onContinue(Lcom/koushikdutta/async/b/b;Lcom/koushikdutta/async/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    iget-object p1, p0, Lcom/koushikdutta/async/b/b$3;->a:Lcom/koushikdutta/async/b/d;

    invoke-interface {p1}, Lcom/koushikdutta/async/b/d;->get()Ljava/lang/Object;

    const/4 p1, 0x0

    .line 103
    invoke-interface {p2, p1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method
