.class public final Lcom/farsitel/bazaar/data/model/ObservableList$removeRange$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableList.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/data/model/ObservableList;->removeRange(II)V
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
.field public final synthetic $fromIndex:I

.field public final synthetic $toIndex:I

.field public final synthetic this$0:Lcom/farsitel/bazaar/data/model/ObservableList;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/data/model/ObservableList;II)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/model/ObservableList$removeRange$1;->this$0:Lcom/farsitel/bazaar/data/model/ObservableList;

    iput p2, p0, Lcom/farsitel/bazaar/data/model/ObservableList$removeRange$1;->$fromIndex:I

    iput p3, p0, Lcom/farsitel/bazaar/data/model/ObservableList$removeRange$1;->$toIndex:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/model/ObservableList$removeRange$1;->invoke()V

    sget-object v0, Lh/h;->a:Lh/h;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/model/ObservableList$removeRange$1;->this$0:Lcom/farsitel/bazaar/data/model/ObservableList;

    iget v1, p0, Lcom/farsitel/bazaar/data/model/ObservableList$removeRange$1;->$fromIndex:I

    iget v2, p0, Lcom/farsitel/bazaar/data/model/ObservableList$removeRange$1;->$toIndex:I

    invoke-static {v0, v1, v2}, Lcom/farsitel/bazaar/data/model/ObservableList;->a(Lcom/farsitel/bazaar/data/model/ObservableList;II)V

    return-void
.end method
