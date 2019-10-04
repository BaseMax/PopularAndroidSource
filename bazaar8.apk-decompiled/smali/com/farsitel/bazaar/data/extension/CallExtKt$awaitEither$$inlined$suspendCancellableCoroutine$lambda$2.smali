.class public final Lcom/farsitel/bazaar/data/extension/CallExtKt$awaitEither$$inlined$suspendCancellableCoroutine$lambda$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CallExt.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Ljava/lang/Throwable;",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $map$inlined:Lh/f/a/b;

.field public final synthetic $this_awaitEither$inlined:Ll/b;


# direct methods
.method public constructor <init>(Ll/b;Lh/f/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/extension/CallExtKt$awaitEither$$inlined$suspendCancellableCoroutine$lambda$2;->$this_awaitEither$inlined:Ll/b;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/extension/CallExtKt$awaitEither$$inlined$suspendCancellableCoroutine$lambda$2;->$map$inlined:Lh/f/a/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/extension/CallExtKt$awaitEither$$inlined$suspendCancellableCoroutine$lambda$2;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/farsitel/bazaar/data/extension/CallExtKt$awaitEither$$inlined$suspendCancellableCoroutine$lambda$2;->$this_awaitEither$inlined:Ll/b;

    invoke-interface {p1}, Ll/b;->cancel()V

    return-void
.end method
