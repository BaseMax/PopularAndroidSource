.class final Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;


# direct methods
.method constructor <init>(Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView$1;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 215
    iget-object p1, p0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView$1;->a:Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;

    iget-object p1, p1, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->h:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->performClick()Z

    return-void
.end method
