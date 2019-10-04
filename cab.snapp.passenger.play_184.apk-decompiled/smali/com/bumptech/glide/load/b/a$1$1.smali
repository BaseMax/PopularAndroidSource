.class final Lcom/bumptech/glide/load/b/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/b/a$1;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/bumptech/glide/load/b/a$1;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/a$1;Ljava/lang/Runnable;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/bumptech/glide/load/b/a$1$1;->b:Lcom/bumptech/glide/load/b/a$1;

    iput-object p2, p0, Lcom/bumptech/glide/load/b/a$1$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const/16 v0, 0xa

    .line 44
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 45
    iget-object v0, p0, Lcom/bumptech/glide/load/b/a$1$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
