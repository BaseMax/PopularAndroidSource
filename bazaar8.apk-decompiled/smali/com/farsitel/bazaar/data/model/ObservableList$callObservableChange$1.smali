.class public final Lcom/farsitel/bazaar/data/model/ObservableList$callObservableChange$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableList.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/data/model/ObservableList;->a(Lh/f/a/a;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/farsitel/bazaar/data/model/ObservableList;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/data/model/ObservableList;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/model/ObservableList$callObservableChange$1;->this$0:Lcom/farsitel/bazaar/data/model/ObservableList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/model/ObservableList$callObservableChange$1;->invoke()V

    sget-object v0, Lh/h;->a:Lh/h;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/model/ObservableList$callObservableChange$1;->this$0:Lcom/farsitel/bazaar/data/model/ObservableList;

    invoke-static {v0}, Lcom/farsitel/bazaar/data/model/ObservableList;->a(Lcom/farsitel/bazaar/data/model/ObservableList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/e/g/e;

    .line 3
    invoke-interface {v1}, Lc/c/a/e/g/e;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method
