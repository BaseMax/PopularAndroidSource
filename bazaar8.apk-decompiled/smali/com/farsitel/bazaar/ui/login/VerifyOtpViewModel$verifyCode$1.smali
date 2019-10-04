.class public final Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VerifyOtpViewModel.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/p/A;->a(Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/login/LoginType;)V
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
        "Lh/h;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.ui.login.VerifyOtpViewModel$verifyCode$1"
    f = "VerifyOtpViewModel.kt"
    l = {
        0x26
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $code:Ljava/lang/String;

.field public final synthetic $loginType:Lcom/farsitel/bazaar/common/model/login/LoginType;

.field public final synthetic $phoneNumber:Ljava/lang/String;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lc/c/a/n/p/A;


# direct methods
.method public constructor <init>(Lc/c/a/n/p/A;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/login/LoginType;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;->this$0:Lc/c/a/n/p/A;

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;->$phoneNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;->$code:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;->$loginType:Lcom/farsitel/bazaar/common/model/login/LoginType;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;
    .locals 7
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

    new-instance v0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;->this$0:Lc/c/a/n/p/A;

    iget-object v3, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;->$phoneNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;->$code:Ljava/lang/String;

    iget-object v5, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;->$loginType:Lcom/farsitel/bazaar/common/model/login/LoginType;

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;-><init>(Lc/c/a/n/p/A;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/login/LoginType;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;->p$:Li/a/H;

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;->this$0:Lc/c/a/n/p/A;

    invoke-static {p1}, Lc/c/a/n/p/A;->a(Lc/c/a/n/p/A;)Lc/c/a/d/c/b;

    move-result-object v3

    iget-object v4, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;->$phoneNumber:Ljava/lang/String;

    iget-object v5, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;->$code:Ljava/lang/String;

    iget-object v6, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;->$loginType:Lcom/farsitel/bazaar/common/model/login/LoginType;

    new-instance v7, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1$1;

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;->this$0:Lc/c/a/n/p/A;

    invoke-direct {v7, p1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1$1;-><init>(Lc/c/a/n/p/A;)V

    new-instance v8, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1$2;

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;->this$0:Lc/c/a/n/p/A;

    invoke-direct {v8, p1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1$2;-><init>(Lc/c/a/n/p/A;)V

    iput v2, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$verifyCode$1;->label:I

    move-object v9, p0

    invoke-virtual/range {v3 .. v9}, Lc/c/a/d/c/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/login/LoginType;Lh/f/a/a;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method
