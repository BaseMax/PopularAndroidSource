.class public final Lcom/adyen/threeds2/internal/a/a/b/q;
.super Lcom/adyen/threeds2/internal/a/a/b/m;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/adyen/threeds2/internal/a/a/b/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/q$1;

    invoke-direct {v0}, Lcom/adyen/threeds2/internal/a/a/b/q$1;-><init>()V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/q;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/b/m;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adyen/threeds2/internal/g/a;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/a/a/b/m;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method
