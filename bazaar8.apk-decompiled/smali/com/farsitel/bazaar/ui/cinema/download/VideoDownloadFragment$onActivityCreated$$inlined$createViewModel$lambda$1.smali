.class public final Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment$onActivityCreated$$inlined$createViewModel$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "VideoDownloadFragment.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->b(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Lcom/farsitel/bazaar/core/model/Resource<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;>;",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment$onActivityCreated$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/core/model/Resource;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment$onActivityCreated$$inlined$createViewModel$lambda$1;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 3
    :goto_0
    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment$onActivityCreated$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->b(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;)V

    goto :goto_1

    .line 4
    :cond_1
    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment$onActivityCreated$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->a(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    .line 6
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment$onActivityCreated$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;

    invoke-virtual {p1}, Lb/o/a/d;->La()V

    goto :goto_1

    .line 7
    :cond_2
    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment$onActivityCreated$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->a(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lh/f/b/j;->a()V

    throw v0

    .line 9
    :cond_4
    sget-object v2, Lcom/farsitel/bazaar/core/model/VideoDownloadState$Dismiss;->a:Lcom/farsitel/bazaar/core/model/VideoDownloadState$Dismiss;

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment$onActivityCreated$$inlined$createViewModel$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;

    invoke-virtual {p1}, Lb/o/a/d;->La()V

    goto :goto_1

    .line 11
    :cond_5
    sget-object v1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown state in videoDownloadFragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    :cond_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
