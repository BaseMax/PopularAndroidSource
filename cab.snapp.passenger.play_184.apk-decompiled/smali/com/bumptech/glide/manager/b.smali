.class final Lcom/bumptech/glide/manager/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/manager/h;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/bumptech/glide/manager/i;)V
    .locals 0

    .line 15
    invoke-interface {p1}, Lcom/bumptech/glide/manager/i;->onStart()V

    return-void
.end method

.method public final removeListener(Lcom/bumptech/glide/manager/i;)V
    .locals 0

    return-void
.end method
