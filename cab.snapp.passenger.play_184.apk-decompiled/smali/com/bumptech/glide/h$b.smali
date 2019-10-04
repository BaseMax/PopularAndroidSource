.class final Lcom/bumptech/glide/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/manager/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/h;

.field private final b:Lcom/bumptech/glide/manager/n;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/h;Lcom/bumptech/glide/manager/n;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/bumptech/glide/h$b;->a:Lcom/bumptech/glide/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    iput-object p2, p0, Lcom/bumptech/glide/h$b;->b:Lcom/bumptech/glide/manager/n;

    return-void
.end method


# virtual methods
.method public final onConnectivityChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 674
    iget-object p1, p0, Lcom/bumptech/glide/h$b;->a:Lcom/bumptech/glide/h;

    monitor-enter p1

    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/h$b;->b:Lcom/bumptech/glide/manager/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/n;->restartRequests()V

    .line 676
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    return-void
.end method
