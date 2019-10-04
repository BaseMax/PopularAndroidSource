.class public final Lcom/farsitel/bazaar/di/module/RetrofitModule$gsonConverterFactory$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RetrofitModule.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/h/b/mb;->a(Lc/c/a/e/d/q/a;)Ll/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Lc/c/a/c/f/a/d;",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $requestPropertiesRepository:Lc/c/a/e/d/q/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/q/a;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/di/module/RetrofitModule$gsonConverterFactory$1;->$requestPropertiesRepository:Lc/c/a/e/d/q/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/c/f/a/d;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/di/module/RetrofitModule$gsonConverterFactory$1;->a(Lc/c/a/c/f/a/d;)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Lc/c/a/c/f/a/d;)V
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lc/c/a/h/b/kb;

    invoke-direct {v0}, Lc/c/a/h/b/kb;-><init>()V

    invoke-virtual {p1, v0}, Lc/c/a/c/f/a/d;->a(Lc/c/a/c/f/a/b/a;)V

    .line 3
    new-instance v0, Lc/c/a/h/b/lb;

    invoke-direct {v0, p0}, Lc/c/a/h/b/lb;-><init>(Lcom/farsitel/bazaar/di/module/RetrofitModule$gsonConverterFactory$1;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/f/a/d;->a(Lc/c/a/c/f/a/a/a;)V

    return-void
.end method
