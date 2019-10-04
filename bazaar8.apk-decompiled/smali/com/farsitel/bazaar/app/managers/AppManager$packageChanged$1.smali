.class public final Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppManager.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/b/d/b;->a(Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;)V
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
    c = "com.farsitel.bazaar.app.managers.AppManager$packageChanged$1"
    f = "AppManager.kt"
    l = {
        0x71,
        0x72,
        0x78
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $packageChangeModel:Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public p$:Li/a/H;

.field public final synthetic this$0:Lc/c/a/b/d/b;


# direct methods
.method public constructor <init>(Lc/c/a/b/d/b;Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->this$0:Lc/c/a/b/d/b;

    iput-object p2, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->$packageChangeModel:Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;

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

    new-instance v0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;

    iget-object v1, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->this$0:Lc/c/a/b/d/b;

    iget-object v2, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->$packageChangeModel:Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;

    invoke-direct {v0, v1, v2, p2}, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;-><init>(Lc/c/a/b/d/b;Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;Lh/c/b;)V

    check-cast p1, Li/a/H;

    iput-object p1, v0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->p$:Li/a/H;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lh/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->a(Ljava/lang/Object;Lh/c/b;)Lh/c/b;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;

    sget-object p2, Lh/h;->a:Lh/h;

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/PackageInfo;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->p$:Li/a/H;

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->$packageChangeModel:Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;->getChangeType()Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;

    move-result-object p1

    sget-object v1, Lc/c/a/b/d/a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    goto/16 :goto_2

    .line 5
    :cond_4
    sget-object p1, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    sget-object v0, Lcom/farsitel/bazaar/app/notification/NotificationType;->APP_DOWNLOAD_COMPLETE:Lcom/farsitel/bazaar/app/notification/NotificationType;

    iget-object v1, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->$packageChangeModel:Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lc/c/a/b/f/h;->a(Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->this$0:Lc/c/a/b/d/b;

    iget-object v0, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->$packageChangeModel:Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lc/c/a/b/d/b;->a(Lc/c/a/b/d/b;Ljava/lang/String;)V

    goto :goto_2

    .line 7
    :cond_5
    sget-object p1, Lc/c/a/c/h/e;->a:Lc/c/a/c/h/e;

    iget-object v1, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->this$0:Lc/c/a/b/d/b;

    invoke-static {v1}, Lc/c/a/b/d/b;->a(Lc/c/a/b/d/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->$packageChangeModel:Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lc/c/a/c/h/e;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 8
    iget-object v1, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->this$0:Lc/c/a/b/d/b;

    invoke-static {v1}, Lc/c/a/b/d/b;->b(Lc/c/a/b/d/b;)Lc/c/a/e/d/b/ba;

    move-result-object v1

    .line 9
    iget-object v3, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->$packageChangeModel:Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {p1}, Lc/c/a/c/b/h;->b(Landroid/content/pm/PackageInfo;)J

    move-result-wide v4

    iput-object p1, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->label:I

    .line 11
    invoke-virtual {v1, v3, v4, v5, p0}, Lc/c/a/e/d/b/ba;->a(Ljava/lang/String;JLh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 12
    :cond_6
    :goto_0
    sget-object p1, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    sget-object v0, Lcom/farsitel/bazaar/app/notification/NotificationType;->APP_DOWNLOAD_COMPLETE:Lcom/farsitel/bazaar/app/notification/NotificationType;

    iget-object v1, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->$packageChangeModel:Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lc/c/a/b/f/h;->a(Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->this$0:Lc/c/a/b/d/b;

    iget-object v0, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->$packageChangeModel:Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lc/c/a/b/d/b;->a(Lc/c/a/b/d/b;Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_7
    iget-object p1, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->this$0:Lc/c/a/b/d/b;

    invoke-static {p1}, Lc/c/a/b/d/b;->b(Lc/c/a/b/d/b;)Lc/c/a/e/d/b/ba;

    move-result-object p1

    iget-object v1, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->$packageChangeModel:Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput v4, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->label:I

    invoke-virtual {p1, v1, p0}, Lc/c/a/e/d/b/ba;->b(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 15
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->this$0:Lc/c/a/b/d/b;

    invoke-static {p1}, Lc/c/a/b/d/b;->b(Lc/c/a/b/d/b;)Lc/c/a/e/d/b/ba;

    move-result-object p1

    iget-object v1, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->$packageChangeModel:Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput v3, p0, Lcom/farsitel/bazaar/app/managers/AppManager$packageChanged$1;->label:I

    invoke-virtual {p1, v1, p0}, Lc/c/a/e/d/b/ba;->c(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 16
    :cond_9
    :goto_2
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method
