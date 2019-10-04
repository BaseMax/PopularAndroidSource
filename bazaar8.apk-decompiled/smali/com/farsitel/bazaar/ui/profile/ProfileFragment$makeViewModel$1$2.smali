.class public final synthetic Lcom/farsitel/bazaar/ui/profile/ProfileFragment$makeViewModel$1$2;
.super Lkotlin/jvm/internal/FunctionReference;
.source "ProfileFragment.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->jb()Lc/c/a/n/t/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lh/f/a/b<",
        "Lcom/farsitel/bazaar/core/model/Resource<",
        "+",
        "Ljava/lang/Long;",
        ">;",
        "Lh/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/profile/ProfileFragment;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/core/model/Resource;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/profile/ProfileFragment$makeViewModel$1$2;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;

    .line 2
    invoke-static {v0, p1}, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->a(Lcom/farsitel/bazaar/ui/profile/ProfileFragment;Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method

.method public final e()Lh/i/e;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;

    invoke-static {v0}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    const-string v0, "handleCreditState(Lcom/farsitel/bazaar/core/model/Resource;)V"

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "handleCreditState"

    return-object v0
.end method
