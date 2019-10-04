.class public final synthetic Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1$1;
.super Lkotlin/jvm/internal/FunctionReference;
.source "VerifyOtpViewModel.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;->d(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lh/f/a/a<",
        "Lh/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc/c/a/n/p/A;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final e()Lh/i/e;
    .locals 1

    const-class v0, Lc/c/a/n/p/A;

    invoke-static {v0}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    const-string v0, "verifyCodeSuccess()V"

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "verifyCodeSuccess"

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1$1;->invoke()V

    sget-object v0, Lh/h;->a:Lh/h;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lc/c/a/n/p/A;

    .line 2
    invoke-static {v0}, Lc/c/a/n/p/A;->c(Lc/c/a/n/p/A;)V

    return-void
.end method
