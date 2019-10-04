.class public final Lc/c/a/n/t/b/c;
.super Lc/c/a/d/f/p;
.source "ChangePhoneNumberViewModel.kt"


# instance fields
.field public final d:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lc/c/a/e/d/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/a/a;)V
    .locals 1

    const-string v0, "accountRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/p;-><init>()V

    iput-object p1, p0, Lc/c/a/n/t/b/c;->e:Lc/c/a/e/d/a/a;

    .line 2
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/n/t/b/c;->d:Lb/r/t;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/t/b/c;)Lc/c/a/e/d/a/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/c/a/n/t/b/c;->e:Lc/c/a/e/d/a/a;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/t/b/c;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/t/b/c;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/t/b/c;Lcom/farsitel/bazaar/data/entity/None;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/t/b/c;->a(Lcom/farsitel/bazaar/data/entity/None;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 8

    .line 9
    iget-object v0, p0, Lc/c/a/n/t/b/c;->d:Lb/r/t;

    new-instance v7, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v0, v7}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/None;)V
    .locals 8

    .line 8
    iget-object v0, p0, Lc/c/a/n/t/b/c;->d:Lb/r/t;

    new-instance v7, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v0, v7}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 14

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lc/c/a/c/b/i;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lc/c/a/n/t/b/c;->d:Lb/r/t;

    new-instance v7, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v2, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {v0, v7}, Lb/r/t;->b(Ljava/lang/Object;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 6
    new-instance v11, Lcom/farsitel/bazaar/ui/profile/phonenumber/ChangePhoneNumberViewModel$changePhoneNumber$1;

    const/4 v0, 0x0

    invoke-direct {v11, p0, p1, v0}, Lcom/farsitel/bazaar/ui/profile/phonenumber/ChangePhoneNumberViewModel$changePhoneNumber$1;-><init>(Lc/c/a/n/t/b/c;Ljava/lang/String;Lh/c/b;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object v8, p0

    invoke-static/range {v8 .. v13}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcom/farsitel/bazaar/data/entity/InvalidPhoneNumberException;

    invoke-direct {p1}, Lcom/farsitel/bazaar/data/entity/InvalidPhoneNumberException;-><init>()V

    invoke-virtual {p0, p1}, Lc/c/a/n/t/b/c;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    :goto_0
    return-void
.end method

.method public final e()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/t/b/c;->d:Lb/r/t;

    return-object v0
.end method
