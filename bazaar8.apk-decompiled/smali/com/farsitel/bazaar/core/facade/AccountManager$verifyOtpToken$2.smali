.class public final Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AccountManager.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/d/c/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/login/LoginType;Lh/f/a/a;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lh/f/a/c<",
        "Li/a/H;",
        "Lh/c/b<",
        "-",
        "Lcom/farsitel/bazaar/data/entity/Either<",
        "+",
        "Lcom/farsitel/bazaar/data/entity/LoginResponse;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.core.facade.AccountManager$verifyOtpToken$2"
    f = "AccountManager.kt"
    l = {
        0x37
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $otpCode:Ljava/lang/String;

.field public final synthetic $userName:Ljava/lang/String;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lc/c/a/d/c/b;


# direct methods
.method public constructor <init>(Lc/c/a/d/c/b;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$2;->this$0:Lc/c/a/d/c/b;

    iput-object p2, p0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$2;->$userName:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$2;->$otpCode:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lh/c/b<",
            "*>;)",
            "Lh/c/b<",
            "Lh/h;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$2;

    iget-object v1, p0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$2;->this$0:Lc/c/a/d/c/b;

    iget-object v2, p0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$2;->$userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$2;->$otpCode:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$2;-><init>(Lc/c/a/d/c/b;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$2;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$2;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$2;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$2;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$2;->p$:Li/a/H;

    iget-object p1, p0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$2;->this$0:Lc/c/a/d/c/b;

    invoke-static {p1}, Lc/c/a/d/c/b;->a(Lc/c/a/d/c/b;)Lc/c/a/e/d/a/a;

    move-result-object p1

    iget-object v1, p0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$2;->$userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$2;->$otpCode:Ljava/lang/String;

    iput v2, p0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$2;->label:I

    invoke-virtual {p1, v1, v3, p0}, Lc/c/a/e/d/a/a;->c(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
