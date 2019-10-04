.class final Lcom/koushikdutta/async/h$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/h;->post(Lcom/koushikdutta/async/a/a;Ljava/lang/Exception;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/a/a;

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Lcom/koushikdutta/async/h;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/h;Lcom/koushikdutta/async/a/a;Ljava/lang/Exception;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/koushikdutta/async/h$8;->c:Lcom/koushikdutta/async/h;

    iput-object p2, p0, Lcom/koushikdutta/async/h$8;->a:Lcom/koushikdutta/async/a/a;

    iput-object p3, p0, Lcom/koushikdutta/async/h$8;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/koushikdutta/async/h$8;->a:Lcom/koushikdutta/async/a/a;

    iget-object v1, p0, Lcom/koushikdutta/async/h$8;->b:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method
