.class public Lf/a/a/g/i/a;
.super Ljava/lang/Object;
.source "ShortcutDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/g/i/e;->a()Lb/b/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:Lf/a/a/g/i/e;


# direct methods
.method public constructor <init>(Lf/a/a/g/i/e;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/g/i/a;->b:Lf/a/a/g/i/e;

    iput-object p2, p0, Lf/a/a/g/i/a;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lf/a/a/g/i/a;->b:Lf/a/a/g/i/e;

    invoke-static {p1}, Lf/a/a/g/i/e;->a(Lf/a/a/g/i/e;)Lf/a/a/e/g;

    move-result-object p1

    invoke-interface {p1}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/platform/InlineApplication;->h()Lf/a/a/g/i/f;

    move-result-object p1

    iget-object v0, p0, Lf/a/a/g/i/a;->a:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf/a/a/g/i/f;->a(Landroid/graphics/Bitmap;)V

    .line 3
    iget-object p1, p0, Lf/a/a/g/i/a;->b:Lf/a/a/g/i/e;

    invoke-static {p1}, Lf/a/a/g/i/e;->b(Lf/a/a/g/i/e;)Lb/b/a/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    invoke-static {}, Lf/a/a/a/a/b;->a()Lf/a/a/a/a/b;

    move-result-object p1

    new-instance v0, Lf/a/a/a/a/a;

    invoke-direct {v0}, Lf/a/a/a/a/a;-><init>()V

    const-string v1, "user"

    .line 5
    invoke-virtual {v0, v1}, Lf/a/a/a/a/a;->a(Ljava/lang/String;)Lf/a/a/a/a/a;

    iget-object v1, p0, Lf/a/a/g/i/a;->b:Lf/a/a/g/i/e;

    .line 6
    invoke-static {v1}, Lf/a/a/g/i/e;->c(Lf/a/a/g/i/e;)Lf/a/a/e/g;

    move-result-object v1

    invoke-interface {v1}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v1

    invoke-virtual {v1}, Lir/cafebazaar/inline/platform/InlineApplication;->j()Lir/cafebazaar/inline/platform/InlineUser;

    move-result-object v1

    invoke-virtual {v1}, Lir/cafebazaar/inline/platform/InlineUser;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/a/a/a/a/a;->d(Ljava/lang/String;)Lf/a/a/a/a/a;

    const-string v1, "inlineapp_action"

    .line 7
    invoke-virtual {v0, v1}, Lf/a/a/a/a/a;->b(Ljava/lang/String;)Lf/a/a/a/a/a;

    const-string v1, "button"

    const-string v2, "add"

    .line 8
    invoke-virtual {v0, v1, v2}, Lf/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/a/a/a;

    const-string v1, "shortcut_dialog"

    .line 9
    invoke-virtual {v0, v1}, Lf/a/a/a/a/a;->c(Ljava/lang/String;)Lf/a/a/a/a/a;

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lf/a/a/a/a/a;->a(J)Lf/a/a/a/a/a;

    .line 11
    invoke-virtual {p1, v0}, Lf/a/a/a/a/b;->a(Lf/a/a/a/a/a;)V

    return-void
.end method
