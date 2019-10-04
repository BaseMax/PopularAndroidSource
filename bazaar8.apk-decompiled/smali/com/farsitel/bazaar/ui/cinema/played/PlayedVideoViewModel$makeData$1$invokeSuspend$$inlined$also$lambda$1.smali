.class public final Lcom/farsitel/bazaar/ui/cinema/played/PlayedVideoViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PlayedVideoViewModel.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/played/PlayedVideoViewModel$makeData$1;->d(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Ljava/util/List<",
        "+",
        "Lcom/farsitel/bazaar/common/model/page/ListItem;",
        ">;",
        "Lcom/farsitel/bazaar/common/model/Page;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/farsitel/bazaar/ui/cinema/played/PlayedVideoViewModel$makeData$1;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/cinema/played/PlayedVideoViewModel$makeData$1;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/played/PlayedVideoViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/played/PlayedVideoViewModel$makeData$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/farsitel/bazaar/common/model/Page;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/page/ListItem;",
            ">;)",
            "Lcom/farsitel/bazaar/common/model/Page;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/common/model/Page;

    .line 3
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/played/PlayedVideoViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$1;->this$0:Lcom/farsitel/bazaar/ui/cinema/played/PlayedVideoViewModel$makeData$1;

    iget-object v1, v1, Lcom/farsitel/bazaar/ui/cinema/played/PlayedVideoViewModel$makeData$1;->this$0:Lc/c/a/n/j/f/b;

    invoke-static {v1}, Lc/c/a/n/j/f/b;->a(Lc/c/a/n/j/f/b;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100225

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v1, Lc/c/a/c/d/c$i;

    invoke-direct {v1}, Lc/c/a/c/d/c$i;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v3}, Lc/c/a/c/d/d;->a(Lc/c/a/c/d/d;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v1, v0

    move-object v5, p1

    .line 5
    invoke-direct/range {v1 .. v8}, Lcom/farsitel/bazaar/common/model/Page;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILh/f/b/f;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/played/PlayedVideoViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$1;->a(Ljava/util/List;)Lcom/farsitel/bazaar/common/model/Page;

    move-result-object p1

    return-object p1
.end method
