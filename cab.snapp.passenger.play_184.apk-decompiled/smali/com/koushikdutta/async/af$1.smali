.class final Lcom/koushikdutta/async/af$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/af;->pump(Ljava/io/InputStream;JLcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/koushikdutta/async/a/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/koushikdutta/async/af$1;->b:Lcom/koushikdutta/async/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/koushikdutta/async/af$1;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/koushikdutta/async/af$1;->a:Z

    .line 70
    iget-object v0, p0, Lcom/koushikdutta/async/af$1;->b:Lcom/koushikdutta/async/a/a;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method
