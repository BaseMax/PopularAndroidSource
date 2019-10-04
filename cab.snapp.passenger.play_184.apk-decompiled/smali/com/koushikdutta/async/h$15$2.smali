.class final Lcom/koushikdutta/async/h$15$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/h$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/koushikdutta/async/h$15;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/h$15;Ljava/lang/Exception;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/koushikdutta/async/h$15$2;->b:Lcom/koushikdutta/async/h$15;

    iput-object p2, p0, Lcom/koushikdutta/async/h$15$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/koushikdutta/async/h$15$2;->b:Lcom/koushikdutta/async/h$15;

    iget-object v0, v0, Lcom/koushikdutta/async/h$15;->b:Lcom/koushikdutta/async/b/i;

    iget-object v1, p0, Lcom/koushikdutta/async/h$15$2;->a:Ljava/lang/Exception;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/b/i;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;)Z

    return-void
.end method
