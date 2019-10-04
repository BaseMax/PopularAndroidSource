.class public Lf/a/a/e/b/j;
.super Ljava/lang/Object;
.source "ButtonInflater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;->a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/g;

.field public final synthetic b:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;Lf/a/a/e/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/j;->b:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;

    iput-object p2, p0, Lf/a/a/e/b/j;->a:Lf/a/a/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/j;->a:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->v()Lf/a/a/g/d/a/c;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/e/b/j;->b:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;

    invoke-static {v1}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;->a(Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;)Lf/a/a/g/d/a/b;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lf/a/a/g/d/a/c;->a(Lf/a/a/g/d/a/b;Landroid/view/View;)V

    return-void
.end method
