.class final Lcom/adyen/threeds2/internal/a/a/b/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adyen/threeds2/internal/a/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/adyen/threeds2/internal/a/a/b/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/adyen/threeds2/internal/a/a/b/a;
    .locals 1

    .line 40
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a;

    invoke-direct {v0, p1}, Lcom/adyen/threeds2/internal/a/a/b/a;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/adyen/threeds2/internal/a/a/b/a;
    .locals 0

    .line 45
    new-array p1, p1, [Lcom/adyen/threeds2/internal/a/a/b/a;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/a/a/b/a$1;->a(Landroid/os/Parcel;)Lcom/adyen/threeds2/internal/a/a/b/a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/a/a/b/a$1;->a(I)[Lcom/adyen/threeds2/internal/a/a/b/a;

    move-result-object p1

    return-object p1
.end method
