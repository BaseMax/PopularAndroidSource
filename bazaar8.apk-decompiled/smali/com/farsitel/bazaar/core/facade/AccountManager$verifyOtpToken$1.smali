.class public final Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AccountManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/d/c/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/login/LoginType;Lh/f/a/a;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.core.facade.AccountManager"
    f = "AccountManager.kt"
    l = {
        0x37,
        0x3f,
        0x40
    }
    m = "verifyOtpToken"
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public L$6:Ljava/lang/Object;

.field public L$7:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lc/c/a/d/c/b;


# direct methods
.method public constructor <init>(Lc/c/a/d/c/b;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->this$0:Lc/c/a/d/c/b;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lh/c/b;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->label:I

    iget-object v0, p0, Lcom/farsitel/bazaar/core/facade/AccountManager$verifyOtpToken$1;->this$0:Lc/c/a/d/c/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lc/c/a/d/c/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/login/LoginType;Lh/f/a/a;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
