.class final Lcab/snapp/snappuikit/SnappEditText$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/snappuikit/SnappEditText;->a()V
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

    .line 172
    iput-object p1, p0, Lcab/snapp/snappuikit/SnappEditText$1;->a:Lcab/snapp/snappuikit/SnappEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 176
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 178
    iget-object p1, p0, Lcab/snapp/snappuikit/SnappEditText$1;->a:Lcab/snapp/snappuikit/SnappEditText;

    invoke-static {p1}, Lcab/snapp/snappuikit/SnappEditText;->a(Lcab/snapp/snappuikit/SnappEditText;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcab/snapp/snappuikit/SnappEditText;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
