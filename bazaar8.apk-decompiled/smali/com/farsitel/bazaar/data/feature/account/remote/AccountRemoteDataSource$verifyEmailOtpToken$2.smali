.class public final Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$verifyEmailOtpToken$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AccountRemoteDataSource.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/a/b/a;->c(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Lc/c/a/e/d/a/b/b/m;",
        "Lcom/farsitel/bazaar/data/entity/None;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$verifyEmailOtpToken$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$verifyEmailOtpToken$2;

    invoke-direct {v0}, Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$verifyEmailOtpToken$2;-><init>()V

    sput-object v0, Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$verifyEmailOtpToken$2;->a:Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$verifyEmailOtpToken$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lc/c/a/e/d/a/b/b/m;)Lcom/farsitel/bazaar/data/entity/None;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/data/entity/None;->INSTANCE:Lcom/farsitel/bazaar/data/entity/None;

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/e/d/a/b/b/m;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/account/remote/AccountRemoteDataSource$verifyEmailOtpToken$2;->a(Lc/c/a/e/d/a/b/b/m;)Lcom/farsitel/bazaar/data/entity/None;

    move-result-object p1

    return-object p1
.end method
