.class public Lir/cafebazaar/inline/ux/flow/actions/ImagePickerAction;
.super Lir/cafebazaar/inline/ux/flow/actions/CallbackRemoteAction;
.source "ImagePickerAction.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lir/cafebazaar/inline/ux/flow/actions/ImagePickerAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/a/a/g/d/a/g;

    invoke-direct {v0}, Lf/a/a/g/d/a/g;-><init>()V

    sput-object v0, Lir/cafebazaar/inline/ux/flow/actions/ImagePickerAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    .line 1
    invoke-direct {p0, v1, v0, v0}, Lir/cafebazaar/inline/ux/flow/actions/CallbackRemoteAction;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lir/cafebazaar/inline/ux/flow/actions/CallbackRemoteAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/e/g;ILandroid/content/Intent;Landroid/os/Parcelable;)V
    .locals 0

    .line 4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 5
    new-instance p3, Lf/a/a/g/d/a/h;

    invoke-direct {p3, p0}, Lf/a/a/g/d/a/h;-><init>(Lir/cafebazaar/inline/ux/flow/actions/ImagePickerAction;)V

    invoke-static {p1, p3, p2}, Lf/a/a/e/r;->a(Lf/a/a/e/g;Lf/a/a/e/b/b/y$a;Landroid/net/Uri;)V

    return-void
.end method

.method public a(Lf/a/a/e/g;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lf/a/a/g/d/a/l;->a(Lf/a/a/e/g;Landroid/view/View;)V

    .line 2
    new-instance p2, Landroid/content/Intent;

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {p2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, p2, v0}, Lb/o/a/i;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public a(I)Z
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
