.class final Lcab/snapp/snappuikit/SnappFloatingActionButton$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/snappuikit/SnappFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappuikit/SnappFloatingActionButton;


# direct methods
.method constructor <init>(Lcab/snapp/snappuikit/SnappFloatingActionButton;)V
    .locals 0

    .line 1422
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$4;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1426
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$4;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-static {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a(Lcab/snapp/snappuikit/SnappFloatingActionButton;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1428
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$4;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-static {p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton;->a(Lcab/snapp/snappuikit/SnappFloatingActionButton;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$4;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
