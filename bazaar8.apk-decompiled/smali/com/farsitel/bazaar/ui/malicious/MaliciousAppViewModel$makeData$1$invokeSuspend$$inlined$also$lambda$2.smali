.class public final Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MaliciousAppViewModel.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1;->d(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/farsitel/bazaar/common/model/page/PageTypeItem;",
        ">;",
        "Lcom/farsitel/bazaar/common/model/Page;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $receiver$0$inlined:Li/a/H;

.field public final synthetic this$0:Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1;Li/a/H;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$2;->this$0:Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1;

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$2;->$receiver$0$inlined:Li/a/H;

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
            "Lcom/farsitel/bazaar/common/model/page/PageTypeItem;",
            ">;)",
            "Lcom/farsitel/bazaar/common/model/Page;"
        }
    .end annotation

    .line 2
    new-instance v8, Lcom/farsitel/bazaar/common/model/Page;

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$2;->this$0:Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1;

    iget-object v0, v0, Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1;->this$0:Lc/c/a/n/q/e;

    invoke-static {v0}, Lc/c/a/n/q/e;->a(Lc/c/a/n/q/e;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100113

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "it"

    .line 4
    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lc/c/a/c/d/c$j;

    invoke-direct {v0}, Lc/c/a/c/d/c$j;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v2}, Lc/c/a/c/d/d;->a(Lc/c/a/c/d/d;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v0, v8

    move-object v4, p1

    .line 6
    invoke-direct/range {v0 .. v7}, Lcom/farsitel/bazaar/common/model/Page;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILh/f/b/f;)V

    return-object v8
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$2;->a(Ljava/util/List;)Lcom/farsitel/bazaar/common/model/Page;

    move-result-object p1

    return-object p1
.end method
