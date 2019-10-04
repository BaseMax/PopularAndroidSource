.class public Lb/b/g/c;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/ActionBarContextView;->a(Lb/b/f/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/b/f/b;

.field public final synthetic b:Landroidx/appcompat/widget/ActionBarContextView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionBarContextView;Lb/b/f/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/b/g/c;->b:Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p2, p0, Lb/b/g/c;->a:Lb/b/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lb/b/g/c;->a:Lb/b/f/b;

    invoke-virtual {p1}, Lb/b/f/b;->a()V

    return-void
.end method
