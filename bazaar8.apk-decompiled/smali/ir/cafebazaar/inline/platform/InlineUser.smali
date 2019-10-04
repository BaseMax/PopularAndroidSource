.class public Lir/cafebazaar/inline/platform/InlineUser;
.super Ljava/lang/Object;
.source "InlineUser.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lir/cafebazaar/inline/platform/InlineUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lc/c/a/d/c/b;

.field public final d:Lir/cafebazaar/inline/ux/permission/PermissionManager;

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/a/a/d/d;

    invoke-direct {v0}, Lf/a/a/d/d;-><init>()V

    sput-object v0, Lir/cafebazaar/inline/platform/InlineUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lf/a/a/b/a;->b:Lc/c/a/d/c/b;

    iput-object v0, p0, Lir/cafebazaar/inline/platform/InlineUser;->c:Lc/c/a/d/c/b;

    .line 3
    new-instance v0, Lir/cafebazaar/inline/ux/permission/PermissionManager;

    invoke-direct {v0}, Lir/cafebazaar/inline/ux/permission/PermissionManager;-><init>()V

    iput-object v0, p0, Lir/cafebazaar/inline/platform/InlineUser;->d:Lir/cafebazaar/inline/ux/permission/PermissionManager;

    .line 4
    invoke-static {}, Lir/cafebazaar/inline/platform/InlineUser;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lir/cafebazaar/inline/platform/InlineUser;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Lf/a/a/b/a;->b:Lc/c/a/d/c/b;

    iput-object v0, p0, Lir/cafebazaar/inline/platform/InlineUser;->c:Lc/c/a/d/c/b;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lir/cafebazaar/inline/platform/InlineUser;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lir/cafebazaar/inline/platform/InlineUser;->b:Ljava/lang/String;

    .line 9
    const-class v0, Lir/cafebazaar/inline/ux/permission/PermissionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lir/cafebazaar/inline/ux/permission/PermissionManager;

    iput-object v0, p0, Lir/cafebazaar/inline/platform/InlineUser;->d:Lir/cafebazaar/inline/ux/permission/PermissionManager;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lir/cafebazaar/inline/platform/InlineUser;->e:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x82

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lf/a/a/e/g;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b()Lir/cafebazaar/inline/ux/permission/PermissionManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/platform/InlineUser;->d:Lir/cafebazaar/inline/ux/permission/PermissionManager;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/platform/InlineUser;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/platform/InlineUser;->a:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/platform/InlineUser;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lir/cafebazaar/inline/platform/InlineUser;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lir/cafebazaar/inline/platform/InlineUser;->d:Lir/cafebazaar/inline/ux/permission/PermissionManager;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget-object p2, p0, Lir/cafebazaar/inline/platform/InlineUser;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
