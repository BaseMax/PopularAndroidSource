.class public final Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$locale$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MaliciousAppViewModel.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/q/e;-><init>(Landroid/content/Context;Lc/c/a/n/c/c/u;Lc/c/a/e/d/b/ba;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lc/c/a/n/q/e;


# direct methods
.method public constructor <init>(Lc/c/a/n/q/e;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$locale$2;->this$0:Lc/c/a/n/q/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$locale$2;->invoke()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Locale;
    .locals 2

    .line 2
    sget-object v0, Lc/c/a/d/a/a;->b:Lc/c/a/d/a/a$a;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$locale$2;->this$0:Lc/c/a/n/q/e;

    invoke-static {v1}, Lc/c/a/n/q/e;->a(Lc/c/a/n/q/e;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/d/a/a$a;->a(Landroid/content/Context;)Lc/c/a/e/d/u/a;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->n()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method
