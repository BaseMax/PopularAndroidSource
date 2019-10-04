.class final Lcom/koushikdutta/async/b/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/b/i;->getCompletionCallback()Lcom/koushikdutta/async/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/b/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/b/i;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/b/i;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/koushikdutta/async/b/i$1;->a:Lcom/koushikdutta/async/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/koushikdutta/async/b/i$1;->a:Lcom/koushikdutta/async/b/i;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/b/i;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;)Z

    return-void
.end method
