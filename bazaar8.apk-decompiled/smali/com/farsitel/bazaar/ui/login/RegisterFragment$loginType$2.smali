.class public final Lcom/farsitel/bazaar/ui/login/RegisterFragment$loginType$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RegisterFragment.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/login/RegisterFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Lcom/farsitel/bazaar/common/model/login/LoginType;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/farsitel/bazaar/ui/login/RegisterFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/login/RegisterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment$loginType$2;->this$0:Lcom/farsitel/bazaar/ui/login/RegisterFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/farsitel/bazaar/common/model/login/LoginType;
    .locals 2

    .line 2
    invoke-static {}, Lcom/farsitel/bazaar/common/model/login/LoginType;->values()[Lcom/farsitel/bazaar/common/model/login/LoginType;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/login/RegisterFragment$loginType$2;->this$0:Lcom/farsitel/bazaar/ui/login/RegisterFragment;

    invoke-static {v1}, Lcom/farsitel/bazaar/ui/login/RegisterFragment;->a(Lcom/farsitel/bazaar/ui/login/RegisterFragment;)Lc/c/a/n/p/k;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/a/n/p/k;->b()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/RegisterFragment$loginType$2;->invoke()Lcom/farsitel/bazaar/common/model/login/LoginType;

    move-result-object v0

    return-object v0
.end method
