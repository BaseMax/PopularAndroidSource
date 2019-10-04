.class final Lcab/snapp/snappuikit/SnappFloatingActionMenu$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappuikit/SnappFloatingActionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappuikit/SnappFloatingActionMenu;


# direct methods
.method constructor <init>(Lcab/snapp/snappuikit/SnappFloatingActionMenu;)V
    .locals 0

    .line 893
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$9;->a:Lcab/snapp/snappuikit/SnappFloatingActionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 897
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappFloatingActionMenu$9;->a:Lcab/snapp/snappuikit/SnappFloatingActionMenu;

    invoke-static {p1}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->e(Lcab/snapp/snappuikit/SnappFloatingActionMenu;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcab/snapp/snappuikit/SnappFloatingActionMenu;->toggle(Z)V

    return-void
.end method
