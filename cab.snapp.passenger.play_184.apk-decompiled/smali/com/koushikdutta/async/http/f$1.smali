.class final Lcom/koushikdutta/async/http/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/f;->b()V
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

    .line 36
    iput-object p1, p0, Lcom/koushikdutta/async/http/f$1;->a:Lcom/koushikdutta/async/http/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/koushikdutta/async/http/f$1;->a:Lcom/koushikdutta/async/http/f;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/f;->a(Ljava/lang/Exception;)V

    return-void
.end method
