.class final Lcab/snapp/snappuikit/SnappEditText$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 332
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappEditText$3;->a:Lcab/snapp/snappuikit/SnappEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 336
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappEditText$3;->a:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {p1, p2}, Lcab/snapp/snappuikit/SnappEditText;->setEditTextIconActivated(Z)V

    return-void
.end method
