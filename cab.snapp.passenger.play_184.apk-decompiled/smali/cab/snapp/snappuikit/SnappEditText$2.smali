.class final Lcab/snapp/snappuikit/SnappEditText$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/snappuikit/SnappEditText;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappuikit/SnappEditText;


# direct methods
.method constructor <init>(Lcab/snapp/snappuikit/SnappEditText;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappEditText$2;->a:Lcab/snapp/snappuikit/SnappEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 325
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappEditText$2;->a:Lcab/snapp/snappuikit/SnappEditText;

    invoke-static {p1}, Lcab/snapp/snappuikit/SnappEditText;->b(Lcab/snapp/snappuikit/SnappEditText;)Lcab/snapp/snappuikit/b/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 327
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappEditText$2;->a:Lcab/snapp/snappuikit/SnappEditText;

    invoke-static {p1}, Lcab/snapp/snappuikit/SnappEditText;->b(Lcab/snapp/snappuikit/SnappEditText;)Lcab/snapp/snappuikit/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcab/snapp/snappuikit/b/a;->onActionButtonCLicked()V

    :cond_0
    return-void
.end method
