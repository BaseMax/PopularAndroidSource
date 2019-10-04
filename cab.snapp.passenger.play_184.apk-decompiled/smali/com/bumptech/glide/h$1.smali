.class final Lcom/bumptech/glide/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/h;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/h;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/bumptech/glide/h$1;->a:Lcom/bumptech/glide/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/bumptech/glide/h$1;->a:Lcom/bumptech/glide/h;

    iget-object v0, v0, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/manager/h;

    iget-object v1, p0, Lcom/bumptech/glide/h$1;->a:Lcom/bumptech/glide/h;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/h;->addListener(Lcom/bumptech/glide/manager/i;)V

    return-void
.end method
