.class public Lcab/snapp/passenger/units/second_destination/SecondDestinationView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/second_destination/SecondDestinationView;

.field private view7f0a045b:Landroid/view/View;

.field private view7f0a045c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/second_destination/SecondDestinationView;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView_ViewBinding;-><init>(Lcab/snapp/passenger/units/second_destination/SecondDestinationView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/second_destination/SecondDestinationView;Landroid/view/View;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView_ViewBinding;->target:Lcab/snapp/passenger/units/second_destination/SecondDestinationView;

    .line 36
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0459

    const-string v2, "field \'vMapParent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->vMapParent:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a045c

    const-string v1, "field \'vPinMarker\' and method \'onPinClick\'"

    .line 37
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 38
    const-class v2, Landroidx/appcompat/widget/AppCompatImageButton;

    const-string v3, "field \'vPinMarker\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->vPinMarker:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 39
    iput-object v1, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView_ViewBinding;->view7f0a045c:Landroid/view/View;

    .line 40
    new-instance v0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/second_destination/SecondDestinationView_ViewBinding;Lcab/snapp/passenger/units/second_destination/SecondDestinationView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0457

    const-string v2, "field \'pinMarkerShadowIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->pinMarkerShadowIv:Landroid/widget/ImageView;

    .line 47
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0455

    const-string v2, "field \'pinMarkerDotIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->pinMarkerDotIv:Landroid/widget/ImageView;

    .line 48
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a045d

    const-string v2, "field \'tvDescriptionAddress\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->tvDescriptionAddress:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a045b

    const-string v1, "field \'btnMyLocationFab\' and method \'onMyLocationClick\'"

    .line 49
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 50
    const-class v2, Lcab/snapp/snappuikit/SnappFloatingActionButton;

    const-string v3, "field \'btnMyLocationFab\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappFloatingActionButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->btnMyLocationFab:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    .line 51
    iput-object v1, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView_ViewBinding;->view7f0a045b:Landroid/view/View;

    .line 52
    new-instance v0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/second_destination/SecondDestinationView_ViewBinding;Lcab/snapp/passenger/units/second_destination/SecondDestinationView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a045a

    const-string v2, "field \'tvMapBoxCopyright\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p2, p1, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->tvMapBoxCopyright:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView_ViewBinding;->target:Lcab/snapp/passenger/units/second_destination/SecondDestinationView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 66
    iput-object v1, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView_ViewBinding;->target:Lcab/snapp/passenger/units/second_destination/SecondDestinationView;

    .line 68
    iput-object v1, v0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->vMapParent:Landroid/widget/RelativeLayout;

    .line 69
    iput-object v1, v0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->vPinMarker:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 70
    iput-object v1, v0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->pinMarkerShadowIv:Landroid/widget/ImageView;

    .line 71
    iput-object v1, v0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->pinMarkerDotIv:Landroid/widget/ImageView;

    .line 72
    iput-object v1, v0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->tvDescriptionAddress:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    iput-object v1, v0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->btnMyLocationFab:Lcab/snapp/snappuikit/SnappFloatingActionButton;

    .line 74
    iput-object v1, v0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->tvMapBoxCopyright:Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView_ViewBinding;->view7f0a045c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iput-object v1, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView_ViewBinding;->view7f0a045c:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView_ViewBinding;->view7f0a045b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iput-object v1, p0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView_ViewBinding;->view7f0a045b:Landroid/view/View;

    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
