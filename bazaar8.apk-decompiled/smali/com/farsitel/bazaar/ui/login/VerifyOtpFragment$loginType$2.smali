.class public final Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment$loginType$2;
.super Lkotlin/jvm/internal/Lambda;
.source "VerifyOtpFragment.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;-><init>()V
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
.field public final synthetic this$0:Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment$loginType$2;->this$0:Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment$loginType$2;->this$0:Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;

    invoke-static {v1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->c(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;)Lc/c/a/n/p/y;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/a/n/p/y;->a()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment$loginType$2;->invoke()Lcom/farsitel/bazaar/common/model/login/LoginType;

    move-result-object v0

    return-object v0
.end method
