.class public final Lc/c/a/d/f/n;
.super Ljava/lang/Object;
.source "BaseFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/d/f/o;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/d/f/o;


# direct methods
.method public constructor <init>(Lc/c/a/d/f/o;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/d/f/n;->a:Lc/c/a/d/f/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc/c/a/d/f/n;->a:Lc/c/a/d/f/o;

    invoke-virtual {p1}, Lc/c/a/d/f/o;->Pa()Lh/f/a/a;

    move-result-object p1

    invoke-interface {p1}, Lh/f/a/a;->invoke()Ljava/lang/Object;

    return-void
.end method
