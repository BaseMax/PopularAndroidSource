.class public Lb/b/g/ua;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/g/wa;-><init>(Landroidx/appcompat/widget/Toolbar;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final a:Lb/b/f/a/a;

.field public final synthetic b:Lb/b/g/wa;


# direct methods
.method public constructor <init>(Lb/b/g/wa;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lb/b/g/ua;->b:Lb/b/g/wa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lb/b/f/a/a;

    iget-object v0, p0, Lb/b/g/ua;->b:Lb/b/g/wa;

    iget-object v0, v0, Lb/b/g/wa;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lb/b/g/ua;->b:Lb/b/g/wa;

    iget-object v6, v0, Lb/b/g/wa;->i:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x102002c

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lb/b/f/a/a;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object p1, p0, Lb/b/g/ua;->a:Lb/b/f/a/a;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lb/b/g/ua;->b:Lb/b/g/wa;

    iget-object v0, p1, Lb/b/g/wa;->l:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lb/b/g/wa;->m:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iget-object v1, p0, Lb/b/g/ua;->a:Lb/b/f/a/a;

    invoke-interface {v0, p1, v1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method
