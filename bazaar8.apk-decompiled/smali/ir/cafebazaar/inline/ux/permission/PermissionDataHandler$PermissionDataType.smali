.class public Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;
.super Ljava/lang/Object;
.source "PermissionDataHandler.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PermissionDataType"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/a/a/g/g/c;

    invoke-direct {v0}, Lf/a/a/g/g/c;-><init>()V

    sput-object v0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->c:J

    .line 4
    iput-wide p1, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->b:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->c:J

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->b:J

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->c:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->c:J

    .line 3
    iput-object p1, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->b:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-wide v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler$PermissionDataType;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
