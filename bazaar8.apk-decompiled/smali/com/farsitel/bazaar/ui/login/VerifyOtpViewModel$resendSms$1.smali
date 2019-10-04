.class public final Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VerifyOtpViewModel.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/p/A;->a(Ljava/lang/String;)Li/a/ra;
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
    c = "com.farsitel.bazaar.ui.login.VerifyOtpViewModel$resendSms$1"
    f = "VerifyOtpViewModel.kt"
    l = {
        0x3c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $phoneNumber:Ljava/lang/String;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lc/c/a/n/p/A;


# direct methods
.method public constructor <init>(Lc/c/a/n/p/A;Ljava/lang/String;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;->this$0:Lc/c/a/n/p/A;

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;->$phoneNumber:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILh/c/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;
    .locals 3
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

    new-instance v0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;->this$0:Lc/c/a/n/p/A;

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;->$phoneNumber:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;-><init>(Lc/c/a/n/p/A;Ljava/lang/String;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;->label:I

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

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;->p$:Li/a/H;

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;->this$0:Lc/c/a/n/p/A;

    invoke-static {p1}, Lc/c/a/n/p/A;->b(Lc/c/a/n/p/A;)Lb/r/t;

    move-result-object p1

    new-instance v1, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v4, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {p1, v1}, Lb/r/t;->b(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;->this$0:Lc/c/a/n/p/A;

    invoke-static {p1}, Lc/c/a/n/p/A;->a(Lc/c/a/n/p/A;)Lc/c/a/d/c/b;

    move-result-object p1

    .line 6
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;->$phoneNumber:Ljava/lang/String;

    .line 7
    new-instance v3, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1$1;

    invoke-direct {v3, p0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1$1;-><init>(Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;)V

    .line 8
    new-instance v4, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1$2;

    invoke-direct {v4, p0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1$2;-><init>(Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;)V

    iput v2, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;->label:I

    .line 9
    invoke-virtual {p1, v1, v3, v4, p0}, Lc/c/a/d/c/b;->a(Ljava/lang/String;Lh/f/a/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 10
    :cond_2
    :goto_0
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method
