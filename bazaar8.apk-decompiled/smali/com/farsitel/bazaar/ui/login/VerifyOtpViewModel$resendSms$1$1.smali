.class public final Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "VerifyOtpViewModel.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;->d(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Lcom/farsitel/bazaar/data/entity/WaitingTime;",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1$1;->this$0:Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/data/entity/WaitingTime;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/WaitingTime;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1$1;->a(J)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(J)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1$1;->this$0:Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;

    iget-object v0, v0, Lcom/farsitel/bazaar/ui/login/VerifyOtpViewModel$resendSms$1;->this$0:Lc/c/a/n/p/A;

    invoke-static {v0}, Lc/c/a/n/p/A;->b(Lc/c/a/n/p/A;)Lb/r/t;

    move-result-object v0

    new-instance v7, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v0, v7}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void
.end method
