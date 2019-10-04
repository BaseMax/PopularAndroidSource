.class public final Lcom/farsitel/bazaar/data/model/ObservableList$addAll$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableList.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/data/model/ObservableList;->addAll(ILjava/util/Collection;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $elements:Ljava/util/Collection;

.field public final synthetic $index:I

.field public final synthetic this$0:Lcom/farsitel/bazaar/data/model/ObservableList;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/data/model/ObservableList;ILjava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/model/ObservableList$addAll$2;->this$0:Lcom/farsitel/bazaar/data/model/ObservableList;

    iput p2, p0, Lcom/farsitel/bazaar/data/model/ObservableList$addAll$2;->$index:I

    iput-object p3, p0, Lcom/farsitel/bazaar/data/model/ObservableList$addAll$2;->$elements:Ljava/util/Collection;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/model/ObservableList$addAll$2;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/model/ObservableList$addAll$2;->this$0:Lcom/farsitel/bazaar/data/model/ObservableList;

    iget v1, p0, Lcom/farsitel/bazaar/data/model/ObservableList$addAll$2;->$index:I

    iget-object v2, p0, Lcom/farsitel/bazaar/data/model/ObservableList$addAll$2;->$elements:Ljava/util/Collection;

    invoke-static {v0, v1, v2}, Lcom/farsitel/bazaar/data/model/ObservableList;->a(Lcom/farsitel/bazaar/data/model/ObservableList;ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method
