.class public final Lcom/farsitel/bazaar/data/feature/app/SharedDataSource$sharedPreference$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SharedDataSource.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/b/I;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lc/c/a/e/d/b/I;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/b/I;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/app/SharedDataSource$sharedPreference$2;->this$0:Lc/c/a/e/d/b/I;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/SharedPreferences;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/app/SharedDataSource$sharedPreference$2;->this$0:Lc/c/a/e/d/b/I;

    invoke-virtual {v0}, Lc/c/a/e/d/b/I;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/app/SharedDataSource$sharedPreference$2;->this$0:Lc/c/a/e/d/b/I;

    invoke-virtual {v1}, Lc/c/a/e/d/b/I;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/feature/app/SharedDataSource$sharedPreference$2;->invoke()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
