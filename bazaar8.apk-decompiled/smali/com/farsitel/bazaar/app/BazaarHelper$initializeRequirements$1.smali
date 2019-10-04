.class public final Lcom/farsitel/bazaar/app/BazaarHelper$initializeRequirements$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BazaarHelper.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/b/d;->a(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Lc/c/a/a/c;",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lc/c/a/b/d;


# direct methods
.method public constructor <init>(Lc/c/a/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/app/BazaarHelper$initializeRequirements$1;->this$0:Lc/c/a/b/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/a/c;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/BazaarHelper$initializeRequirements$1;->a(Lc/c/a/a/c;)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Lc/c/a/a/c;)V
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/app/BazaarHelper$initializeRequirements$1;->this$0:Lc/c/a/b/d;

    invoke-static {v0}, Lc/c/a/b/d;->b(Lc/c/a/b/d;)Lc/c/a/a/b/a/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/c/a/a/b$a;->a(Lc/c/a/a/b/c;)V

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/app/BazaarHelper$initializeRequirements$1;->this$0:Lc/c/a/b/d;

    invoke-static {v0}, Lc/c/a/b/d;->c(Lc/c/a/b/d;)Lc/c/a/a/b/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/c/a/a/b$a;->a(Lc/c/a/a/b/c;)V

    return-void
.end method
