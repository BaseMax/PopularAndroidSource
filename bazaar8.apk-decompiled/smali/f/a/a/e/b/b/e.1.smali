.class public Lf/a/a/e/b/b/e;
.super Ljava/lang/Object;
.source "CheckBoxInflater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/b/g;->a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatCheckBox;

.field public final synthetic b:Lf/a/a/e/b/b/g;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/b/g;Landroidx/appcompat/widget/AppCompatCheckBox;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b/e;->b:Lf/a/a/e/b/b/g;

    iput-object p2, p0, Lf/a/a/e/b/b/e;->a:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/a/a/e/b/b/e;->a:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->performClick()Z

    return-void
.end method
