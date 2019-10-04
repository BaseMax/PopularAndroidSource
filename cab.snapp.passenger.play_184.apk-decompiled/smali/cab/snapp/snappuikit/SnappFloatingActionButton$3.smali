.class final Lcab/snapp/snappuikit/SnappFloatingActionButton$3;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/snappuikit/SnappFloatingActionButton;->e()Landroid/graphics/drawable/Drawable;
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

    .line 1037
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$3;->a:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    .line 1041
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, v0, p1}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method
