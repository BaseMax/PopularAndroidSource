.class public final enum Lir/cafebazaar/inline/ux/permission/Permission;
.super Ljava/lang/Enum;
.source "Permission.java"

# interfaces
.implements Lf/a/a/d/a;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lir/cafebazaar/inline/ux/permission/Permission;",
        ">;",
        "Lf/a/a/d/a;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lir/cafebazaar/inline/ux/permission/Permission;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic a:[Lir/cafebazaar/inline/ux/permission/Permission;

.field public static final enum approximateLocation:Lir/cafebazaar/inline/ux/permission/Permission;

.field public static final enum phoneNumber:Lir/cafebazaar/inline/ux/permission/Permission;


# instance fields
.field public iconResid:I

.field public textResid:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lir/cafebazaar/inline/ux/permission/Permission;

    sget v1, Lf/a/a/g;->permission_phone_number:I

    sget v2, Lf/a/a/d;->ic_phone:I

    const/4 v3, 0x0

    const-string v4, "phoneNumber"

    invoke-direct {v0, v4, v3, v1, v2}, Lir/cafebazaar/inline/ux/permission/Permission;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lir/cafebazaar/inline/ux/permission/Permission;->phoneNumber:Lir/cafebazaar/inline/ux/permission/Permission;

    .line 2
    new-instance v0, Lir/cafebazaar/inline/ux/permission/Permission;

    sget v1, Lf/a/a/g;->permission_approximate_location:I

    sget v2, Lf/a/a/d;->ic_location:I

    const/4 v4, 0x1

    const-string v5, "approximateLocation"

    invoke-direct {v0, v5, v4, v1, v2}, Lir/cafebazaar/inline/ux/permission/Permission;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lir/cafebazaar/inline/ux/permission/Permission;->approximateLocation:Lir/cafebazaar/inline/ux/permission/Permission;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lir/cafebazaar/inline/ux/permission/Permission;

    sget-object v1, Lir/cafebazaar/inline/ux/permission/Permission;->phoneNumber:Lir/cafebazaar/inline/ux/permission/Permission;

    aput-object v1, v0, v3

    sget-object v1, Lir/cafebazaar/inline/ux/permission/Permission;->approximateLocation:Lir/cafebazaar/inline/ux/permission/Permission;

    aput-object v1, v0, v4

    sput-object v0, Lir/cafebazaar/inline/ux/permission/Permission;->a:[Lir/cafebazaar/inline/ux/permission/Permission;

    .line 4
    new-instance v0, Lf/a/a/g/g/a;

    invoke-direct {v0}, Lf/a/a/g/g/a;-><init>()V

    sput-object v0, Lir/cafebazaar/inline/ux/permission/Permission;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lir/cafebazaar/inline/ux/permission/Permission;->textResid:I

    .line 3
    iput p4, p0, Lir/cafebazaar/inline/ux/permission/Permission;->iconResid:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ux/permission/Permission;
    .locals 1

    .line 1
    const-class v0, Lir/cafebazaar/inline/ux/permission/Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lir/cafebazaar/inline/ux/permission/Permission;

    return-object p0
.end method

.method public static values()[Lir/cafebazaar/inline/ux/permission/Permission;
    .locals 1

    .line 1
    sget-object v0, Lir/cafebazaar/inline/ux/permission/Permission;->a:[Lir/cafebazaar/inline/ux/permission/Permission;

    invoke-virtual {v0}, [Lir/cafebazaar/inline/ux/permission/Permission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lir/cafebazaar/inline/ux/permission/Permission;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lir/cafebazaar/inline/ux/permission/Permission;->iconResid:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lir/cafebazaar/inline/ux/permission/Permission;->textResid:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
