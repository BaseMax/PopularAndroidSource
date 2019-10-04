.class public final Lc/c/a/e/h/b/e;
.super Ljava/lang/Object;
.source "ReferrerInterceptor.kt"


# direct methods
.method public static final a(Lorg/json/JSONArray;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$iterator"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lh/h/g;->d(II)Lh/h/d;

    move-result-object v0

    invoke-static {v0}, Lh/a/u;->a(Ljava/lang/Iterable;)Lh/j/d;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/farsitel/bazaar/data/network/interceptor/ReferrerInterceptorKt$iterator$1;

    invoke-direct {v1, p0}, Lcom/farsitel/bazaar/data/network/interceptor/ReferrerInterceptorKt$iterator$1;-><init>(Lorg/json/JSONArray;)V

    invoke-static {v0, v1}, Lh/j/o;->a(Lh/j/d;Lh/f/a/b;)Lh/j/d;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/farsitel/bazaar/data/network/interceptor/ReferrerInterceptorKt$iterator$2;

    invoke-direct {v1, p0}, Lcom/farsitel/bazaar/data/network/interceptor/ReferrerInterceptorKt$iterator$2;-><init>(Lorg/json/JSONArray;)V

    invoke-static {v0, v1}, Lh/j/o;->b(Lh/j/d;Lh/f/a/b;)Lh/j/d;

    move-result-object p0

    invoke-interface {p0}, Lh/j/d;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
