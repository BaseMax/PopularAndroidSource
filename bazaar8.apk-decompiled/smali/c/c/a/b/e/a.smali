.class public final Lc/c/a/b/e/a;
.super Ljava/lang/Object;
.source "NavigationManager.kt"

# interfaces
.implements Lb/w/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/b/e/b;-><init>(Lcom/farsitel/bazaar/ui/home/MainActivity;Lc/c/a/e/d/a/a;Ljava/util/Locale;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/b/e/b;


# direct methods
.method public constructor <init>(Lc/c/a/b/e/b;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/b/e/a;->a:Lc/c/a/b/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb/w/j;Lb/w/o;Landroid/os/Bundle;)V
    .locals 0

    const-string p3, "controller"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "destination"

    invoke-static {p2, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lb/w/o;->d()I

    move-result p2

    const p3, 0x7f0a0153

    if-ne p2, p3, :cond_0

    .line 2
    invoke-virtual {p1}, Lb/w/j;->i()Z

    .line 3
    iget-object p2, p0, Lc/c/a/b/e/a;->a:Lc/c/a/b/e/b;

    invoke-static {p2}, Lc/c/a/b/e/b;->c(Lc/c/a/b/e/b;)Ljava/util/Map;

    move-result-object p2

    iget-object p3, p0, Lc/c/a/b/e/a;->a:Lc/c/a/b/e/b;

    invoke-static {p3}, Lc/c/a/b/e/b;->a(Lc/c/a/b/e/b;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2, p3}, Lh/a/A;->b(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lb/w/j;->b(I)V

    :cond_0
    return-void
.end method
