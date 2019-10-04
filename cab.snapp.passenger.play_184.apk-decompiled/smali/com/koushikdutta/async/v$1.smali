.class final Lcom/koushikdutta/async/v$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/v;->setDataEmitter(Lcom/koushikdutta/async/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/v;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/v;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/koushikdutta/async/v$1;->a:Lcom/koushikdutta/async/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/koushikdutta/async/v$1;->a:Lcom/koushikdutta/async/v;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/v;->report(Ljava/lang/Exception;)V

    return-void
.end method
