.class final Lcom/koushikdutta/async/h$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/h;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/aa;

.field final synthetic b:Ljava/util/concurrent/Semaphore;

.field final synthetic c:Lcom/koushikdutta/async/h;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/h;Lcom/koushikdutta/async/aa;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/koushikdutta/async/h$10;->c:Lcom/koushikdutta/async/h;

    iput-object p2, p0, Lcom/koushikdutta/async/h$10;->a:Lcom/koushikdutta/async/aa;

    iput-object p3, p0, Lcom/koushikdutta/async/h$10;->b:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/koushikdutta/async/h$10;->a:Lcom/koushikdutta/async/aa;

    invoke-static {v0}, Lcom/koushikdutta/async/h;->a(Lcom/koushikdutta/async/aa;)V

    .line 269
    iget-object v0, p0, Lcom/koushikdutta/async/h$10;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
