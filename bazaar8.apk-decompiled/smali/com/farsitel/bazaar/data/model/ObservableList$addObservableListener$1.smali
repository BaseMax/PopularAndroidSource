.class public final Lcom/farsitel/bazaar/data/model/ObservableList$addObservableListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableList.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/data/model/ObservableList;->a(Lc/c/a/e/g/e;)V
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
.field public final synthetic $observableListener:Lc/c/a/e/g/e;

.field public final synthetic this$0:Lcom/farsitel/bazaar/data/model/ObservableList;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/data/model/ObservableList;Lc/c/a/e/g/e;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/model/ObservableList$addObservableListener$1;->this$0:Lcom/farsitel/bazaar/data/model/ObservableList;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/model/ObservableList$addObservableListener$1;->$observableListener:Lc/c/a/e/g/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/model/ObservableList$addObservableListener$1;->invoke()V

    sget-object v0, Lh/h;->a:Lh/h;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/model/ObservableList$addObservableListener$1;->this$0:Lcom/farsitel/bazaar/data/model/ObservableList;

    invoke-static {v0}, Lcom/farsitel/bazaar/data/model/ObservableList;->a(Lcom/farsitel/bazaar/data/model/ObservableList;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/data/model/ObservableList$addObservableListener$1;->$observableListener:Lc/c/a/e/g/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
