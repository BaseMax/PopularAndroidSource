.class public Lf/a/a/e/b/t;
.super Ljava/lang/Object;
.source "ImageInflater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/g;

.field public final synthetic b:Lir/cafebazaar/inline/ui/inflaters/ImageInflater;


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/ui/inflaters/ImageInflater;Lf/a/a/e/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/t;->b:Lir/cafebazaar/inline/ui/inflaters/ImageInflater;

    iput-object p2, p0, Lf/a/a/e/b/t;->a:Lf/a/a/e/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/t;->a:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/a/a/e/b/t;->a:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/a/a/e/b/t;->a:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lf/a/a/e/b/t;->b:Lir/cafebazaar/inline/ui/inflaters/ImageInflater;

    invoke-static {v2}, Lir/cafebazaar/inline/ui/inflaters/ImageInflater;->a(Lir/cafebazaar/inline/ui/inflaters/ImageInflater;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, p1, v1, v3}, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;->a(Landroid/content/Context;Landroid/view/View;[Ljava/lang/String;I)V

    return-void
.end method
