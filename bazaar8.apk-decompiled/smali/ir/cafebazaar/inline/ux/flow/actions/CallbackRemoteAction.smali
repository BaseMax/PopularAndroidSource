.class public abstract Lir/cafebazaar/inline/ux/flow/actions/CallbackRemoteAction;
.super Lf/a/a/g/d/a/l;
.source "CallbackRemoteAction.java"

# interfaces
.implements Lf/a/a/g/d/b;
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-direct {p0, v0, v1, v2}, Lf/a/a/g/d/a/l;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lf/a/a/g/d/a/l;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public abstract a(Lf/a/a/e/g;ILandroid/content/Intent;Landroid/os/Parcelable;)V
.end method

.method public abstract a(I)Z
.end method

.method public a(Lf/a/a/e/g;IILandroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lir/cafebazaar/inline/ux/flow/actions/CallbackRemoteAction;->a(I)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p2

    invoke-virtual {p2}, Lir/cafebazaar/inline/ui/InlineActivity;->v()Lf/a/a/g/d/a/c;

    move-result-object p2

    invoke-virtual {p2}, Lf/a/a/g/d/a/c;->a()Landroid/os/Parcelable;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p4, p2}, Lir/cafebazaar/inline/ux/flow/actions/CallbackRemoteAction;->a(Lf/a/a/e/g;ILandroid/content/Intent;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/d/a/t;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-boolean p2, p0, Lf/a/a/g/d/a/l;->b:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-boolean p2, p0, Lf/a/a/g/d/a/l;->c:Z

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
