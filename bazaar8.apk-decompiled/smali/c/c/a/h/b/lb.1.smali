.class public final Lc/c/a/h/b/lb;
.super Ljava/lang/Object;
.source "RetrofitModule.kt"

# interfaces
.implements Lc/c/a/c/f/a/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/di/module/RetrofitModule$gsonConverterFactory$1;->a(Lc/c/a/c/f/a/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/di/module/RetrofitModule$gsonConverterFactory$1;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/di/module/RetrofitModule$gsonConverterFactory$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/h/b/lb;->a:Lcom/farsitel/bazaar/di/module/RetrofitModule$gsonConverterFactory$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/farsitel/bazaar/data/entity/RequestProperties;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lkotlin/Pair;

    iget-object v0, p0, Lc/c/a/h/b/lb;->a:Lcom/farsitel/bazaar/di/module/RetrofitModule$gsonConverterFactory$1;

    iget-object v0, v0, Lcom/farsitel/bazaar/di/module/RetrofitModule$gsonConverterFactory$1;->$requestPropertiesRepository:Lc/c/a/e/d/q/a;

    invoke-virtual {v0}, Lc/c/a/e/d/q/a;->a()Lcom/farsitel/bazaar/data/entity/RequestProperties;

    move-result-object v0

    const-string v1, "properties"

    invoke-direct {p1, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
